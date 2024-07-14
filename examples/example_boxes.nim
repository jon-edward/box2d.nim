import math
import strutils
import std/strformat

import raylib
import box2d

const subStepCount = 2

const windowHeight = 900
const windowWidth = (windowHeight * (16 / 9)).int32

const center = Vector2(x: windowWidth / 2, y: windowHeight / 2)


const spaceScaling = 10.0f


type Box = object 
    bodyId*: b2BodyId
    dimensions*: Vector2


proc spawn(_: typedesc[Box], worldId: b2WorldId, position: Vector2, dimensions: Vector2, dynamic: bool = true): Box = 
    var bodyDef = b2DefaultBodyDef()

    if dynamic:
        bodyDef.bodyType = b2_dynamicBody
    
    bodyDef.position = b2Vec2(x: position.x / spaceScaling, y: position.y / spaceScaling)
    
    let bodyId = b2CreateBody(worldId, bodyDef.addr)

    let box = b2MakeBox((dimensions.x / 2) / spaceScaling, (dimensions.y / 2) / spaceScaling)

    var shapeDef = b2DefaultShapeDef()
    shapeDef.density = 1.0f
    shapeDef.friction = 0.3f

    discard b2CreatePolygonShape(bodyId, shapeDef.addr, box.addr)

    Box(bodyId: bodyId, dimensions: dimensions)


proc velocityColor(linearVelocityMagnitude, angularVelocityMagnitude: float32): Color = 
    let normalizedAngular = clamp(angularVelocityMagnitude / 5.0f, 0.0f, 1.0f)
    let normalizedLinear = clamp(linearVelocityMagnitude / 5.0f, 0.0f, 1.0f)

    let r = (normalizedLinear * 255.0f).uint8
    let g = (normalizedAngular * 255.0f).uint8

    Color(r: r, g: g, b: 0, a: 255)


const deadGrey = Color(r: 80, g: 80, b: 80, a: 255)


proc draw(box: Box) = 
    let position = b2Body_GetPosition(box.bodyId)
    let angle = b2Body_GetAngle(box.bodyId).radToDeg
    
    let isAwake = b2Body_IsAwake(box.bodyId)

    let color = if isAwake:
        let linearVelocity = b2Body_GetLinearVelocity(box.bodyId)
        let linearVelocityMagnitude = sqrt(linearVelocity.x.pow(2.0f) + linearVelocity.y.pow(2.0f))
        let angularVelocityMagnitude = b2Body_GetAngularVelocity(box.bodyId).abs

        velocityColor(linearVelocityMagnitude, angularVelocityMagnitude)
    else:
        deadGrey

    let rect = Rectangle(x: position.x * spaceScaling, y: position.y * spaceScaling, width: box.dimensions.x, height: box.dimensions.y)

    drawRectangle(rect, Vector2(x: box.dimensions.x / 2, y: box.dimensions.y / 2), angle, color)


proc initPhysics(): b2WorldId = 
    var worldDef = b2DefaultWorldDef()
    worldDef.gravity = b2vec2(x: 0.0f, y: 10.0f)

    b2CreateWorld(worldDef.addr)


const nullBox = Box(bodyId: b2_nullBodyId, dimensions: Vector2(x: 0, y: 0))


type WorldBoxes[N : static[int]] = object
    boxes*: array[N, Box]
    insertionPoint: int32
    count: int32


proc create[N : static[int]](_: typedesc[WorldBoxes[N]]): WorldBoxes[N] = 
    var worldBoxes: WorldBoxes[N]
    for i in 0..<N:
        worldBoxes.boxes[i] = nullBox
    worldBoxes


proc destroyAll[N : static[int]](worldBoxes: var WorldBoxes[N]) = 
    let initialCount = worldBoxes.count
    for i in 1..initialCount:
        let idx = floorMod((worldBoxes.insertionPoint - i), N)
        b2DestroyBody(worldBoxes.boxes[idx].bodyId)
        worldBoxes.boxes[idx] = nullBox
    worldBoxes.count = 0


proc insertBox[N : static[int]](worldBoxes: var WorldBoxes[N], box: Box) = 
    if worldBoxes.count < N:
        worldBoxes.boxes[worldBoxes.insertionPoint] = box
        worldBoxes.count += 1
        worldBoxes.insertionPoint = floorMod((worldBoxes.insertionPoint + 1), N)
        return
    
    let toDestroy = worldBoxes.boxes[worldBoxes.insertionPoint]
    
    b2DestroyBody(toDestroy.bodyId)

    worldBoxes.boxes[worldBoxes.insertionPoint] = box
    worldBoxes.insertionPoint = floorMod((worldBoxes.insertionPoint + 1), N)


iterator iterBoxes[N : static[int]](worldBoxes: WorldBoxes[N]): Box = 
    for i in 1..worldBoxes.count:
        yield worldBoxes.boxes[floorMod((worldBoxes.insertionPoint - i), N)]


proc main() = 
    initWindow(windowWidth, windowHeight, "example")
    setTargetFPS(60)

    defer: closeWindow()

    let worldId = initPhysics()
    var worldBoxes = WorldBoxes[10000].create()

    let boxDimensions = Vector2(x: 20.0f, y: 10.0f)

    let ground1 = Box.spawn(worldId, Vector2(x: center.x, y: center.y + 300.0f), Vector2(x: 600.0f, y: 20.0f), dynamic=false)
    let ground2 = Box.spawn(worldId, Vector2(x: center.x + 300, y: center.y + 260.0f), Vector2(x: 20.0f, y: 100.0f), dynamic=false)
    let ground3 = Box.spawn(worldId, Vector2(x: center.x - 300, y: center.y + 260.0f), Vector2(x: 20.0f, y: 100.0f), dynamic=false)

    const spawnsPerHeldFrame = 6

    const maxDeltaPerFrame: float32 = 1/30

    while not windowShouldClose():
        let deltaTime = min(getFrameTime(), maxDeltaPerFrame)
        
        b2World_Step(worldId, deltaTime, subStepCount)

        beginDrawing()
        clearBackground(White)

        if isKeyPressed(R):
            worldBoxes.destroyAll()

        if isMouseButtonDown(MouseButton.Left):
            var mousePos = getMousePosition()

            for _ in 0..<spawnsPerHeldFrame:
                worldBoxes.insertBox(Box.spawn(worldId, mousePos, boxDimensions))

        for b in worldBoxes.iterBoxes():
            b.draw()
        
        ground1.draw()
        ground2.draw()
        ground3.draw()

        let debugText = fmt"""
            Box count: {worldBoxes.count}
            FPS: {getFPS()}
        """.dedent.strip

        drawText(debugText.cstring, 10, 10, 18, deadGrey)
        
        endDrawing()


main()
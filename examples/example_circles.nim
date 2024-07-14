import std/strformat
import strutils
import random
import math

import raylib
import box2d/wrapper

import util


const subStepCount = 2

const windowHeight = 400
const windowWidth = (windowHeight * (16 / 9)).int32

const center = Vector2(x: windowWidth / 2, y: windowHeight / 2)

const circleRadiusRaylib = 4.2f

const gravity = b2Vec2(x: 0.0f, y: 10.0f)


proc makeCircle(worldId: b2WorldId, position: Vector2): b2BodyId = 
    var bodyDef = b2DefaultBodyDef()
    bodyDef.bodyType = b2_dynamicBody
    bodyDef.position = position.toB2

    let bodyId = b2CreateBody(worldId, bodyDef.addr)
    let circle = b2Circle(center: b2Vec2_zero, radius: circleRadiusRaylib.toB2)

    var shapeDef = b2DefaultShapeDef()
    shapeDef.density = 1.0f
    shapeDef.friction = 0.01f
    shapeDef.restitution = 0.1f
    discard b2CreateCircleShape(bodyId, shapeDef.addr, circle.addr)
    
    bodyId


proc drawAsCircle(bodyId: b2BodyId) = 
    let position = b2Body_GetPosition(bodyId).toRaylib
    drawCircle(position, circleRadiusRaylib, Black)


proc initPhysics(): b2WorldId = 
    var worldDef = b2DefaultWorldDef()
    worldDef.gravity = gravity
    b2CreateWorld(worldDef.addr)


type Directional = enum up, down, left, right


proc makeBounds(worldId: b2WorldId, side: Directional): b2BodyId = 
    let halfThickness = 5.0f.toB2

    var bodyDef = b2DefaultBodyDef()

    var halfDimensions: b2Vec2

    case side
    of up:
        bodyDef.position = Vector2(x: center.x, y: -halfThickness).toB2
        halfDimensions = Vector2(x: windowWidth / 2, y: halfThickness).toB2
    of down:
        bodyDef.position = Vector2(x: center.x, y: windowHeight + halfThickness).toB2
        halfDimensions = Vector2(x: windowWidth / 2, y: halfThickness).toB2
    of left:
        bodyDef.position = Vector2(x: -halfThickness, y: center.y).toB2
        halfDimensions = Vector2(x: halfThickness, y: windowHeight / 2).toB2
    of right:
        bodyDef.position = Vector2(x: windowWidth.float32 + halfThickness, y: center.y).toB2
        halfDimensions = Vector2(x: halfThickness, y: windowHeight / 2).toB2
    
    let bodyId = b2CreateBody(worldId, bodyDef.addr)

    let box = b2MakeBox(halfDimensions.x, halfDimensions.y)

    var shapeDef = b2DefaultShapeDef()
    shapeDef.density = 1.0f
    shapeDef.friction = 0.3f

    discard b2CreatePolygonShape(bodyId, shapeDef.addr, box.addr)
    bodyId


proc main() = 
    initWindow(windowWidth, windowHeight, "circles")

    defer: closeWindow()

    let worldId = initPhysics()

    var circles: SizedStack[5000, b2BodyId]
    circles.clear(b2_nullBodyId)

    const spawnsPerHeldFrame = 10

    const maxDeltaPerFrame: float32 = 1/30

    discard worldId.makeBounds(up)
    discard worldId.makeBounds(down)
    discard worldId.makeBounds(left)
    discard worldId.makeBounds(right)

    proc destroyBodySafe(id: b2BodyId) = 
        if id != b2_nullBodyId:
            b2DestroyBody(id)

    proc destroyBodyUnsafe(id: b2BodyId) = 
        b2DestroyBody(id)

    while not windowShouldClose():
        let deltaTime = min(getFrameTime(), maxDeltaPerFrame)

        b2World_Step(worldId, deltaTime, subStepCount)

        beginDrawing()
        clearBackground(White)
        
        if isMouseButtonDown(MouseButton.Left):
            var mousePos = getMousePosition()

            for _ in 0..<spawnsPerHeldFrame:
                let circleId = worldId.makeCircle(mousePos)
                let randomAngle = rand(b2_pi*2)
                let randomMagnitude = rand(circleRadiusRaylib.toB2)

                b2Body_ApplyLinearImpulseToCenter(circleId, b2Vec2(x: cos(randomAngle) * randomMagnitude, y: sin(randomAngle) * randomMagnitude), true)
                circles.insert(circleId, destroyBodyUnsafe)
        
        for circleBodyId in circles.iter:
            circleBodyId.drawAsCircle()
        
        if isKeyPressed(R):
            circles.clear(b2_nullBodyId, destroyBodySafe)
        
        let counters = b2World_GetCounters(worldId)
        
        let debugText = fmt"""
            Body count: {counters.bodyCount}
            FPS: {getFPS()}
        """.dedent.strip

        drawText(debugText.cstring, 10, 10, 18, Maroon)
        
        endDrawing()


main()
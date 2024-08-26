## This example demonstrates creating and deleting a large number of physics bodies in a 
## small area.

import std/strformat
import strutils

import box2d
import raylib

import util/[conversions, debug, window, bounds, sized_stack]


# Physics simulation substeps
const subStepCount = 2

# Define initial window dimensions
const initialHeight = 800
const initialWidth = (initialHeight * (16 / 9)).int32

# Physics shape properties. Can be reused
const density = 0.1f
const friction = 0.01f
const restitution = 0.1f

var physicsShapeDef = b2DefaultShapeDef()
physicsShapeDef.density = density
physicsShapeDef.friction = friction
physicsShapeDef.restitution = restitution


## Initialize physics with a gravity vector
proc initPhysics(): b2WorldId = 
    var worldDef = b2DefaultWorldDef()
    worldDef.gravity = b2Vec2(x: 0.0f, y: 10.0f)
    b2CreateWorld(worldDef.addr)


## Create a debugDraw object with drawing callbacks
var debugDraw: b2DebugDraw = defaultDebugDraw()
debugDraw.drawShapes = true

let worldId = initPhysics()

const circlesPerFrameHeld = 4


## Make circle body
proc makeCircle(worldId: b2WorldId, position: b2Vec2): b2BodyId = 
    var bodyDef = b2DefaultBodyDef()
    bodyDef.bodyType = b2_dynamicBody
    bodyDef.position = position

    let radius = 0.3f

    let bodyId = b2CreateBody(worldId, bodyDef.addr)
    let circle = b2Circle(center: b2Vec2_zero, radius: radius)

    discard b2CreateCircleShape(bodyId, physicsShapeDef.addr, circle.addr)
    bodyId


var circleStack: SizedStack[2048, b2BodyId]
circleStack.clear(b2_nullBodyId)


proc destroyCircleSafe(bodyId: b2BodyId) = 
    if bodyId != b2_nullBodyId:
        b2DestroyBody(bodyId)


proc destroyCircleUnsafe(bodyId: b2BodyId) = 
    b2DestroyBody(bodyId)


## Create circle under mouse position, and delete old circles if stack is full.
proc mouseDown(worldId: b2WorldId, mousePosB2: b2Vec2) = 
    for _ in 0..<circlesPerFrameHeld:
        circleStack.insert(worldId.makeCircle(mousePosB2), destroyCircleUnsafe)


## Top-level function that initializes window and performs game loops
proc main() = 
    
    # Prevents sudden physics simulation jumps (usually occurs when the window is minimized) 
    const maxDeltaPerFrame: float32 = 1/30

    setConfigFlags(flags(WindowResizable))

    # Called after window initialization but before first draw
    proc postInit() {.cdecl.} = 
        worldId.makeBounds(density, friction, restitution)

    # Performs physics step and window update
    proc mainLoop() {.cdecl.} = 
        worldId.setBounds()

        let deltaTime = min(getFrameTime(), maxDeltaPerFrame)

        b2World_Step(worldId, deltaTime, subStepCount)

        beginDrawing()
        clearBackground(Color(r: 30, g: 30, b: 30, a: 255))

        let mousePosB2 = getMousePosition().toB2
        
        if isMouseButtonDown(MouseButton.Left):
            mouseDown(worldId, mousePosB2)
        
        if isKeyPressed(R):
            circleStack.clear(b2_nullBodyId, destroyCircleSafe)        

        b2World_Draw(worldId, debugDraw.addr)
        
        let counters = b2World_GetCounters(worldId)

        let debugText = fmt"""
            Body count: {counters.bodyCount}
            FPS: {getFPS()}
            Mouse X: {mousePosB2.x:0.2f}
            Mouse Y: {mousePosB2.y:0.2f}
            Press 'R' to clear bodies
        """.dedent.strip

        drawText(debugText.cstring, 10, 10, 18, LightGray)

        endDrawing()
    
    windowMain(initialWidth, initialHeight, "circles example", mainLoop, postInit)


if isMainModule:
    main()
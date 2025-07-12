## This example demonstrates using `b2DebugDraw`_ and `b2World_Draw`_ to draw 
## worlds using callbacks. This is useful for debugging collision shapes.


import random
import std/strformat
import strutils

import box2d
import raylib

import util/[conversions, debug, test_point, window, bounds]


# Physics simulation substeps
const subStepCount = 2

# Define initial window dimensions
const initialHeight = 800
const initialWidth = (initialHeight * (16 / 9)).int32

# Physics shape properties. Can be reused
const density = 1.0f
const friction = 0.6f
const restitution = 0.1f

var physicsShapeDef = b2DefaultShapeDef()
physicsShapeDef.density = density
physicsShapeDef.material.friction = friction
physicsShapeDef.material.restitution = restitution


## Initialize physics with a gravity vector
proc initPhysics(): b2WorldId = 
    var worldDef = b2DefaultWorldDef()
    worldDef.gravity = b2Vec2(x: 0.0f, y: 10.0f)
    b2CreateWorld(worldDef.addr)


## Create a debugDraw object with drawing callbacks
var debugDraw: b2DebugDraw = defaultDebugDraw()
debugDraw.drawShapes = true
debugDraw.drawBounds = true
debugDraw.drawContacts = true

let worldId = initPhysics()


## Make random circle body
proc makeCircle(worldId: b2WorldId, position: b2Vec2) = 
    var bodyDef = b2DefaultBodyDef()
    bodyDef.bodyType = b2_dynamicBody
    bodyDef.position = position

    let radius = rand(0.5f) + 0.2f

    let bodyId = b2CreateBody(worldId, bodyDef.addr)
    let circle = b2Circle(center: b2Vec2_zero, radius: radius)

    discard b2CreateCircleShape(bodyId, physicsShapeDef.addr, circle.addr)


## Make random box body
proc makeBox(worldId: b2WorldId, position: b2Vec2) = 
    var bodyDef = b2DefaultBodyDef()

    bodyDef.bodyType = b2_dynamicBody
    
    bodyDef.position = position
    
    let bodyId = b2CreateBody(worldId, bodyDef.addr)

    let box = b2MakeBox(rand(1.0f) + 0.1f, rand(1.0f) + 0.1f)

    discard b2CreatePolygonShape(bodyId, physicsShapeDef.addr, box.addr)


## Make random capsule body 
proc makeCapsule(worldId: b2WorldId, position: b2Vec2) = 
    var bodyDef = b2DefaultBodyDef()

    bodyDef.bodyType = b2_dynamicBody
    
    bodyDef.position = position
    
    let bodyId = b2CreateBody(worldId, bodyDef.addr)

    let capsule = b2Capsule(
        center1: b2Vec2(x: 0.0f, y: rand(0.3f) + 0.2f),
        center2: b2Vec2(x: 0.0f, y: -rand(0.3f) - 0.2f),
        radius: rand(0.5f) + 0.2f
    )

    discard b2CreateCapsuleShape(bodyId, physicsShapeDef.addr, capsule.addr)


## Spawn random body (circle, box, or capsule)
proc spawnRandomObject(position: b2Vec2) = 
    let selector = rand(2)

    case selector
    of 0:
        worldId.makeCircle(position)
    of 1:
        worldId.makeBox(position)
    of 2:
        worldId.makeCapsule(position)
    else:
        discard


var groundBodyId = b2_nullBodyId
var mouseJoint = b2_nullJointId

let groundBodyDef = b2DefaultBodyDef()


## Create mouse joint with body if mouse position is under a shape, 
## otherwise create a new body.
proc mousePressed(mousePosB2: b2Vec2) = 
    let hitBody = testPoint(worldId, mousePosB2)

    if hitBody == b2_nullBodyId: 
        spawnRandomObject(mousePosB2)
        return

    groundBodyId = b2CreateBody(worldId, groundBodyDef.addr)

    var mouseDef = b2DefaultMouseJointDef()
    mouseDef.bodyIdA = groundBodyId
    mouseDef.bodyIdB = hitBody
    mouseDef.target = mousePosB2
    mouseDef.hertz = 5.0f;
    mouseDef.dampingRatio = 0.7f;
    mouseDef.maxForce = 1000.0f * b2Body_GetMass(hitBody)
    
    mouseJoint = b2CreateMouseJoint(worldId, mouseDef.addr)

    b2Body_SetAwake(hitBody, true)


## Update mouse joint to new mouse position.
proc mouseMoved(mousePosB2: b2Vec2) = 
    if not b2Joint_IsValid(mouseJoint):
        mouseJoint = b2_nullJointId
    
    if mouseJoint != b2_nullJointId:
        b2MouseJoint_SetTarget(mouseJoint, mousePosB2)
        let bodyIdB = b2Joint_GetBodyB(mouseJoint)
        b2Body_SetAwake(bodyIdB, true)


## Destroy mouse joint
proc mouseUp(mousePosB2: b2Vec2) = 
    if not b2Joint_IsValid(mouseJoint):
        mouseJoint = b2_nullJointId
    
    if mouseJoint != b2_nullJointId:
        b2DestroyJoint(mouseJoint)
        mouseJoint = b2_nullJointId

        b2DestroyBody(groundBodyId)
        groundBodyId = b2_nullBodyId


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

        if isMouseButtonPressed(MouseButton.Left):
            mousePressed(mousePosB2)
        
        elif isMouseButtonDown(MouseButton.Left):
            mouseMoved(mousePosB2)
        
        elif isMouseButtonReleased(MouseButton.Left):
            mouseUp(mousePosB2)

        b2World_Draw(worldId, debugDraw.addr)
        
        let counters = b2World_GetCounters(worldId)

        let debugText = fmt"""
            Body count: {counters.bodyCount}
            FPS: {getFPS()}
            Mouse X: {mousePosB2.x:0.2f}
            Mouse Y: {mousePosB2.y:0.2f}
        """.dedent.strip

        drawText(debugText, 10, 10, 18, LightGray)

        endDrawing()
    
    windowMain(initialWidth, initialHeight, "debug example", mainLoop, postInit)


if isMainModule:
    main()
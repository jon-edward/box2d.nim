## Creates and updates world bounds based on raylib window dimensions

import box2d
import raylib

import conversions

var currentWidth: float32
var currentHeight: float32


var boundShapeTop: b2ShapeId = b2_nullShapeId
var boundShapeDown: b2ShapeId = b2_nullShapeId
var boundShapeLeft: b2ShapeId = b2_nullShapeId
var boundShapeRight: b2ShapeId = b2_nullShapeId


## Create world bounds
proc makeBounds*(worldId: b2WorldId, density: float32, friction: float32, restitution: float32) = 
    var bodyDef = b2DefaultBodyDef()

    var shapeDef = b2DefaultShapeDef()
    shapeDef.density = density
    shapeDef.friction = friction
    shapeDef.restitution = restitution

    currentWidth = getScreenWidth().float32.toB2
    currentHeight = getScreenHeight().float32.toB2

    var segmentTop: b2Segment
    segmentTop.point1 = b2Vec2(x: 0, y: 0)
    segmentTop.point2 = b2Vec2(x: currentWidth, y: 0)
    let boundBodyTop = b2CreateBody(worldId, bodyDef.addr)
    boundShapeTop = b2CreateSegmentShape(boundBodyTop, shapeDef.addr, segmentTop.addr)

    var segmentDown: b2Segment
    segmentDown.point1 = b2Vec2(x: 0, y: currentHeight)
    segmentDown.point2 = b2Vec2(x: currentWidth, y: currentHeight)
    let boundBodyDown = b2CreateBody(worldId, bodyDef.addr)
    boundShapeDown = b2CreateSegmentShape(boundBodyDown, shapeDef.addr, segmentDown.addr)

    var segmentLeft: b2Segment
    segmentLeft.point1 = b2Vec2(x: 0, y: 0)
    segmentLeft.point2 = b2Vec2(x: 0, y: currentHeight)
    let boundBodyLeft = b2CreateBody(worldId, bodyDef.addr)
    boundShapeLeft = b2CreateSegmentShape(boundBodyLeft, shapeDef.addr, segmentLeft.addr)

    var segmentRight: b2Segment
    segmentRight.point1 = b2Vec2(x: currentWidth, y: 0)
    segmentRight.point2 = b2Vec2(x: currentWidth, y: currentHeight)
    let boundBodyRight = b2CreateBody(worldId, bodyDef.addr)
    boundShapeRight = b2CreateSegmentShape(boundBodyRight, shapeDef.addr, segmentRight.addr)


## Update world bounds to current window size. 
## 
## This is not graceful, and will throw bodies outside world bounds
proc setBounds*(worldId: b2WorldId) = 
    let width = getScreenWidth().float32.toB2
    let height = getScreenHeight().float32.toB2

    # If no window size change has been made, return early.
    # All objects on the ground will be kept awake if 
    # shapes are updated every frame.
    if currentHeight == height and currentWidth == width:
        return

    currentHeight = height
    currentWidth = width

    var segmentTop: b2Segment
    segmentTop.point1 = b2Vec2(x: 0, y: 0)
    segmentTop.point2 = b2Vec2(x: width, y: 0)
    b2Shape_SetSegment(boundShapeTop, segmentTop.addr)

    var segmentDown: b2Segment
    segmentDown.point1 = b2Vec2(x: 0, y: height)
    segmentDown.point2 = b2Vec2(x: width, y: height)
    b2Shape_SetSegment(boundShapeDown, segmentDown.addr)

    var segmentLeft: b2Segment
    segmentLeft.point1 = b2Vec2(x: 0, y: 0)
    segmentLeft.point2 = b2Vec2(x: 0, y: height)
    b2Shape_SetSegment(boundShapeLeft, segmentLeft.addr)

    var segmentRight: b2Segment
    segmentRight.point1 = b2Vec2(x: width, y: 0)
    segmentRight.point2 = b2Vec2(x: width, y: height)
    b2Shape_SetSegment(boundShapeRight, segmentRight.addr)
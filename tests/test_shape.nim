import math
import unittest

import box2d


var FLT_EPSILON {. importc: "FLT_EPSILON" header: "float.h" .} : cfloat


let box = b2MakeBox(1.0f, 1.0f)
const circle = b2Circle(
    center: b2Vec2(x: 1.0f, y: 0.0f),
    radius: 1.0f
)
const capsule = b2Capsule(
    center1: b2Vec2(x: -1.0f, y: 0.0f), 
    center2: b2Vec2(x: 1.0f, y: 0.0f), 
    radius: 1.0f
)
const segment = b2Segment(
    point1: b2Vec2(x: 0.0f, y: 1.0f),
    point2: b2Vec2(x: 0.0f, y: -1.0f)
)
const n = 4


test "shape_mass_test":
    var md = b2ComputeCircleMass(circle.addr, 1.0f)

    check (md.mass - B2_PI).abs <= FLT_EPSILON
    check (md.center.x == 1.0f) and (md.center.y == 0.0f)
    check (md.rotationalInertia - 0.5f * B2_PI).abs <= FLT_EPSILON

    let radius = capsule.radius
    let length = b2Distance(capsule.center1, capsule.center2)

    md = b2ComputeCapsuleMass(capsule.addr, 1.0f)

    let r = b2MakeBox(radius, radius + 0.5f * length)
    let mdr = b2ComputePolygonMass(r.addr, 1.0f)

    var points: array[2*n, b2Vec2]
    let d: float32 = B2_PI / (n.float32 - 1.0f)
    var angle = -0.5f * B2_PI

    for i in 0..<n:
        points[i].x = 1.0f + radius * cos(angle)
        points[i].y = radius * sin(angle)
        angle += d
    
    angle = 0.5f * B2_PI

    for i in 0..<(2*n):
        points[i].x = -1.0f + radius * cos(angle)
        points[i].y = radius * sin(angle)
        angle += d
    
    let hull = b2ComputeHull(points[0].addr, 2*n)
    let ac = b2MakePolygon(hull.addr, 0.0f)
    let ma = b2ComputePolygonMass(ac.addr, 1.0f)

    check (ma.mass < md.mass) and (md.mass < mdr.mass)
    check (ma.rotationalInertia < md.rotationalInertia) and (md.rotationalInertia < mdr.rotationalInertia)
    
    md = b2ComputePolygonMass(box.addr, 1.0f)
    check (md.mass - 4.0f).abs <= FLT_EPSILON
    check md.center.x.abs <= FLT_EPSILON
    check md.center.y.abs <= FLT_EPSILON
    check (md.rotationalInertia - 8.0f / 3.0f).abs <= (FLT_EPSILON * 2.0f)


test "shape_aabb_test":
    var b = b2ComputeCircleAABB(circle.addr, b2Transform_identity)
    check b.lowerBound.x.abs <= FLT_EPSILON
    check (b.lowerBound.y + 1.0f).abs <= FLT_EPSILON
    check (b.upperBound.x - 2.0f).abs <= FLT_EPSILON
    check (b.upperBound.y - 1.0f).abs <= FLT_EPSILON

    b = b2ComputePolygonAABB(box.addr, b2Transform_identity)
    check (b.lowerBound.x + 1.0f).abs <= FLT_EPSILON
    check (b.lowerBound.y + 1.0f).abs <= FLT_EPSILON
    check (b.upperBound.x - 1.0f).abs <= FLT_EPSILON
    check (b.upperBound.y - 1.0f).abs <= FLT_EPSILON

    b = b2ComputeSegmentAABB(segment.addr, b2Transform_identity)
    check b.lowerBound.x.abs <= FLT_EPSILON
    check (b.lowerBound.y + 1.0f).abs <= FLT_EPSILON
    check b.upperBound.x.abs <= FLT_EPSILON
    check (b.upperBound.y - 1.0f).abs <= FLT_EPSILON


test "point_in_shape_test":
    let p1 = b2Vec2(x: 0.5f, y: 0.5f)
    let p2 = b2Vec2(x: 4.0f, y: -4.0f)

    var hit = b2PointInCircle(circle.addr, p1)
    check hit
    hit = b2PointInCircle(circle.addr, p2)
    check not hit

    hit = b2PointInPolygon(box.addr, p1)
    check hit
    hit = b2PointInPolygon(box.addr, p2)
    check not hit


test "ray_cast_shape_test":
    let input = b2RayCastInput(
        origin: b2Vec2(x: -4.0f, y: 0.0f),
        translation: b2Vec2(x: 8.0f, y: 0.0f),
        maxFraction: 1.0f
    )

    var output = b2RayCastCircle(circle.addr, input.addr)
    check output.hit
    check (output.normal.x + 1.0f).abs <= FLT_EPSILON
    check output.normal.y.abs <= FLT_EPSILON
    check (output.fraction - 0.5f).abs <= FLT_EPSILON

    output = b2RayCastPolygon(box.addr, input.addr)
    check output.hit
    check (output.normal.x + 1.0f).abs <= FLT_EPSILON
    check output.normal.y.abs <= FLT_EPSILON
    check (output.fraction - 3.0f / 8.0f).abs <= FLT_EPSILON

    output = b2RayCastSegment(segment.addr, input.addr, true)
    check output.hit
    check (output.normal.x + 1.0f).abs <= FLT_EPSILON
    check output.normal.y.abs <= FLT_EPSILON
    check (output.fraction - 0.5f).abs <= FLT_EPSILON

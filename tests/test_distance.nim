import unittest

import box2d

var FLT_EPSILON {. importc: "FLT_EPSILON" header: "float.h" .} : cfloat


test "segment_distance_test":
    let p1 = b2Vec2(x: -1.0f, y: -1.0f)
    let q1 = b2Vec2(x: -1.0f, y: 1.0f)
    let p2 = b2Vec2(x: 2.0f, y: 0.0f)
    let q2 = b2Vec2(x: 1.0f, y: 0.0f)

    let result = b2SegmentDistance(p1, q1, p2, q2)
    
    check (result.fraction1 - 0.5f).abs < FLT_EPSILON
    check (result.fraction2 - 1.0f).abs < FLT_EPSILON
    check (result.closest1.x + 1.0f).abs < FLT_EPSILON
    check (result.closest1.y).abs < FLT_EPSILON
    check (result.closest2.x - 1.0f).abs < FLT_EPSILON
    check (result.closest2.y).abs <  FLT_EPSILON
    check (result.distanceSquared - 4.0f).abs < FLT_EPSILON


test "shape_distance_test":
    let vas: array[4, b2Vec2] = [
        b2Vec2(x: -1.0f, y: -1.0f),
        b2Vec2(x:  1.0f, y: -1.0f),
        b2Vec2(x:  1.0f, y: 1.0f), 
        b2Vec2(x: -1.0f, y: 1.0f)
    ]

    let vbs: array[2, b2Vec2] = [
        b2Vec2(x: 2.0f, y:  -1.0f),
        b2Vec2(x: 2.0f, y:  1.0f)
    ]

    var input: b2DistanceInput
    input.proxyA = b2MakeProxy(vas[0].addr, vas.len.int32, 0.0f)
    input.proxyB = b2MakeProxy(vbs[0].addr, vbs.len.int32, 0.0f)
    input.transformA = b2Transform_identity
    input.transformB = b2Transform_identity
    input.useRadii = false

    let cache = b2_emptySimplexCache 

    let output = b2ShapeDistance(input.addr, cache.addr, nil, 0)

    check (output.distance - 1.0f).abs < FLT_EPSILON


test "shape_cast_test":
    let vas: array[4, b2Vec2] = [
        b2Vec2(x: -1.0f, y: -1.0f),
        b2Vec2(x:  1.0f, y: -1.0f),
        b2Vec2(x:  1.0f, y: 1.0f), 
        b2Vec2(x: -1.0f, y: 1.0f)
    ]

    let vbs: array[2, b2Vec2] = [
        b2Vec2(x: 2.0f, y:  -1.0f),
        b2Vec2(x: 2.0f, y:  1.0f)
    ]

    var input: b2ShapeCastPairInput
    input.proxyA = b2MakeProxy(vas[0].addr, vas.len.int32, 0.0f)
    input.proxyB = b2MakeProxy(vbs[0].addr, vbs.len.int32, 0.0f)
    input.transformA = b2Transform_identity
    input.transformB = b2Transform_identity
    input.translationB = b2Vec2(x: -2.0f, y: 0.0f)
    input.maxFraction = 1.0f

    let output = b2ShapeCast(input.addr)

    check output.hit
    check (output.fraction - 0.5f).abs < 0.005f


test "time_of_impact_test":
    let vas =  [
        b2Vec2(x: -1.0f, y: -1.0f),
        b2Vec2(x:  1.0f, y: -1.0f),
        b2Vec2(x:  1.0f, y: 1.0f), 
        b2Vec2(x: -1.0f, y: 1.0f)
    ]

    let vbs = [
        b2Vec2(x: 2.0f, y:  -1.0f),
        b2Vec2(x: 2.0f, y:  1.0f)
    ]

    var input: b2TOIInput
    input.proxyA = b2MakeProxy(vas[0].addr, vas.len.int32, 0.0f)
    input.proxyB = b2MakeProxy(vbs[0].addr, vbs.len.int32, 0.0f)
    input.sweepA = b2Sweep(
        localCenter: b2Vec2_zero, 
        c1: b2Vec2_zero, 
        c2: b2Vec2_zero,
        q1: b2Rot_identity,
        q2: b2Rot_identity
    )

    input.sweepB = b2Sweep(
        localCenter: b2Vec2_zero, 
        c1: b2Vec2_zero, 
        c2: b2Vec2(x: -2.0f, y: 0.0f),
        q1: b2Rot_identity,
        q2: b2Rot_identity
    )
    input.maxFraction = 1.0f

    let output = b2TimeOfImpact(input.addr)

    check output.state == b2_toiStateHit
    check (output.fraction - 0.5f).abs < 0.005f
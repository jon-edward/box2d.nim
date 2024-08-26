import unittest

import box2d


var FLT_EPSILON {. importc: "FLT_EPSILON" header: "float.h" .} : cfloat


test "math_test":
    let zero = b2Vec2_zero
    let one = b2Vec2(x: 1.0f, y: 1.0f)
    let two = b2Vec2(x: 2.0f, y: 2.0f)

    var v = b2Add(one, two)
    check v.x == 3.0f and v.y == 3.0f

    v = b2Sub(zero, two)
    check v.x == -2.0f and v.y == -2.0f

    v = b2Add(two, two)
    check v.x != 5.0f and v.y != 5.0f

    let transform1 = b2Transform(p: b2vec2(x: -2.0f, y: 3.0f), q: b2MakeRot(1.0f))
    let transform2 = b2Transform(p: b2vec2(x: 1.0f, y: 0.0f), q: b2MakeRot(-2.0f))

    let transform = b2MulTransforms(transform2, transform1)

    v = b2TransformPoint(transform2, b2TransformPoint(transform1, two))

    let u = b2TransformPoint(transform, two)

    check (u.x - v.x).abs < 10.0f * FLT_EPSILON
    check (u.y - v.y).abs < 10.0f * FLT_EPSILON

    v = b2TransformPoint(transform1, two)
    v = b2InvTransformPoint(transform1, v)

    check (v.x - two.x).abs < 8.0f * FLT_EPSILON
    check (v.y - two.y).abs < 8.0f * FLT_EPSILON

import unittest

import box2d

include box2d/private/internal


test "aabb_test":
    var a: b2AABB = b2AABB(
        lowerBound: b2Vec2(x: -1.0f, y: -1.0f),
        upperBound: b2Vec2(x: -2.0f, y: -2.0f)
    )

    check not b2IsValidAABB(a)

    a.upperBound = b2Vec2(x: 1.0f, y: 1.0f)
    check b2IsValidAABB(a)

    let b = b2AABB(
        lowerBound: b2Vec2(x: 2.0f, y: 2.0f),
        upperBound: b2Vec2(x: 4.0f, y: 4.0f)
    )
    
    check not b2AABB_Overlaps(a, b)
    check not b2AABB_Overlaps(b, a)

    let p1 = b2Vec2(x: -2.0f, y: 0.0f)
    let p2 = b2Vec2(x: 2.0f, y: 0.0f)

    let output = b2AABB_RayCast(a, p1, p2)

    check output.hit
    check (0.1f < output.fraction) and (output.fraction < 0.9f)
    
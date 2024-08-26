when defined(nimdoc):
    include private/wrapper_doc
else:
    import wrapper

    import private/compile
    ensureCompiled()

    export wrapper

# Inline functions / templates
import math, bitops

# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Dot):
    template b2Dot*(a: b2Vec2, b: b2Vec2): cfloat = 
        (a.x * b.x + a.y * b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Cross):
    template b2Cross*(a: b2Vec2, b: b2Vec2): cfloat = 
        (a.x * b.y - a.y * b.x)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2CrossVS):
    template b2CrossVS*(v: b2Vec2, s: cfloat): b2Vec2 = 
        b2Vec2(x: s * v.y, y: -s * v.x)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2CrossSV):
    template b2CrossSV*(s: cfloat, v: b2Vec2): b2Vec2 = 
        b2Vec2(x: -s * v.y, y: s * v.x)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2LeftPerp):
    template b2LeftPerp*(v: b2Vec2): b2Vec2 = 
        b2Vec2(x: -v.y, y: v.x)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2RightPerp):
    template b2RightPerp*(v: b2Vec2): b2Vec2 = 
        b2Vec2(x: v.y, y: -v.x)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Add):
    template b2Add*(a: b2Vec2, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: a.x + b.x, y: a.y + b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Sub):
    template b2Sub*(a: b2Vec2, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: a.x - b.x, y: a.y - b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Neg):
    template b2Neg*(a: b2Vec2): b2Vec2 = 
        b2Vec2(x: -a.x, y: -a.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Lerp):
    template b2Lerp*(a: b2Vec2, b: b2Vec2, t: cfloat): b2Vec2 = 
        b2Vec2(x: (1.0f - t) * a.x + t * b.x, y: (1.0f - t) * a.y + t * b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Mul):
    template b2Mul*(a: b2Vec2, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: a.x * b.x, y: a.y * b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MulSV):
    template b2MulSV*(s: cfloat, v: b2Vec2): b2Vec2 = 
        b2Vec2(x: s * v.x, y: s * v.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MulAdd):
    template b2MulAdd*(a: b2Vec2, s: cfloat, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: a.x + s * b.x, y: a.y + s * b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MulSub):
    template b2MulSub*(a: b2Vec2, s: cfloat, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: a.x - s * b.x, y: a.y - s * b.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Abs):
    template b2Abs*(a: b2Vec2): b2Vec2 = 
        b2Vec2(x: a.x.abs, y: a.y.abs)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Min):
    template b2Min*(a: b2Vec2, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: min(a.x, b.x), y: min(a.y, b.y))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Max):
    template b2Max*(a: b2Vec2, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: max(a.x, b.x), y: max(a.y, b.y))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Clamp):
    template b2Clamp*(v: b2Vec2, a: b2Vec2, b: b2Vec2): b2Vec2 = 
        b2Vec2(x: v.x.clamp(a.x, b.x), y: v.y.clamp(a.y, b.y))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Length):
    template b2Length*(v: b2Vec2): cfloat = 
        sqrt(v.x * v.x + v.y * v.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2LengthSquared):
    template b2LengthSquared*(v: b2Vec2): cfloat = 
        (v.x * v.x + v.y * v.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Distance):
    proc b2Distance*(a: b2Vec2, b: b2Vec2): cfloat {.inline.} = 
        let dx = b.x - a.x
        let dy = b.y - a.y
        sqrt(dx * dx + dy * dy)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2DistanceSquared):
    proc b2DistanceSquared*(a: b2Vec2, b: b2Vec2): cfloat {.inline.} = 
        let dx = b.x - a.x
        let dy = b.y - a.y
        dx * dx + dy * dy


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MakeRot):
    template b2MakeRot*(angle: cfloat): b2Rot = 
        b2Rot(c: cos(angle), s: sin(angle))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2NormalizeRot):
    proc b2NormalizeRot*(q: b2Rot): b2Rot {.inline.} = 
        let mag = sqrt(q.s * q.s + q.c * q.c)
        let invMag = if mag == 0.0f:
            0.0f
        else:
            1.0f / mag
    
        b2Rot(
            c: q.c * invMag, 
            s: q.s * invMag
        )


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2IsNormalized):
    proc b2IsNormalized*(q: b2Rot): bool {.inline.} = 
        let qq = q.s * q.s + q.c * q.c
        1.0f - 0.0006f < qq and qq < 1.0f + 0.0006f


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2NLerp):
    proc b2NLerp*(q1: b2Rot, q2: b2Rot, t: cfloat): b2Rot {.inline.} = 
        let omt = 1.0f - t

        let q = b2Rot(
            c: omt * q1.c + t * q2.c,
            s: omt * q1.s + t * q2.s)

        b2NormalizeRot(q)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2IntegrateRotation):
    proc b2IntegrateRotation*(q1: b2Rot, deltaAngle: cfloat): b2Rot {.inline.} = 
        let q2 = b2Rot(c: q1.c - deltaAngle * q1.s, s: q1.s + deltaAngle * q1.c)
        
        let mag = sqrt(q2.s * q2.s + q2.c * q2.c)
        let invMag = if mag > 0.0: 
            1.0f / mag 
        else: 
            0.0f

        b2Rot(c: q2.c * invMag, s: q2.s * invMag)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2ComputeAngularVelocity):
    template b2ComputeAngularVelocity*(q1: b2Rot, q2: b2Rot, inv_h: cfloat): cfloat = 
        (inv_h * (q2.s * q1.c - q2.c * q1.s))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Rot_GetAngle):
    template b2Rot_GetAngle*(q: b2Rot): cfloat = 
        arctan2(q.s, q.c)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Rot_GetXAxis):
    template b2Rot_GetXAxis*(q: b2Rot): b2Vec2 = 
        b2Vec2(x: q.c, y: q.s)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Rot_GetYAxis):
    template b2Rot_GetYAxis*(q: b2Rot): b2Vec2 = 
        b2Vec2(x: -q.s, y: q.c)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MulRot):
    template b2MulRot*(q: b2Rot, r: b2Rot): b2Rot = 
        b2Rot(c: q.c * r.c - q.s * r.s, s: q.s * r.c + q.c * r.s)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2InvMulRot):
    template b2InvMulRot*(q: b2Rot, r: b2Rot): b2Rot = 
        b2Rot(c: q.c * r.c + q.s * r.s, s: q.c * r.s - q.s * r.c)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2RelativeAngle):
    proc b2RelativeAngle*(a: b2Rot, b: b2Rot): cfloat {.inline.} = 
        let s = b.s * a.c - b.c * a.s
        let c = b.c * a.c + b.s * a.s
        arctan2(s, c)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2UnwindAngle):
    proc b2UnwindAngle*(angle: cfloat): cfloat {.inline.} = 
        if angle < -b2_pi:
            angle + 2.0f * b2_pi
        elif angle > b2_pi:
            angle - 2.0f * b2_pi
        else:
            angle


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2RotateVector):
    template b2RotateVector*(q: b2Rot, v: b2Vec2): b2Vec2 = 
        b2Vec2(x: q.c * v.x - q.s * v.y, y: q.s * v.x + q.c * v.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2InvRotateVector):
    template b2InvRotateVector*(q: b2Rot, v: b2Vec2): b2Vec2 = 
        b2Vec2(x: q.c * v.x + q.s * v.y, y: -q.s * v.x + q.c * v.y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2TransformPoint):
    proc b2TransformPoint*(t: b2Transform, p: b2Vec2): b2Vec2 {.inline.} = 
        let x = ((t.q.c * p.x) - (t.q.s * p.y)) + t.p.x
        let y = ((t.q.s * p.x) + (t.q.c * p.y)) + t.p.y
    
        b2Vec2(x: x, y: y)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2InvTransformPoint):
    proc b2InvTransformPoint*(t: b2Transform, p: b2Vec2): b2Vec2 {.inline.} = 
        let vx = p.x - t.p.x
        let vy = p.y - t.p.y

        b2Vec2(
            x: t.q.c * vx + t.q.s * vy, 
            y: -t.q.s * vx + t.q.c * vy
        )


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MulTransforms):
    proc b2MulTransforms*(A: b2Transform, B: b2Transform): b2Transform {.inline.} = 
        let q = b2MulRot(A.q, B.q)
        let p = b2Add(b2RotateVector(A.q, B.p), A.p)
        b2Transform(q: q, p: p)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2InvMulTransforms):
    proc b2InvMulTransforms*(A: b2Transform, B: b2Transform): b2Transform {.inline.} = 
        let q = b2InvMulRot(A.q, B.q)
        let p = b2InvRotateVector(A.q, b2Sub(B.p, A.p))
        b2Transform(q: q, p: p)


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2MulMV):
    template b2MulMV*(A: b2Mat22, v: b2Vec2): b2Vec2 = 
        b2Vec2(
            x: A.cx.x * v.x + A.cy.x * v.y,
            y: A.cx.y * v.x + A.cy.y * v.y
        )


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2GetInverse22):
    proc b2GetInverse22*(A: b2Mat22): b2Mat22 {.inline.} = 
        let 
            a = A.cx.x 
            b = A.cy.x 
            c = A.cx.y 
            d = A.cy.y
    
        var det = a * d - b * c

        if det != 0.0f:
            det = 1.0f / det
    
        b2Mat22(
            cx: b2Vec2(x: det * d,  y: -det * c),
            cy: b2Vec2(x: -det * b, y: det * a)
        )


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2Solve22):
    proc b2Solve22*(A: b2Mat22, b: b2Vec2): b2Vec2 {.inline.} = 
        let 
            a11 = A.cx.x
            a12 = A.cy.x
            a21 = A.cx.y
            a22 = A.cy.y
    
        var det = a11 * a22 - a12 * a21

        if det != 0.0f:
            det = 1.0f / det
    
        b2Vec2(x: det * (a22 * b.x - a12 * b.y), y: det * (a11 * b.y - a21 * b.x))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2AABB_Contains):
    proc b2AABB_Contains*(a: b2AABB, b: b2AABB): bool {.inline.} = 
        var s = true
        s = s and a.lowerBound.x <= b.lowerBound.x
        s = s and a.lowerBound.y <= b.lowerBound.y
        s = s and b.upperBound.x <= a.upperBound.x
        s = s and b.upperBound.y <= a.upperBound.y
        s


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2AABB_Center):
    template b2AABB_Center*(a: b2AABB): b2Vec2 = 
        b2Vec2(x: 0.5f * (a.lowerBound.x + a.upperBound.x), y: 0.5f * (a.lowerBound.y + a.upperBound.y))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2AABB_Extents):
    template b2AABB_Extents*(a: b2AABB): b2Vec2 = 
        b2Vec2(x: 0.5f * (a.upperBound.x - a.lowerBound.x), y: 0.5f * (a.upperBound.y - a.lowerBound.y))


# Translated from box2d/include/box2d/math_functions.h
when not defined(b2AABB_Union):
    template b2AABB_Union*(a: b2AABB, b: b2AABB): b2AABB = 
        b2AABB(
            lowerBound: b2Vec2(
                x: min(a.lowerBound.x, b.lowerBound.x),
                y: min(a.lowerBound.y, b.lowerBound.y)
            ),
            upperBound: b2Vec2(
                x: max(a.upperBound.x, b.upperBound.x),
                y: max(a.upperBound.y, b.upperBound.y)
            ),
        )


# Translated from box2d/src/aabb.h
proc b2Perimeter*(a: b2AABB): cfloat {.inline.} = 
    let wx = a.upperBound.x - a.lowerBound.x
    let wy = a.upperBound.y - a.lowerBound.y
    2.0f * (wx + wy)


# Translated from box2d/src/aabb.h
proc b2EnlargeAABB*(a: ptr b2AABB, b: b2AABB): bool {.inline.} = 
    var changed = false

    if b.lowerBound.x < a.lowerBound.x:
        a.lowerBound.x = b.lowerBound.x
        changed = true
    
    if b.lowerBound.y < a.lowerBound.y:
        a.lowerBound.y = b.lowerBound.y
        changed = true
    
    if a.upperBound.x < b.upperBound.x:
        a.upperBound.x = b.upperBound.x
        changed = true
    
    if a.upperBound.y < b.upperBound.y:
        a.upperBound.y = b.upperBound.y
        changed = true
    
    changed


# Translated from box2d/src/aabb.h
template b2AABB_ContainsWithMargin*(a: b2AABB, b: b2AABB, margin: cfloat): bool = 
    (
        (a.lowerBound.x <= (b.lowerBound.x - margin)) and
        (a.lowerBound.y <= (b.lowerBound.y - margin)) and 
        ((b.upperBound.x + margin) <= a.upperBound.x) and
        ((b.upperBound.y + margin) <= a.upperBound.y)
    )


# Translated from box2d/src/aabb.h
proc b2AABB_Overlaps*(a: b2AABB, b: b2AABB): bool = 
    let d1 = b2Vec2(
        x: b.lowerBound.x - a.upperBound.x,
        y: b.lowerBound.y - a.upperBound.y
    )

    let d2  = b2Vec2(
        x: a.lowerBound.x - b.upperBound.x, 
        y: a.lowerBound.y - b.upperBound.y
    )

    if d1.x > 0.0f or d1.y > 0.0f:
        return false

    if d2.x > 0.0f or d2.y > 0.0f:
        return false

    true


# Translated from box2d/src/ctz.h
template b2IsPowerOf2*(x: cint): bool = 
    (x.bitand(x - 1) == 0)


# Translated from box2d/src/ctz.h
proc b2BoundingPowerOf2*(x: cint): cint {.inline.} = 
    if x <= 1:
        1
    else:
        (32 - countLeadingZeroBits(x - 1)).int32


# Translated from box2d/src/ctz.h
proc b2RoundUpPowerOf2*(x: cint): cint {.inline.} = 
    if x <= 1:
        1
    else:
        (1 shl (32 - countLeadingZeroBits(x - 1))).int32


# Translated from box2d/src/table.h
proc b2ShapePairKey*(k1: uint64, k2: uint64): uint64 {.inline.} = 
    if k1 < k2:
        (k1 shl 32).bitor(k2)
    else:
        (k2 shl 32).bitor(k1)
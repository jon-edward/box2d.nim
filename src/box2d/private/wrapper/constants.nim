## These are contants defined within Box2D.

import types


const b2_pi* = 3.14159265359
const b2_maxPolygonVertices* = 8
const b2_defaultCategoryBits* = 1
const b2_defaultMaskBits* = 4294967295'i64

const b2_nullWorldId*: b2WorldId = b2WorldId(index1: 0, revision: 0)
const b2_nullBodyId*: b2BodyId = b2BodyId(index1: 0, world0: 0, revision: 0)
const b2_nullShapeId*: b2ShapeId = b2ShapeId(index1: 0, world0: 0, revision: 0)
const b2_nullJointId*: b2JointId = b2JointId(index1: 0, world0: 0, revision: 0)
const b2_nullChainId*: b2ChainId = b2ChainId(index1: 0, world0: 0, revision: 0)
const b2Vec2_zero*: b2Vec2 = b2Vec2(x: 0.0f, y :0.0f)
const b2Rot_identity*: b2Rot = b2Rot(c: 1.0f, s: 0.0f)
const b2Transform_identity*: b2Transform = b2Transform(p: b2Vec2_zero, q: b2Rot_identity)
const b2Mat22_zero*: b2Mat22 = b2Mat22(cx: b2Vec2_zero, cy: b2Vec2_zero)
const b2_emptyDistanceCache*: b2DistanceCache = b2DistanceCache(
    metric: 0.0f,
    count: 0,
    indexA: [0, 0, 0],
    indexB: [0, 0, 0]
)

const b2_colorCyan* = b2HexColor.b2_colorAqua
const b2_colorLime* = b2HexColor.b2_colorGreen
const b2_colorMagenta* = b2HexColor.b2_colorFuchsia
const b2_colorNavyBlue* = b2HexColor.b2_colorNavy

# This is manually written Nimdoc RST and types for doc generation only.
# 
# wrapper.nim is the untouched futhark wrapper script, and is kept 
# separate to allow for easy updating as changes are made to Box2D.

## This is the Box2D.nim API.
## 
## The wrapper's documentation falls under the following license:
## 
##      MIT License
##      Copyright (c) 2022 Erin Catto
## 
##      Permission is hereby granted, free of charge, to any person obtaining a copy
##      of this software and associated documentation files (the "Software"), to deal
##      in the Software without restriction, including without limitation the rights
##      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
##      copies of the Software, and to permit persons to whom the Software is
##      furnished to do so, subject to the following conditions:
##      
##      The above copyright notice and this permission notice shall be included in all
##      copies or substantial portions of the Software.
##      
##      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
##      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
##      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
##      SOFTWARE.
##

# TODO: Move documentation over from Box2D doxygen documentation.

type
    b2TOIState* {.size: sizeof(cint).} = enum
        b2_toiStateUnknown = 0, b2_toiStateFailed = 1, b2_toiStateOverlapped = 2,
        b2_toiStateHit = 3, b2_toiStateSeparated = 4
type
    b2BodyType* {.size: sizeof(cint).} = enum
        b2_staticBody = 0, b2_kinematicBody = 1, b2_dynamicBody = 2,
        b2_bodyTypeCount = 3
type
    b2ShapeType* {.size: sizeof(cint).} = enum
        b2_circleShape = 0, b2_capsuleShape = 1, b2_segmentShape = 2,
        b2_polygonShape = 3, b2_chainSegmentShape = 4, b2_shapeTypeCount = 5
type
    b2JointType* {.size: sizeof(cint).} = enum
        b2_distanceJoint = 0, b2_filterJoint = 1, b2_motorJoint = 2,
        b2_mouseJoint = 3, b2_prismaticJoint = 4, b2_revoluteJoint = 5,
        b2_weldJoint = 6, b2_wheelJoint = 7
type
    b2HexColor* {.size: sizeof(cint).} = enum
        b2_colorBlack = 0, b2_colorNavy = 128, b2_colorDarkBlue = 139,
        b2_colorMediumBlue = 205, b2_colorBlue = 255, b2_colorDarkGreen = 25600,
        b2_colorGreen = 32768, b2_colorTeal = 32896, b2_colorDarkCyan = 35723,
        b2_colorDeepSkyBlue = 49151, b2_colorDarkTurquoise = 52945,
        b2_colorMediumSpringGreen = 64154, b2_colorLime = 65280,
        b2_colorSpringGreen = 65407, b2_colorAqua = 65535,
        b2_colorMidnightBlue = 1644912, b2_colorDodgerBlue = 2003199,
        b2_colorLightSeaGreen = 2142890, b2_colorForestGreen = 2263842,
        b2_colorSeaGreen = 3050327, b2_colorDarkSlateGray = 3100495,
        b2_colorBox2DBlue = 3190463, b2_colorLimeGreen = 3329330,
        b2_colorMediumSeaGreen = 3978097, b2_colorTurquoise = 4251856,
        b2_colorRoyalBlue = 4286945, b2_colorSteelBlue = 4620980,
        b2_colorDarkSlateBlue = 4734347, b2_colorMediumTurquoise = 4772300,
        b2_colorIndigo = 4915330, b2_colorDarkOliveGreen = 5597999,
        b2_colorCadetBlue = 6266528, b2_colorCornflowerBlue = 6591981,
        b2_colorRebeccaPurple = 6697881, b2_colorMediumAquaMarine = 6737322,
        b2_colorDimGray = 6908265, b2_colorSlateBlue = 6970061,
        b2_colorOliveDrab = 7048739, b2_colorSlateGray = 7372944,
        b2_colorLightSlateGray = 7833753, b2_colorMediumSlateBlue = 8087790,
        b2_colorLawnGreen = 8190976, b2_colorChartreuse = 8388352,
        b2_colorAquamarine = 8388564, b2_colorMaroon = 8388608,
        b2_colorPurple = 8388736, b2_colorOlive = 8421376, b2_colorGray = 8421504,
        b2_colorSkyBlue = 8900331, b2_colorLightSkyBlue = 8900346,
        b2_colorBlueViolet = 9055202, b2_colorDarkRed = 9109504,
        b2_colorDarkMagenta = 9109643, b2_colorSaddleBrown = 9127187,
        b2_colorBox2DGreen = 9226532, b2_colorDarkSeaGreen = 9419919,
        b2_colorLightGreen = 9498256, b2_colorMediumPurple = 9662683,
        b2_colorDarkViolet = 9699539, b2_colorPaleGreen = 10025880,
        b2_colorDarkOrchid = 10040012, b2_colorYellowGreen = 10145074,
        b2_colorSienna = 10506797, b2_colorBrown = 10824234,
        b2_colorDarkGray = 11119017, b2_colorLightBlue = 11393254,
        b2_colorGreenYellow = 11403055, b2_colorPaleTurquoise = 11529966,
        b2_colorLightSteelBlue = 11584734, b2_colorPowderBlue = 11591910,
        b2_colorFireBrick = 11674146, b2_colorDarkGoldenRod = 12092939,
        b2_colorMediumOrchid = 12211667, b2_colorRosyBrown = 12357519,
        b2_colorDarkKhaki = 12433259, b2_colorSilver = 12632256,
        b2_colorMediumVioletRed = 13047173, b2_colorIndianRed = 13458524,
        b2_colorPeru = 13468991, b2_colorChocolate = 13789470,
        b2_colorTan = 13808780, b2_colorLightGray = 13882323,
        b2_colorThistle = 14204888, b2_colorOrchid = 14315734,
        b2_colorGoldenRod = 14329120, b2_colorPaleVioletRed = 14381203,
        b2_colorCrimson = 14423100, b2_colorBox2DRed = 14430514,
        b2_colorGainsboro = 14474460, b2_colorPlum = 14524637,
        b2_colorBurlywood = 14596231, b2_colorLightCyan = 14745599,
        b2_colorLavender = 15132410, b2_colorDarkSalmon = 15308410,
        b2_colorViolet = 15631086, b2_colorPaleGoldenRod = 15657130,
        b2_colorLightCoral = 15761536, b2_colorKhaki = 15787660,
        b2_colorAliceBlue = 15792383, b2_colorHoneyDew = 15794160,
        b2_colorAzure = 15794175, b2_colorSandyBrown = 16032864,
        b2_colorWheat = 16113331, b2_colorBeige = 16119260,
        b2_colorWhiteSmoke = 16119285, b2_colorMintCream = 16121850,
        b2_colorGhostWhite = 16316671, b2_colorSalmon = 16416882,
        b2_colorAntiqueWhite = 16444375, b2_colorLinen = 16445670,
        b2_colorLightGoldenRodYellow = 16448210, b2_colorOldLace = 16643558,
        b2_colorRed = 16711680, b2_colorFuchsia = 16711935,
        b2_colorDeepPink = 16716947, b2_colorOrangeRed = 16729344,
        b2_colorTomato = 16737095, b2_colorHotPink = 16738740,
        b2_colorCoral = 16744272, b2_colorDarkOrange = 16747520,
        b2_colorLightSalmon = 16752762, b2_colorOrange = 16753920,
        b2_colorLightPink = 16758465, b2_colorPink = 16761035,
        b2_colorGold = 16766720, b2_colorPeachPuff = 16767673,
        b2_colorNavajoWhite = 16768685, b2_colorMoccasin = 16770229,
        b2_colorBisque = 16770244, b2_colorMistyRose = 16770273,
        b2_colorBlanchedAlmond = 16772045, b2_colorBox2DYellow = 16772748,
        b2_colorPapayaWhip = 16773077, b2_colorLavenderBlush = 16773365,
        b2_colorSeaShell = 16774638, b2_colorCornsilk = 16775388,
        b2_colorLemonChiffon = 16775885, b2_colorFloralWhite = 16775920,
        b2_colorSnow = 16775930, b2_colorYellow = 16776960,
        b2_colorLightYellow = 16777184, b2_colorIvory = 16777200,
        b2_colorWhite = 16777215
const
  b2_colorCyan* = b2HexColor.b2_colorAqua
const
  b2_colorMagenta* = b2HexColor.b2_colorFuchsia
type b2TreeNode* = object

type
  b2AllocFcn* = proc (a0: cuint; a1: cint): pointer {.cdecl.}
  b2FreeFcn* = proc (a0: pointer): void {.cdecl.}
  b2AssertFcn* = proc (a0: cstring; a1: cstring; a2: cint): cint {.cdecl.}
  b2Version* {.pure, inheritable, bycopy.} = object
    major*: cint
    minor*: cint
    revision*: cint
  b2Vec2* {.pure, inheritable, bycopy.} = object
    x*: cfloat
    y*: cfloat
  b2CosSin* {.pure, inheritable, bycopy.} = object
    cosine*: cfloat
    sine*: cfloat
  b2Rot* {.pure, inheritable, bycopy.} = object
    c*: cfloat
    s*: cfloat
  b2Transform* {.pure, inheritable, bycopy.} = object
    p*: b2Vec2
    q*: b2Rot
  b2Mat22* {.pure, inheritable, bycopy.} = object
    cx*: b2Vec2
    cy*: b2Vec2
  b2AABB* {.pure, inheritable, bycopy.} = object
    lowerBound*: b2Vec2
    upperBound*: b2Vec2
  b2Plane* {.pure, inheritable, bycopy.} = object
    normal*: b2Vec2
    offset*: cfloat
  b2SimplexCache* {.pure, inheritable, bycopy.} = object
    count*: uint16
    indexA*: array[3'i64, uint8]
    indexB*: array[3'i64, uint8]
  b2Hull* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2Vec2]
    count*: cint
  b2RayCastInput* {.pure, inheritable, bycopy.} = object
    origin*: b2Vec2
    translation*: b2Vec2
    maxFraction*: cfloat
  b2ShapeProxy* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2Vec2]
    count*: cint
    radius*: cfloat
  b2ShapeCastInput* {.pure, inheritable, bycopy.} = object
    proxy*: b2ShapeProxy
    translation*: b2Vec2
    maxFraction*: cfloat
    canEncroach*: bool
  b2CastOutput* {.pure, inheritable, bycopy.} = object
    normal*: b2Vec2
    point*: b2Vec2
    fraction*: cfloat
    iterations*: cint
    hit*: bool
  b2MassData* {.pure, inheritable, bycopy.} = object
    mass*: cfloat
    center*: b2Vec2
    rotationalInertia*: cfloat
  b2Circle* {.pure, inheritable, bycopy.} = object
    center*: b2Vec2
    radius*: cfloat
  b2Capsule* {.pure, inheritable, bycopy.} = object
    center1*: b2Vec2
    center2*: b2Vec2
    radius*: cfloat
  b2Polygon* {.pure, inheritable, bycopy.} = object
    vertices*: array[8'i64, b2Vec2]
    normals*: array[8'i64, b2Vec2]
    centroid*: b2Vec2
    radius*: cfloat
    count*: cint
  b2Segment* {.pure, inheritable, bycopy.} = object
    point1*: b2Vec2
    point2*: b2Vec2
  b2ChainSegment* {.pure, inheritable, bycopy.} = object
    ghost1*: b2Vec2
    segment*: b2Segment
    ghost2*: b2Vec2
    chainId*: cint
  b2SegmentDistanceResult* {.pure, inheritable, bycopy.} = object
    closest1*: b2Vec2
    closest2*: b2Vec2
    fraction1*: cfloat
    fraction2*: cfloat
    distanceSquared*: cfloat
  b2DistanceInput* {.pure, inheritable, bycopy.} = object
    proxyA*: b2ShapeProxy
    proxyB*: b2ShapeProxy
    transformA*: b2Transform
    transformB*: b2Transform
    useRadii*: bool
  b2DistanceOutput* {.pure, inheritable, bycopy.} = object
    pointA*: b2Vec2
    pointB*: b2Vec2
    normal*: b2Vec2
    distance*: cfloat
    iterations*: cint
    simplexCount*: cint
  b2SimplexVertex* {.pure, inheritable, bycopy.} = object
    wA*: b2Vec2
    wB*: b2Vec2
    w*: b2Vec2
    a*: cfloat
    indexA*: cint
    indexB*: cint
  b2Simplex* {.pure, inheritable, bycopy.} = object
    v1*: b2SimplexVertex
    v2*: b2SimplexVertex
    v3*: b2SimplexVertex
    count*: cint
  b2ShapeCastPairInput* {.pure, inheritable, bycopy.} = object
    proxyA*: b2ShapeProxy
    proxyB*: b2ShapeProxy
    transformA*: b2Transform
    transformB*: b2Transform
    translationB*: b2Vec2
    maxFraction*: cfloat
    canEncroach*: bool
  b2Sweep* {.pure, inheritable, bycopy.} = object
    localCenter*: b2Vec2
    c1*: b2Vec2
    c2*: b2Vec2
    q1*: b2Rot
    q2*: b2Rot
  b2TOIInput* {.pure, inheritable, bycopy.} = object
    proxyA*: b2ShapeProxy
    proxyB*: b2ShapeProxy
    sweepA*: b2Sweep
    sweepB*: b2Sweep
    maxFraction*: cfloat
  b2TOIOutput* {.pure, inheritable, bycopy.} = object
    state*: b2TOIState
    fraction*: cfloat
  b2ManifoldPoint* {.pure, inheritable, bycopy.} = object
    point*: b2Vec2
    anchorA*: b2Vec2
    anchorB*: b2Vec2
    separation*: cfloat
    normalImpulse*: cfloat
    tangentImpulse*: cfloat
    totalNormalImpulse*: cfloat
    normalVelocity*: cfloat
    id*: uint16
    persisted*: bool
  b2Manifold* {.pure, inheritable, bycopy.} = object
    normal*: b2Vec2
    rollingImpulse*: cfloat
    points*: array[2'i64, b2ManifoldPoint]
    pointCount*: cint
  b2DynamicTree* {.pure, inheritable, bycopy.} = object
    nodes*: ptr b2TreeNode
    root*: cint
    nodeCount*: cint
    nodeCapacity*: cint
    freeList*: cint
    proxyCount*: cint
    leafIndices*: ptr cint
    leafBoxes*: ptr b2AABB
    leafCenters*: ptr b2Vec2
    binIndices*: ptr cint
    rebuildCapacity*: cint
  b2TreeStats* {.pure, inheritable, bycopy.} = object
    nodeVisits*: cint
    leafVisits*: cint
  b2TreeQueryCallbackFcn* = proc (a0: cint; a1: uint64; a2: pointer): bool {.
      cdecl.}
  b2TreeRayCastCallbackFcn* = proc (a0: ptr b2RayCastInput; a1: cint;
                                    a2: uint64; a3: pointer): cfloat {.cdecl.}
  b2TreeShapeCastCallbackFcn* = proc (a0: ptr b2ShapeCastInput; a1: cint;
                                      a2: uint64; a3: pointer): cfloat {.cdecl.}
  b2PlaneResult* {.pure, inheritable, bycopy.} = object
    plane*: b2Plane
    point*: b2Vec2
    hit*: bool
  b2CollisionPlane* {.pure, inheritable, bycopy.} = object
    plane*: b2Plane
    pushLimit*: cfloat
    push*: cfloat
    clipVelocity*: bool
  b2PlaneSolverResult* {.pure, inheritable, bycopy.} = object
    translation*: b2Vec2
    iterationCount*: cint
  b2WorldId* {.pure, inheritable, bycopy.} = object
    index1*: uint16
    generation*: uint16
  b2BodyId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    generation*: uint16
  b2ShapeId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    generation*: uint16
  b2ChainId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    generation*: uint16
  b2JointId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    generation*: uint16
  b2TaskCallback* = proc (a0: cint; a1: cint; a2: uint32; a3: pointer): void {.
      cdecl.}
  b2EnqueueTaskCallback* = proc (a0: b2TaskCallback; a1: cint; a2: cint;
                                 a3: pointer; a4: pointer): pointer {.cdecl.}
  b2FinishTaskCallback* = proc (a0: pointer; a1: pointer): void {.cdecl.}
  b2FrictionCallback* = proc (a0: cfloat; a1: cint; a2: cfloat; a3: cint): cfloat {.
      cdecl.}
  b2RestitutionCallback* = proc (a0: cfloat; a1: cint; a2: cfloat; a3: cint): cfloat {.
      cdecl.}
  b2RayResult* {.pure, inheritable, bycopy.} = object
    shapeId*: b2ShapeId
    point*: b2Vec2
    normal*: b2Vec2
    fraction*: cfloat
    nodeVisits*: cint
    leafVisits*: cint
    hit*: bool
  b2WorldDef* {.pure, inheritable, bycopy.} = object
    gravity*: b2Vec2
    restitutionThreshold*: cfloat
    hitEventThreshold*: cfloat
    contactHertz*: cfloat
    contactDampingRatio*: cfloat
    maxContactPushSpeed*: cfloat
    maximumLinearSpeed*: cfloat
    frictionCallback*: b2FrictionCallback
    restitutionCallback*: b2RestitutionCallback
    enableSleep*: bool
    enableContinuous*: bool
    workerCount*: cint
    enqueueTask*: b2EnqueueTaskCallback
    finishTask*: b2FinishTaskCallback
    userTaskContext*: pointer
    userData*: pointer
    internalValue*: cint
  b2BodyDef* {.pure, inheritable, bycopy.} = object
    bodyType*: b2BodyType
    position*: b2Vec2
    rotation*: b2Rot
    linearVelocity*: b2Vec2
    angularVelocity*: cfloat
    linearDamping*: cfloat
    angularDamping*: cfloat
    gravityScale*: cfloat
    sleepThreshold*: cfloat
    name*: cstring
    userData*: pointer
    enableSleep*: bool
    isAwake*: bool
    fixedRotation*: bool
    isBullet*: bool
    isEnabled*: bool
    allowFastRotation*: bool
    internalValue*: cint
  b2Filter* {.pure, inheritable, bycopy.} = object
    categoryBits*: uint64
    maskBits*: uint64
    groupIndex*: cint
  b2QueryFilter* {.pure, inheritable, bycopy.} = object
    categoryBits*: uint64
    maskBits*: uint64
  b2SurfaceMaterial* {.pure, inheritable, bycopy.} = object
    friction*: cfloat
    restitution*: cfloat
    rollingResistance*: cfloat
    tangentSpeed*: cfloat
    userMaterialId*: cint
    customColor*: uint32
  b2ShapeDef* {.pure, inheritable, bycopy.} = object
    userData*: pointer
    material*: b2SurfaceMaterial
    density*: cfloat
    filter*: b2Filter
    isSensor*: bool
    enableSensorEvents*: bool
    enableContactEvents*: bool
    enableHitEvents*: bool
    enablePreSolveEvents*: bool
    invokeContactCreation*: bool
    updateBodyMass*: bool
    internalValue*: cint
  b2ChainDef* {.pure, inheritable, bycopy.} = object
    userData*: pointer
    points*: ptr b2Vec2
    count*: cint
    materials*: ptr b2SurfaceMaterial
    materialCount*: cint
    filter*: b2Filter
    isLoop*: bool
    enableSensorEvents*: bool
    internalValue*: cint
  b2Profile* {.pure, inheritable, bycopy.} = object
    step*: cfloat
    pairs*: cfloat
    collide*: cfloat
    solve*: cfloat
    mergeIslands*: cfloat
    prepareStages*: cfloat
    solveConstraints*: cfloat
    prepareConstraints*: cfloat
    integrateVelocities*: cfloat
    warmStart*: cfloat
    solveImpulses*: cfloat
    integratePositions*: cfloat
    relaxImpulses*: cfloat
    applyRestitution*: cfloat
    storeImpulses*: cfloat
    splitIslands*: cfloat
    transforms*: cfloat
    hitEvents*: cfloat
    refit*: cfloat
    bullets*: cfloat
    sleepIslands*: cfloat
    sensors*: cfloat
  b2Counters* {.pure, inheritable, bycopy.} = object
    bodyCount*: cint
    shapeCount*: cint
    contactCount*: cint
    jointCount*: cint
    islandCount*: cint
    stackUsed*: cint
    staticTreeHeight*: cint
    treeHeight*: cint
    byteCount*: cint
    taskCount*: cint
    colorCounts*: array[12'i64, cint]
  b2DistanceJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    length*: cfloat
    enableSpring*: bool
    hertz*: cfloat
    dampingRatio*: cfloat
    enableLimit*: bool
    minLength*: cfloat
    maxLength*: cfloat
    enableMotor*: bool
    maxMotorForce*: cfloat
    motorSpeed*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2MotorJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    linearOffset*: b2Vec2
    angularOffset*: cfloat
    maxForce*: cfloat
    maxTorque*: cfloat
    correctionFactor*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2MouseJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    target*: b2Vec2
    hertz*: cfloat
    dampingRatio*: cfloat
    maxForce*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2FilterJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    userData*: pointer
    internalValue*: cint
  b2PrismaticJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    localAxisA*: b2Vec2
    referenceAngle*: cfloat
    targetTranslation*: cfloat
    enableSpring*: bool
    hertz*: cfloat
    dampingRatio*: cfloat
    enableLimit*: bool
    lowerTranslation*: cfloat
    upperTranslation*: cfloat
    enableMotor*: bool
    maxMotorForce*: cfloat
    motorSpeed*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2RevoluteJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    referenceAngle*: cfloat
    targetAngle*: cfloat
    enableSpring*: bool
    hertz*: cfloat
    dampingRatio*: cfloat
    enableLimit*: bool
    lowerAngle*: cfloat
    upperAngle*: cfloat
    enableMotor*: bool
    maxMotorTorque*: cfloat
    motorSpeed*: cfloat
    drawSize*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2WeldJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    referenceAngle*: cfloat
    linearHertz*: cfloat
    angularHertz*: cfloat
    linearDampingRatio*: cfloat
    angularDampingRatio*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2WheelJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    localAxisA*: b2Vec2
    enableSpring*: bool
    hertz*: cfloat
    dampingRatio*: cfloat
    enableLimit*: bool
    lowerTranslation*: cfloat
    upperTranslation*: cfloat
    enableMotor*: bool
    maxMotorTorque*: cfloat
    motorSpeed*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: cint
  b2ExplosionDef* {.pure, inheritable, bycopy.} = object
    maskBits*: uint64
    position*: b2Vec2
    radius*: cfloat
    falloff*: cfloat
    impulsePerLength*: cfloat
  b2SensorBeginTouchEvent* {.pure, inheritable, bycopy.} = object
    sensorShapeId*: b2ShapeId
    visitorShapeId*: b2ShapeId
  b2SensorEndTouchEvent* {.pure, inheritable, bycopy.} = object
    sensorShapeId*: b2ShapeId
    visitorShapeId*: b2ShapeId
  b2SensorEvents* {.pure, inheritable, bycopy.} = object
    beginEvents*: ptr b2SensorBeginTouchEvent
    endEvents*: ptr b2SensorEndTouchEvent
    beginCount*: cint
    endCount*: cint
  b2ContactBeginTouchEvent* {.pure, inheritable, bycopy.} = object
    shapeIdA*: b2ShapeId
    shapeIdB*: b2ShapeId
    manifold*: b2Manifold
  b2ContactEndTouchEvent* {.pure, inheritable, bycopy.} = object
    shapeIdA*: b2ShapeId
    shapeIdB*: b2ShapeId
  b2ContactHitEvent* {.pure, inheritable, bycopy.} = object
    shapeIdA*: b2ShapeId
    shapeIdB*: b2ShapeId
    point*: b2Vec2
    normal*: b2Vec2
    approachSpeed*: cfloat
  b2ContactEvents* {.pure, inheritable, bycopy.} = object
    beginEvents*: ptr b2ContactBeginTouchEvent
    endEvents*: ptr b2ContactEndTouchEvent
    hitEvents*: ptr b2ContactHitEvent
    beginCount*: cint
    endCount*: cint
    hitCount*: cint
  b2BodyMoveEvent* {.pure, inheritable, bycopy.} = object
    transform*: b2Transform
    bodyId*: b2BodyId
    userData*: pointer
    fellAsleep*: bool
  b2BodyEvents* {.pure, inheritable, bycopy.} = object
    moveEvents*: ptr b2BodyMoveEvent
    moveCount*: cint
  b2ContactData* {.pure, inheritable, bycopy.} = object
    shapeIdA*: b2ShapeId
    shapeIdB*: b2ShapeId
    manifold*: b2Manifold
  b2CustomFilterFcn* = proc (a0: b2ShapeId; a1: b2ShapeId; a2: pointer): bool {.
      cdecl.}
  b2PreSolveFcn* = proc (a0: b2ShapeId; a1: b2ShapeId; a2: ptr b2Manifold;
                         a3: pointer): bool {.cdecl.}
  b2OverlapResultFcn* = proc (a0: b2ShapeId; a1: pointer): bool {.cdecl.}
  b2CastResultFcn* = proc (a0: b2ShapeId; a1: b2Vec2; a2: b2Vec2; a3: cfloat;
                           a4: pointer): cfloat {.cdecl.}
  b2PlaneResultFcn* = proc (a0: b2ShapeId; a1: ptr b2PlaneResult; a2: pointer): bool {.
      cdecl.}
  b2DebugDraw* {.pure, inheritable, bycopy.} = object
    DrawPolygonFcn*: proc (a0: ptr b2Vec2; a1: cint; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawSolidPolygonFcn*: proc (a0: b2Transform; a1: ptr b2Vec2; a2: cint;
                                a3: cfloat; a4: b2HexColor; a5: pointer): void {.
        cdecl.}
    DrawCircleFcn*: proc (a0: b2Vec2; a1: cfloat; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawSolidCircleFcn*: proc (a0: b2Transform; a1: cfloat; a2: b2HexColor;
                               a3: pointer): void {.cdecl.}
    DrawSolidCapsuleFcn*: proc (a0: b2Vec2; a1: b2Vec2; a2: cfloat;
                                a3: b2HexColor; a4: pointer): void {.cdecl.}
    DrawSegmentFcn*: proc (a0: b2Vec2; a1: b2Vec2; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawTransformFcn*: proc (a0: b2Transform; a1: pointer): void {.cdecl.}
    DrawPointFcn*: proc (a0: b2Vec2; a1: cfloat; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawStringFcn*: proc (a0: b2Vec2; a1: cstring; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    drawingBounds*: b2AABB
    useDrawingBounds*: bool
    drawShapes*: bool
    drawJoints*: bool
    drawJointExtras*: bool
    drawBounds*: bool
    drawMass*: bool
    drawBodyNames*: bool
    drawContacts*: bool
    drawGraphColors*: bool
    drawContactNormals*: bool
    drawContactImpulses*: bool
    drawContactFeatures*: bool
    drawFrictionImpulses*: bool
    drawIslands*: bool
    context*: pointer
const B2_HASH_INIT* = 5381
const B2_PI* = 3.14159265359
const B2_MAX_POLYGON_VERTICES* = 8
const B2_DEFAULT_CATEGORY_BITS* = 1
proc b2SetAllocator*(allocFcn: b2AllocFcn; freeFcn: b2FreeFcn): void {.cdecl,
    importc: "b2SetAllocator".}
proc b2GetByteCount*(): cint {.cdecl, importc: "b2GetByteCount".}
proc b2SetAssertFcn*(assertFcn: b2AssertFcn): void {.cdecl,
    importc: "b2SetAssertFcn".}
proc b2GetVersion*(): b2Version {.cdecl, importc: "b2GetVersion".}
proc b2InternalAssertFcn*(condition: cstring; fileName: cstring;
                          lineNumber: cint): cint {.cdecl,
    importc: "b2InternalAssertFcn".}
proc b2GetTicks*(): uint64 {.cdecl, importc: "b2GetTicks".}
proc b2GetMilliseconds*(ticks: uint64): cfloat {.cdecl,
    importc: "b2GetMilliseconds".}
proc b2GetMillisecondsAndReset*(ticks: ptr uint64): cfloat {.cdecl,
    importc: "b2GetMillisecondsAndReset".}
proc b2Yield*(): void {.cdecl, importc: "b2Yield".}
proc b2Hash*(hash: uint32; data: ptr uint8; count: cint): uint32 {.cdecl,
    importc: "b2Hash".}
proc b2IsValidFloat*(a: cfloat): bool {.cdecl, importc: "b2IsValidFloat".}
proc b2IsValidVec2*(v: b2Vec2): bool {.cdecl, importc: "b2IsValidVec2".}
proc b2IsValidRotation*(q: b2Rot): bool {.cdecl, importc: "b2IsValidRotation".}
proc b2IsValidAABB*(aabb: b2AABB): bool {.cdecl, importc: "b2IsValidAABB".}
proc b2IsValidPlane*(a: b2Plane): bool {.cdecl, importc: "b2IsValidPlane".}
proc b2Atan2*(y: cfloat; x: cfloat): cfloat {.cdecl, importc: "b2Atan2".}
proc b2ComputeCosSin*(radians: cfloat): b2CosSin {.cdecl,
    importc: "b2ComputeCosSin".}
proc b2ComputeRotationBetweenUnitVectors*(v1: b2Vec2; v2: b2Vec2): b2Rot {.
    cdecl, importc: "b2ComputeRotationBetweenUnitVectors".}
proc b2SetLengthUnitsPerMeter*(lengthUnits: cfloat): void {.cdecl,
    importc: "b2SetLengthUnitsPerMeter".}
proc b2GetLengthUnitsPerMeter*(): cfloat {.cdecl,
    importc: "b2GetLengthUnitsPerMeter".}
proc b2IsValidRay*(input: ptr b2RayCastInput): bool {.cdecl,
    importc: "b2IsValidRay".}
proc b2MakePolygon*(hull: ptr b2Hull; radius: cfloat): b2Polygon {.cdecl,
    importc: "b2MakePolygon".}
proc b2MakeOffsetPolygon*(hull: ptr b2Hull; position: b2Vec2; rotation: b2Rot): b2Polygon {.
    cdecl, importc: "b2MakeOffsetPolygon".}
proc b2MakeOffsetRoundedPolygon*(hull: ptr b2Hull; position: b2Vec2;
                                 rotation: b2Rot; radius: cfloat): b2Polygon {.
    cdecl, importc: "b2MakeOffsetRoundedPolygon".}
proc b2MakeSquare*(halfWidth: cfloat): b2Polygon {.cdecl,
    importc: "b2MakeSquare".}
proc b2MakeBox*(halfWidth: cfloat; halfHeight: cfloat): b2Polygon {.cdecl,
    importc: "b2MakeBox".}
proc b2MakeRoundedBox*(halfWidth: cfloat; halfHeight: cfloat; radius: cfloat): b2Polygon {.
    cdecl, importc: "b2MakeRoundedBox".}
proc b2MakeOffsetBox*(halfWidth: cfloat; halfHeight: cfloat; center: b2Vec2;
                      rotation: b2Rot): b2Polygon {.cdecl,
    importc: "b2MakeOffsetBox".}
proc b2MakeOffsetRoundedBox*(halfWidth: cfloat; halfHeight: cfloat;
                             center: b2Vec2; rotation: b2Rot; radius: cfloat): b2Polygon {.
    cdecl, importc: "b2MakeOffsetRoundedBox".}
proc b2TransformPolygon*(transform: b2Transform; polygon: ptr b2Polygon): b2Polygon {.
    cdecl, importc: "b2TransformPolygon".}
proc b2ComputeCircleMass*(shape: ptr b2Circle; density: cfloat): b2MassData {.
    cdecl, importc: "b2ComputeCircleMass".}
proc b2ComputeCapsuleMass*(shape: ptr b2Capsule; density: cfloat): b2MassData {.
    cdecl, importc: "b2ComputeCapsuleMass".}
proc b2ComputePolygonMass*(shape: ptr b2Polygon; density: cfloat): b2MassData {.
    cdecl, importc: "b2ComputePolygonMass".}
proc b2ComputeCircleAABB*(shape: ptr b2Circle; transform: b2Transform): b2AABB {.
    cdecl, importc: "b2ComputeCircleAABB".}
proc b2ComputeCapsuleAABB*(shape: ptr b2Capsule; transform: b2Transform): b2AABB {.
    cdecl, importc: "b2ComputeCapsuleAABB".}
proc b2ComputePolygonAABB*(shape: ptr b2Polygon; transform: b2Transform): b2AABB {.
    cdecl, importc: "b2ComputePolygonAABB".}
proc b2ComputeSegmentAABB*(shape: ptr b2Segment; transform: b2Transform): b2AABB {.
    cdecl, importc: "b2ComputeSegmentAABB".}
proc b2PointInCircle*(point: b2Vec2; shape: ptr b2Circle): bool {.cdecl,
    importc: "b2PointInCircle".}
proc b2PointInCapsule*(point: b2Vec2; shape: ptr b2Capsule): bool {.cdecl,
    importc: "b2PointInCapsule".}
proc b2PointInPolygon*(point: b2Vec2; shape: ptr b2Polygon): bool {.cdecl,
    importc: "b2PointInPolygon".}
proc b2RayCastCircle*(input: ptr b2RayCastInput; shape: ptr b2Circle): b2CastOutput {.
    cdecl, importc: "b2RayCastCircle".}
proc b2RayCastCapsule*(input: ptr b2RayCastInput; shape: ptr b2Capsule): b2CastOutput {.
    cdecl, importc: "b2RayCastCapsule".}
proc b2RayCastSegment*(input: ptr b2RayCastInput; shape: ptr b2Segment;
                       oneSided: bool): b2CastOutput {.cdecl,
    importc: "b2RayCastSegment".}
proc b2RayCastPolygon*(input: ptr b2RayCastInput; shape: ptr b2Polygon): b2CastOutput {.
    cdecl, importc: "b2RayCastPolygon".}
proc b2ShapeCastCircle*(input: ptr b2ShapeCastInput; shape: ptr b2Circle): b2CastOutput {.
    cdecl, importc: "b2ShapeCastCircle".}
proc b2ShapeCastCapsule*(input: ptr b2ShapeCastInput; shape: ptr b2Capsule): b2CastOutput {.
    cdecl, importc: "b2ShapeCastCapsule".}
proc b2ShapeCastSegment*(input: ptr b2ShapeCastInput; shape: ptr b2Segment): b2CastOutput {.
    cdecl, importc: "b2ShapeCastSegment".}
proc b2ShapeCastPolygon*(input: ptr b2ShapeCastInput; shape: ptr b2Polygon): b2CastOutput {.
    cdecl, importc: "b2ShapeCastPolygon".}
proc b2ComputeHull*(points: ptr b2Vec2; count: cint): b2Hull {.cdecl,
    importc: "b2ComputeHull".}
proc b2ValidateHull*(hull: ptr b2Hull): bool {.cdecl, importc: "b2ValidateHull".}
proc b2SegmentDistance*(p1: b2Vec2; q1: b2Vec2; p2: b2Vec2; q2: b2Vec2): b2SegmentDistanceResult {.
    cdecl, importc: "b2SegmentDistance".}
var b2_emptySimplexCache*: b2SimplexCache
proc b2ShapeDistance*(input: ptr b2DistanceInput; cache: ptr b2SimplexCache;
                      simplexes: ptr b2Simplex; simplexCapacity: cint): b2DistanceOutput {.
    cdecl, importc: "b2ShapeDistance".}
proc b2ShapeCast*(input: ptr b2ShapeCastPairInput): b2CastOutput {.cdecl,
    importc: "b2ShapeCast".}
proc b2MakeProxy*(points: ptr b2Vec2; count: cint; radius: cfloat): b2ShapeProxy {.
    cdecl, importc: "b2MakeProxy".}
proc b2MakeOffsetProxy*(points: ptr b2Vec2; count: cint; radius: cfloat;
                        position: b2Vec2; rotation: b2Rot): b2ShapeProxy {.
    cdecl, importc: "b2MakeOffsetProxy".}
proc b2GetSweepTransform*(sweep: ptr b2Sweep; time: cfloat): b2Transform {.
    cdecl, importc: "b2GetSweepTransform".}
proc b2TimeOfImpact*(input: ptr b2TOIInput): b2TOIOutput {.cdecl,
    importc: "b2TimeOfImpact".}
proc b2CollideCircles*(circleA: ptr b2Circle; xfA: b2Transform;
                       circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollideCircles".}
proc b2CollideCapsuleAndCircle*(capsuleA: ptr b2Capsule; xfA: b2Transform;
                                circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollideCapsuleAndCircle".}
proc b2CollideSegmentAndCircle*(segmentA: ptr b2Segment; xfA: b2Transform;
                                circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollideSegmentAndCircle".}
proc b2CollidePolygonAndCircle*(polygonA: ptr b2Polygon; xfA: b2Transform;
                                circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollidePolygonAndCircle".}
proc b2CollideCapsules*(capsuleA: ptr b2Capsule; xfA: b2Transform;
                        capsuleB: ptr b2Capsule; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollideCapsules".}
proc b2CollideSegmentAndCapsule*(segmentA: ptr b2Segment; xfA: b2Transform;
                                 capsuleB: ptr b2Capsule; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollideSegmentAndCapsule".}
proc b2CollidePolygonAndCapsule*(polygonA: ptr b2Polygon; xfA: b2Transform;
                                 capsuleB: ptr b2Capsule; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollidePolygonAndCapsule".}
proc b2CollidePolygons*(polygonA: ptr b2Polygon; xfA: b2Transform;
                        polygonB: ptr b2Polygon; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollidePolygons".}
proc b2CollideSegmentAndPolygon*(segmentA: ptr b2Segment; xfA: b2Transform;
                                 polygonB: ptr b2Polygon; xfB: b2Transform): b2Manifold {.
    cdecl, importc: "b2CollideSegmentAndPolygon".}
proc b2CollideChainSegmentAndCircle*(segmentA: ptr b2ChainSegment;
                                     xfA: b2Transform; circleB: ptr b2Circle;
                                     xfB: b2Transform): b2Manifold {.cdecl,
    importc: "b2CollideChainSegmentAndCircle".}
proc b2CollideChainSegmentAndCapsule*(segmentA: ptr b2ChainSegment;
                                      xfA: b2Transform; capsuleB: ptr b2Capsule;
                                      xfB: b2Transform;
                                      cache: ptr b2SimplexCache): b2Manifold {.
    cdecl, importc: "b2CollideChainSegmentAndCapsule".}
proc b2CollideChainSegmentAndPolygon*(segmentA: ptr b2ChainSegment;
                                      xfA: b2Transform; polygonB: ptr b2Polygon;
                                      xfB: b2Transform;
                                      cache: ptr b2SimplexCache): b2Manifold {.
    cdecl, importc: "b2CollideChainSegmentAndPolygon".}
proc b2DynamicTree_Create*(): b2DynamicTree {.cdecl,
    importc: "b2DynamicTree_Create".}
proc b2DynamicTree_Destroy*(tree: ptr b2DynamicTree): void {.cdecl,
    importc: "b2DynamicTree_Destroy".}
proc b2DynamicTree_CreateProxy*(tree: ptr b2DynamicTree; aabb: b2AABB;
                                categoryBits: uint64; userData: uint64): cint {.
    cdecl, importc: "b2DynamicTree_CreateProxy".}
proc b2DynamicTree_DestroyProxy*(tree: ptr b2DynamicTree; proxyId: cint): void {.
    cdecl, importc: "b2DynamicTree_DestroyProxy".}
proc b2DynamicTree_MoveProxy*(tree: ptr b2DynamicTree; proxyId: cint;
                              aabb: b2AABB): void {.cdecl,
    importc: "b2DynamicTree_MoveProxy".}
proc b2DynamicTree_EnlargeProxy*(tree: ptr b2DynamicTree; proxyId: cint;
                                 aabb: b2AABB): void {.cdecl,
    importc: "b2DynamicTree_EnlargeProxy".}
proc b2DynamicTree_SetCategoryBits*(tree: ptr b2DynamicTree; proxyId: cint;
                                    categoryBits: uint64): void {.cdecl,
    importc: "b2DynamicTree_SetCategoryBits".}
proc b2DynamicTree_GetCategoryBits*(tree: ptr b2DynamicTree; proxyId: cint): uint64 {.
    cdecl, importc: "b2DynamicTree_GetCategoryBits".}
proc b2DynamicTree_Query*(tree: ptr b2DynamicTree; aabb: b2AABB;
                          maskBits: uint64; callback: b2TreeQueryCallbackFcn;
                          context: pointer): b2TreeStats {.cdecl,
    importc: "b2DynamicTree_Query".}
proc b2DynamicTree_RayCast*(tree: ptr b2DynamicTree; input: ptr b2RayCastInput;
                            maskBits: uint64;
                            callback: b2TreeRayCastCallbackFcn; context: pointer): b2TreeStats {.
    cdecl, importc: "b2DynamicTree_RayCast".}
proc b2DynamicTree_ShapeCast*(tree: ptr b2DynamicTree;
                              input: ptr b2ShapeCastInput; maskBits: uint64;
                              callback: b2TreeShapeCastCallbackFcn;
                              context: pointer): b2TreeStats {.cdecl,
    importc: "b2DynamicTree_ShapeCast".}
proc b2DynamicTree_GetHeight*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetHeight".}
proc b2DynamicTree_GetAreaRatio*(tree: ptr b2DynamicTree): cfloat {.cdecl,
    importc: "b2DynamicTree_GetAreaRatio".}
proc b2DynamicTree_GetRootBounds*(tree: ptr b2DynamicTree): b2AABB {.cdecl,
    importc: "b2DynamicTree_GetRootBounds".}
proc b2DynamicTree_GetProxyCount*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetProxyCount".}
proc b2DynamicTree_Rebuild*(tree: ptr b2DynamicTree; fullBuild: bool): cint {.
    cdecl, importc: "b2DynamicTree_Rebuild".}
proc b2DynamicTree_GetByteCount*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetByteCount".}
proc b2DynamicTree_GetUserData*(tree: ptr b2DynamicTree; proxyId: cint): uint64 {.
    cdecl, importc: "b2DynamicTree_GetUserData".}
proc b2DynamicTree_GetAABB*(tree: ptr b2DynamicTree; proxyId: cint): b2AABB {.
    cdecl, importc: "b2DynamicTree_GetAABB".}
proc b2DynamicTree_Validate*(tree: ptr b2DynamicTree): void {.cdecl,
    importc: "b2DynamicTree_Validate".}
proc b2DynamicTree_ValidateNoEnlarged*(tree: ptr b2DynamicTree): void {.cdecl,
    importc: "b2DynamicTree_ValidateNoEnlarged".}
proc b2SolvePlanes*(targetDelta: b2Vec2; planes: ptr b2CollisionPlane;
                    count: cint): b2PlaneSolverResult {.cdecl,
    importc: "b2SolvePlanes".}
proc b2ClipVector*(vector: b2Vec2; planes: ptr b2CollisionPlane; count: cint): b2Vec2 {.
    cdecl, importc: "b2ClipVector".}
proc b2DefaultWorldDef*(): b2WorldDef {.cdecl, importc: "b2DefaultWorldDef".}
proc b2DefaultBodyDef*(): b2BodyDef {.cdecl, importc: "b2DefaultBodyDef".}
proc b2DefaultFilter*(): b2Filter {.cdecl, importc: "b2DefaultFilter".}
proc b2DefaultQueryFilter*(): b2QueryFilter {.cdecl,
    importc: "b2DefaultQueryFilter".}
proc b2DefaultSurfaceMaterial*(): b2SurfaceMaterial {.cdecl,
    importc: "b2DefaultSurfaceMaterial".}
proc b2DefaultShapeDef*(): b2ShapeDef {.cdecl, importc: "b2DefaultShapeDef".}
proc b2DefaultChainDef*(): b2ChainDef {.cdecl, importc: "b2DefaultChainDef".}
proc b2DefaultDistanceJointDef*(): b2DistanceJointDef {.cdecl,
    importc: "b2DefaultDistanceJointDef".}
proc b2DefaultMotorJointDef*(): b2MotorJointDef {.cdecl,
    importc: "b2DefaultMotorJointDef".}
proc b2DefaultMouseJointDef*(): b2MouseJointDef {.cdecl,
    importc: "b2DefaultMouseJointDef".}
proc b2DefaultFilterJointDef*(): b2FilterJointDef {.cdecl,
    importc: "b2DefaultFilterJointDef".}
proc b2DefaultPrismaticJointDef*(): b2PrismaticJointDef {.cdecl,
    importc: "b2DefaultPrismaticJointDef".}
proc b2DefaultRevoluteJointDef*(): b2RevoluteJointDef {.cdecl,
    importc: "b2DefaultRevoluteJointDef".}
proc b2DefaultWeldJointDef*(): b2WeldJointDef {.cdecl,
    importc: "b2DefaultWeldJointDef".}
proc b2DefaultWheelJointDef*(): b2WheelJointDef {.cdecl,
    importc: "b2DefaultWheelJointDef".}
proc b2DefaultExplosionDef*(): b2ExplosionDef {.cdecl,
    importc: "b2DefaultExplosionDef".}
proc b2DefaultDebugDraw*(): b2DebugDraw {.cdecl, importc: "b2DefaultDebugDraw".}
proc b2CreateWorld*(def: ptr b2WorldDef): b2WorldId {.cdecl,
    importc: "b2CreateWorld".}
proc b2DestroyWorld*(worldId: b2WorldId): void {.cdecl,
    importc: "b2DestroyWorld".}
proc b2World_IsValid*(id: b2WorldId): bool {.cdecl, importc: "b2World_IsValid".}
proc b2World_Step*(worldId: b2WorldId; timeStep: cfloat; subStepCount: cint): void {.
    cdecl, importc: "b2World_Step".}
proc b2World_Draw*(worldId: b2WorldId; draw: ptr b2DebugDraw): void {.cdecl,
    importc: "b2World_Draw".}
proc b2World_GetBodyEvents*(worldId: b2WorldId): b2BodyEvents {.cdecl,
    importc: "b2World_GetBodyEvents".}
proc b2World_GetSensorEvents*(worldId: b2WorldId): b2SensorEvents {.cdecl,
    importc: "b2World_GetSensorEvents".}
proc b2World_GetContactEvents*(worldId: b2WorldId): b2ContactEvents {.cdecl,
    importc: "b2World_GetContactEvents".}
proc b2World_OverlapAABB*(worldId: b2WorldId; aabb: b2AABB;
                          filter: b2QueryFilter; fcn: b2OverlapResultFcn;
                          context: pointer): b2TreeStats {.cdecl,
    importc: "b2World_OverlapAABB".}
proc b2World_OverlapShape*(worldId: b2WorldId; proxy: ptr b2ShapeProxy;
                           filter: b2QueryFilter; fcn: b2OverlapResultFcn;
                           context: pointer): b2TreeStats {.cdecl,
    importc: "b2World_OverlapShape".}
proc b2World_CastRay*(worldId: b2WorldId; origin: b2Vec2; translation: b2Vec2;
                      filter: b2QueryFilter; fcn: b2CastResultFcn;
                      context: pointer): b2TreeStats {.cdecl,
    importc: "b2World_CastRay".}
proc b2World_CastRayClosest*(worldId: b2WorldId; origin: b2Vec2;
                             translation: b2Vec2; filter: b2QueryFilter): b2RayResult {.
    cdecl, importc: "b2World_CastRayClosest".}
proc b2World_CastShape*(worldId: b2WorldId; proxy: ptr b2ShapeProxy;
                        translation: b2Vec2; filter: b2QueryFilter;
                        fcn: b2CastResultFcn; context: pointer): b2TreeStats {.
    cdecl, importc: "b2World_CastShape".}
proc b2World_CastMover*(worldId: b2WorldId; mover: ptr b2Capsule;
                        translation: b2Vec2; filter: b2QueryFilter): cfloat {.
    cdecl, importc: "b2World_CastMover".}
proc b2World_CollideMover*(worldId: b2WorldId; mover: ptr b2Capsule;
                           filter: b2QueryFilter; fcn: b2PlaneResultFcn;
                           context: pointer): void {.cdecl,
    importc: "b2World_CollideMover".}
proc b2World_EnableSleeping*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableSleeping".}
proc b2World_IsSleepingEnabled*(worldId: b2WorldId): bool {.cdecl,
    importc: "b2World_IsSleepingEnabled".}
proc b2World_EnableContinuous*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableContinuous".}
proc b2World_IsContinuousEnabled*(worldId: b2WorldId): bool {.cdecl,
    importc: "b2World_IsContinuousEnabled".}
proc b2World_SetRestitutionThreshold*(worldId: b2WorldId; value: cfloat): void {.
    cdecl, importc: "b2World_SetRestitutionThreshold".}
proc b2World_GetRestitutionThreshold*(worldId: b2WorldId): cfloat {.cdecl,
    importc: "b2World_GetRestitutionThreshold".}
proc b2World_SetHitEventThreshold*(worldId: b2WorldId; value: cfloat): void {.
    cdecl, importc: "b2World_SetHitEventThreshold".}
proc b2World_GetHitEventThreshold*(worldId: b2WorldId): cfloat {.cdecl,
    importc: "b2World_GetHitEventThreshold".}
proc b2World_SetCustomFilterCallback*(worldId: b2WorldId;
                                      fcn: b2CustomFilterFcn; context: pointer): void {.
    cdecl, importc: "b2World_SetCustomFilterCallback".}
proc b2World_SetPreSolveCallback*(worldId: b2WorldId; fcn: b2PreSolveFcn;
                                  context: pointer): void {.cdecl,
    importc: "b2World_SetPreSolveCallback".}
proc b2World_SetGravity*(worldId: b2WorldId; gravity: b2Vec2): void {.cdecl,
    importc: "b2World_SetGravity".}
proc b2World_GetGravity*(worldId: b2WorldId): b2Vec2 {.cdecl,
    importc: "b2World_GetGravity".}
proc b2World_Explode*(worldId: b2WorldId; explosionDef: ptr b2ExplosionDef): void {.
    cdecl, importc: "b2World_Explode".}
proc b2World_SetContactTuning*(worldId: b2WorldId; hertz: cfloat;
                               dampingRatio: cfloat; pushSpeed: cfloat): void {.
    cdecl, importc: "b2World_SetContactTuning".}
proc b2World_SetMaximumLinearSpeed*(worldId: b2WorldId;
                                    maximumLinearSpeed: cfloat): void {.cdecl,
    importc: "b2World_SetMaximumLinearSpeed".}
proc b2World_GetMaximumLinearSpeed*(worldId: b2WorldId): cfloat {.cdecl,
    importc: "b2World_GetMaximumLinearSpeed".}
proc b2World_EnableWarmStarting*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableWarmStarting".}
proc b2World_IsWarmStartingEnabled*(worldId: b2WorldId): bool {.cdecl,
    importc: "b2World_IsWarmStartingEnabled".}
proc b2World_GetAwakeBodyCount*(worldId: b2WorldId): cint {.cdecl,
    importc: "b2World_GetAwakeBodyCount".}
proc b2World_GetProfile*(worldId: b2WorldId): b2Profile {.cdecl,
    importc: "b2World_GetProfile".}
proc b2World_GetCounters*(worldId: b2WorldId): b2Counters {.cdecl,
    importc: "b2World_GetCounters".}
proc b2World_SetUserData*(worldId: b2WorldId; userData: pointer): void {.cdecl,
    importc: "b2World_SetUserData".}
proc b2World_GetUserData*(worldId: b2WorldId): pointer {.cdecl,
    importc: "b2World_GetUserData".}
proc b2World_SetFrictionCallback*(worldId: b2WorldId;
                                  callback: b2FrictionCallback): void {.cdecl,
    importc: "b2World_SetFrictionCallback".}
proc b2World_SetRestitutionCallback*(worldId: b2WorldId;
                                     callback: b2RestitutionCallback): void {.
    cdecl, importc: "b2World_SetRestitutionCallback".}
proc b2World_DumpMemoryStats*(worldId: b2WorldId): void {.cdecl,
    importc: "b2World_DumpMemoryStats".}
proc b2World_RebuildStaticTree*(worldId: b2WorldId): void {.cdecl,
    importc: "b2World_RebuildStaticTree".}
proc b2World_EnableSpeculative*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableSpeculative".}
proc b2CreateBody*(worldId: b2WorldId; def: ptr b2BodyDef): b2BodyId {.cdecl,
    importc: "b2CreateBody".}
proc b2DestroyBody*(bodyId: b2BodyId): void {.cdecl, importc: "b2DestroyBody".}
proc b2Body_IsValid*(id: b2BodyId): bool {.cdecl, importc: "b2Body_IsValid".}
proc b2Body_GetType*(bodyId: b2BodyId): b2BodyType {.cdecl,
    importc: "b2Body_GetType".}
proc b2Body_SetType*(bodyId: b2BodyId; bodyType: b2BodyType): void {.cdecl,
    importc: "b2Body_SetType".}
proc b2Body_SetName*(bodyId: b2BodyId; name: cstring): void {.cdecl,
    importc: "b2Body_SetName".}
proc b2Body_GetName*(bodyId: b2BodyId): cstring {.cdecl,
    importc: "b2Body_GetName".}
proc b2Body_SetUserData*(bodyId: b2BodyId; userData: pointer): void {.cdecl,
    importc: "b2Body_SetUserData".}
proc b2Body_GetUserData*(bodyId: b2BodyId): pointer {.cdecl,
    importc: "b2Body_GetUserData".}
proc b2Body_GetPosition*(bodyId: b2BodyId): b2Vec2 {.cdecl,
    importc: "b2Body_GetPosition".}
proc b2Body_GetRotation*(bodyId: b2BodyId): b2Rot {.cdecl,
    importc: "b2Body_GetRotation".}
proc b2Body_GetTransform*(bodyId: b2BodyId): b2Transform {.cdecl,
    importc: "b2Body_GetTransform".}
proc b2Body_SetTransform*(bodyId: b2BodyId; position: b2Vec2; rotation: b2Rot): void {.
    cdecl, importc: "b2Body_SetTransform".}
proc b2Body_GetLocalPoint*(bodyId: b2BodyId; worldPoint: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Body_GetLocalPoint".}
proc b2Body_GetWorldPoint*(bodyId: b2BodyId; localPoint: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Body_GetWorldPoint".}
proc b2Body_GetLocalVector*(bodyId: b2BodyId; worldVector: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Body_GetLocalVector".}
proc b2Body_GetWorldVector*(bodyId: b2BodyId; localVector: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Body_GetWorldVector".}
proc b2Body_GetLinearVelocity*(bodyId: b2BodyId): b2Vec2 {.cdecl,
    importc: "b2Body_GetLinearVelocity".}
proc b2Body_GetAngularVelocity*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetAngularVelocity".}
proc b2Body_SetLinearVelocity*(bodyId: b2BodyId; linearVelocity: b2Vec2): void {.
    cdecl, importc: "b2Body_SetLinearVelocity".}
proc b2Body_SetAngularVelocity*(bodyId: b2BodyId; angularVelocity: cfloat): void {.
    cdecl, importc: "b2Body_SetAngularVelocity".}
proc b2Body_SetTargetTransform*(bodyId: b2BodyId; target: b2Transform;
                                timeStep: cfloat): void {.cdecl,
    importc: "b2Body_SetTargetTransform".}
proc b2Body_GetLocalPointVelocity*(bodyId: b2BodyId; localPoint: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Body_GetLocalPointVelocity".}
proc b2Body_GetWorldPointVelocity*(bodyId: b2BodyId; worldPoint: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Body_GetWorldPointVelocity".}
proc b2Body_ApplyForce*(bodyId: b2BodyId; force: b2Vec2; point: b2Vec2;
                        wake: bool): void {.cdecl, importc: "b2Body_ApplyForce".}
proc b2Body_ApplyForceToCenter*(bodyId: b2BodyId; force: b2Vec2; wake: bool): void {.
    cdecl, importc: "b2Body_ApplyForceToCenter".}
proc b2Body_ApplyTorque*(bodyId: b2BodyId; torque: cfloat; wake: bool): void {.
    cdecl, importc: "b2Body_ApplyTorque".}
proc b2Body_ApplyLinearImpulse*(bodyId: b2BodyId; impulse: b2Vec2;
                                point: b2Vec2; wake: bool): void {.cdecl,
    importc: "b2Body_ApplyLinearImpulse".}
proc b2Body_ApplyLinearImpulseToCenter*(bodyId: b2BodyId; impulse: b2Vec2;
                                        wake: bool): void {.cdecl,
    importc: "b2Body_ApplyLinearImpulseToCenter".}
proc b2Body_ApplyAngularImpulse*(bodyId: b2BodyId; impulse: cfloat; wake: bool): void {.
    cdecl, importc: "b2Body_ApplyAngularImpulse".}
proc b2Body_GetMass*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetMass".}
proc b2Body_GetRotationalInertia*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetRotationalInertia".}
proc b2Body_GetLocalCenterOfMass*(bodyId: b2BodyId): b2Vec2 {.cdecl,
    importc: "b2Body_GetLocalCenterOfMass".}
proc b2Body_GetWorldCenterOfMass*(bodyId: b2BodyId): b2Vec2 {.cdecl,
    importc: "b2Body_GetWorldCenterOfMass".}
proc b2Body_SetMassData*(bodyId: b2BodyId; massData: b2MassData): void {.cdecl,
    importc: "b2Body_SetMassData".}
proc b2Body_GetMassData*(bodyId: b2BodyId): b2MassData {.cdecl,
    importc: "b2Body_GetMassData".}
proc b2Body_ApplyMassFromShapes*(bodyId: b2BodyId): void {.cdecl,
    importc: "b2Body_ApplyMassFromShapes".}
proc b2Body_SetLinearDamping*(bodyId: b2BodyId; linearDamping: cfloat): void {.
    cdecl, importc: "b2Body_SetLinearDamping".}
proc b2Body_GetLinearDamping*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetLinearDamping".}
proc b2Body_SetAngularDamping*(bodyId: b2BodyId; angularDamping: cfloat): void {.
    cdecl, importc: "b2Body_SetAngularDamping".}
proc b2Body_GetAngularDamping*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetAngularDamping".}
proc b2Body_SetGravityScale*(bodyId: b2BodyId; gravityScale: cfloat): void {.
    cdecl, importc: "b2Body_SetGravityScale".}
proc b2Body_GetGravityScale*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetGravityScale".}
proc b2Body_IsAwake*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_IsAwake".}
proc b2Body_SetAwake*(bodyId: b2BodyId; awake: bool): void {.cdecl,
    importc: "b2Body_SetAwake".}
proc b2Body_EnableSleep*(bodyId: b2BodyId; enableSleep: bool): void {.cdecl,
    importc: "b2Body_EnableSleep".}
proc b2Body_IsSleepEnabled*(bodyId: b2BodyId): bool {.cdecl,
    importc: "b2Body_IsSleepEnabled".}
proc b2Body_SetSleepThreshold*(bodyId: b2BodyId; sleepThreshold: cfloat): void {.
    cdecl, importc: "b2Body_SetSleepThreshold".}
proc b2Body_GetSleepThreshold*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetSleepThreshold".}
proc b2Body_IsEnabled*(bodyId: b2BodyId): bool {.cdecl,
    importc: "b2Body_IsEnabled".}
proc b2Body_Disable*(bodyId: b2BodyId): void {.cdecl, importc: "b2Body_Disable".}
proc b2Body_Enable*(bodyId: b2BodyId): void {.cdecl, importc: "b2Body_Enable".}
proc b2Body_SetFixedRotation*(bodyId: b2BodyId; flag: bool): void {.cdecl,
    importc: "b2Body_SetFixedRotation".}
proc b2Body_IsFixedRotation*(bodyId: b2BodyId): bool {.cdecl,
    importc: "b2Body_IsFixedRotation".}
proc b2Body_SetBullet*(bodyId: b2BodyId; flag: bool): void {.cdecl,
    importc: "b2Body_SetBullet".}
proc b2Body_IsBullet*(bodyId: b2BodyId): bool {.cdecl,
    importc: "b2Body_IsBullet".}
proc b2Body_EnableContactEvents*(bodyId: b2BodyId; flag: bool): void {.cdecl,
    importc: "b2Body_EnableContactEvents".}
proc b2Body_EnableHitEvents*(bodyId: b2BodyId; flag: bool): void {.cdecl,
    importc: "b2Body_EnableHitEvents".}
proc b2Body_GetWorld*(bodyId: b2BodyId): b2WorldId {.cdecl,
    importc: "b2Body_GetWorld".}
proc b2Body_GetShapeCount*(bodyId: b2BodyId): cint {.cdecl,
    importc: "b2Body_GetShapeCount".}
proc b2Body_GetShapes*(bodyId: b2BodyId; shapeArray: ptr b2ShapeId;
                       capacity: cint): cint {.cdecl,
    importc: "b2Body_GetShapes".}
proc b2Body_GetJointCount*(bodyId: b2BodyId): cint {.cdecl,
    importc: "b2Body_GetJointCount".}
proc b2Body_GetJoints*(bodyId: b2BodyId; jointArray: ptr b2JointId;
                       capacity: cint): cint {.cdecl,
    importc: "b2Body_GetJoints".}
proc b2Body_GetContactCapacity*(bodyId: b2BodyId): cint {.cdecl,
    importc: "b2Body_GetContactCapacity".}
proc b2Body_GetContactData*(bodyId: b2BodyId; contactData: ptr b2ContactData;
                            capacity: cint): cint {.cdecl,
    importc: "b2Body_GetContactData".}
proc b2Body_ComputeAABB*(bodyId: b2BodyId): b2AABB {.cdecl,
    importc: "b2Body_ComputeAABB".}
proc b2CreateCircleShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                          circle: ptr b2Circle): b2ShapeId {.cdecl,
    importc: "b2CreateCircleShape".}
proc b2CreateSegmentShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                           segment: ptr b2Segment): b2ShapeId {.cdecl,
    importc: "b2CreateSegmentShape".}
proc b2CreateCapsuleShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                           capsule: ptr b2Capsule): b2ShapeId {.cdecl,
    importc: "b2CreateCapsuleShape".}
proc b2CreatePolygonShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                           polygon: ptr b2Polygon): b2ShapeId {.cdecl,
    importc: "b2CreatePolygonShape".}
proc b2DestroyShape*(shapeId: b2ShapeId; updateBodyMass: bool): void {.cdecl,
    importc: "b2DestroyShape".}
proc b2Shape_IsValid*(id: b2ShapeId): bool {.cdecl, importc: "b2Shape_IsValid".}
proc b2Shape_GetType*(shapeId: b2ShapeId): b2ShapeType {.cdecl,
    importc: "b2Shape_GetType".}
proc b2Shape_GetBody*(shapeId: b2ShapeId): b2BodyId {.cdecl,
    importc: "b2Shape_GetBody".}
proc b2Shape_GetWorld*(shapeId: b2ShapeId): b2WorldId {.cdecl,
    importc: "b2Shape_GetWorld".}
proc b2Shape_IsSensor*(shapeId: b2ShapeId): bool {.cdecl,
    importc: "b2Shape_IsSensor".}
proc b2Shape_SetUserData*(shapeId: b2ShapeId; userData: pointer): void {.cdecl,
    importc: "b2Shape_SetUserData".}
proc b2Shape_GetUserData*(shapeId: b2ShapeId): pointer {.cdecl,
    importc: "b2Shape_GetUserData".}
proc b2Shape_SetDensity*(shapeId: b2ShapeId; density: cfloat;
                         updateBodyMass: bool): void {.cdecl,
    importc: "b2Shape_SetDensity".}
proc b2Shape_GetDensity*(shapeId: b2ShapeId): cfloat {.cdecl,
    importc: "b2Shape_GetDensity".}
proc b2Shape_SetFriction*(shapeId: b2ShapeId; friction: cfloat): void {.cdecl,
    importc: "b2Shape_SetFriction".}
proc b2Shape_GetFriction*(shapeId: b2ShapeId): cfloat {.cdecl,
    importc: "b2Shape_GetFriction".}
proc b2Shape_SetRestitution*(shapeId: b2ShapeId; restitution: cfloat): void {.
    cdecl, importc: "b2Shape_SetRestitution".}
proc b2Shape_GetRestitution*(shapeId: b2ShapeId): cfloat {.cdecl,
    importc: "b2Shape_GetRestitution".}
proc b2Shape_SetMaterial*(shapeId: b2ShapeId; material: cint): void {.cdecl,
    importc: "b2Shape_SetMaterial".}
proc b2Shape_GetMaterial*(shapeId: b2ShapeId): cint {.cdecl,
    importc: "b2Shape_GetMaterial".}
proc b2Shape_SetSurfaceMaterial*(shapeId: b2ShapeId;
                                 surfaceMaterial: b2SurfaceMaterial): void {.
    cdecl, importc: "b2Shape_SetSurfaceMaterial".}
proc b2Shape_GetSurfaceMaterial*(shapeId: b2ShapeId): b2SurfaceMaterial {.cdecl,
    importc: "b2Shape_GetSurfaceMaterial".}
proc b2Shape_GetFilter*(shapeId: b2ShapeId): b2Filter {.cdecl,
    importc: "b2Shape_GetFilter".}
proc b2Shape_SetFilter*(shapeId: b2ShapeId; filter: b2Filter): void {.cdecl,
    importc: "b2Shape_SetFilter".}
proc b2Shape_EnableSensorEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl,
    importc: "b2Shape_EnableSensorEvents".}
proc b2Shape_AreSensorEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl,
    importc: "b2Shape_AreSensorEventsEnabled".}
proc b2Shape_EnableContactEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl,
    importc: "b2Shape_EnableContactEvents".}
proc b2Shape_AreContactEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl,
    importc: "b2Shape_AreContactEventsEnabled".}
proc b2Shape_EnablePreSolveEvents*(shapeId: b2ShapeId; flag: bool): void {.
    cdecl, importc: "b2Shape_EnablePreSolveEvents".}
proc b2Shape_ArePreSolveEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl,
    importc: "b2Shape_ArePreSolveEventsEnabled".}
proc b2Shape_EnableHitEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl,
    importc: "b2Shape_EnableHitEvents".}
proc b2Shape_AreHitEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl,
    importc: "b2Shape_AreHitEventsEnabled".}
proc b2Shape_TestPoint*(shapeId: b2ShapeId; point: b2Vec2): bool {.cdecl,
    importc: "b2Shape_TestPoint".}
proc b2Shape_RayCast*(shapeId: b2ShapeId; input: ptr b2RayCastInput): b2CastOutput {.
    cdecl, importc: "b2Shape_RayCast".}
proc b2Shape_GetCircle*(shapeId: b2ShapeId): b2Circle {.cdecl,
    importc: "b2Shape_GetCircle".}
proc b2Shape_GetSegment*(shapeId: b2ShapeId): b2Segment {.cdecl,
    importc: "b2Shape_GetSegment".}
proc b2Shape_GetChainSegment*(shapeId: b2ShapeId): b2ChainSegment {.cdecl,
    importc: "b2Shape_GetChainSegment".}
proc b2Shape_GetCapsule*(shapeId: b2ShapeId): b2Capsule {.cdecl,
    importc: "b2Shape_GetCapsule".}
proc b2Shape_GetPolygon*(shapeId: b2ShapeId): b2Polygon {.cdecl,
    importc: "b2Shape_GetPolygon".}
proc b2Shape_SetCircle*(shapeId: b2ShapeId; circle: ptr b2Circle): void {.cdecl,
    importc: "b2Shape_SetCircle".}
proc b2Shape_SetCapsule*(shapeId: b2ShapeId; capsule: ptr b2Capsule): void {.
    cdecl, importc: "b2Shape_SetCapsule".}
proc b2Shape_SetSegment*(shapeId: b2ShapeId; segment: ptr b2Segment): void {.
    cdecl, importc: "b2Shape_SetSegment".}
proc b2Shape_SetPolygon*(shapeId: b2ShapeId; polygon: ptr b2Polygon): void {.
    cdecl, importc: "b2Shape_SetPolygon".}
proc b2Shape_GetParentChain*(shapeId: b2ShapeId): b2ChainId {.cdecl,
    importc: "b2Shape_GetParentChain".}
proc b2Shape_GetContactCapacity*(shapeId: b2ShapeId): cint {.cdecl,
    importc: "b2Shape_GetContactCapacity".}
proc b2Shape_GetContactData*(shapeId: b2ShapeId; contactData: ptr b2ContactData;
                             capacity: cint): cint {.cdecl,
    importc: "b2Shape_GetContactData".}
proc b2Shape_GetSensorCapacity*(shapeId: b2ShapeId): cint {.cdecl,
    importc: "b2Shape_GetSensorCapacity".}
proc b2Shape_GetSensorOverlaps*(shapeId: b2ShapeId; overlaps: ptr b2ShapeId;
                                capacity: cint): cint {.cdecl,
    importc: "b2Shape_GetSensorOverlaps".}
proc b2Shape_GetAABB*(shapeId: b2ShapeId): b2AABB {.cdecl,
    importc: "b2Shape_GetAABB".}
proc b2Shape_GetMassData*(shapeId: b2ShapeId): b2MassData {.cdecl,
    importc: "b2Shape_GetMassData".}
proc b2Shape_GetClosestPoint*(shapeId: b2ShapeId; target: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Shape_GetClosestPoint".}
proc b2CreateChain*(bodyId: b2BodyId; def: ptr b2ChainDef): b2ChainId {.cdecl,
    importc: "b2CreateChain".}
proc b2DestroyChain*(chainId: b2ChainId): void {.cdecl,
    importc: "b2DestroyChain".}
proc b2Chain_GetWorld*(chainId: b2ChainId): b2WorldId {.cdecl,
    importc: "b2Chain_GetWorld".}
proc b2Chain_GetSegmentCount*(chainId: b2ChainId): cint {.cdecl,
    importc: "b2Chain_GetSegmentCount".}
proc b2Chain_GetSegments*(chainId: b2ChainId; segmentArray: ptr b2ShapeId;
                          capacity: cint): cint {.cdecl,
    importc: "b2Chain_GetSegments".}
proc b2Chain_SetFriction*(chainId: b2ChainId; friction: cfloat): void {.cdecl,
    importc: "b2Chain_SetFriction".}
proc b2Chain_GetFriction*(chainId: b2ChainId): cfloat {.cdecl,
    importc: "b2Chain_GetFriction".}
proc b2Chain_SetRestitution*(chainId: b2ChainId; restitution: cfloat): void {.
    cdecl, importc: "b2Chain_SetRestitution".}
proc b2Chain_GetRestitution*(chainId: b2ChainId): cfloat {.cdecl,
    importc: "b2Chain_GetRestitution".}
proc b2Chain_SetMaterial*(chainId: b2ChainId; material: cint): void {.cdecl,
    importc: "b2Chain_SetMaterial".}
proc b2Chain_GetMaterial*(chainId: b2ChainId): cint {.cdecl,
    importc: "b2Chain_GetMaterial".}
proc b2Chain_IsValid*(id: b2ChainId): bool {.cdecl, importc: "b2Chain_IsValid".}
proc b2DestroyJoint*(jointId: b2JointId): void {.cdecl,
    importc: "b2DestroyJoint".}
proc b2Joint_IsValid*(id: b2JointId): bool {.cdecl, importc: "b2Joint_IsValid".}
proc b2Joint_GetType*(jointId: b2JointId): b2JointType {.cdecl,
    importc: "b2Joint_GetType".}
proc b2Joint_GetBodyA*(jointId: b2JointId): b2BodyId {.cdecl,
    importc: "b2Joint_GetBodyA".}
proc b2Joint_GetBodyB*(jointId: b2JointId): b2BodyId {.cdecl,
    importc: "b2Joint_GetBodyB".}
proc b2Joint_GetWorld*(jointId: b2JointId): b2WorldId {.cdecl,
    importc: "b2Joint_GetWorld".}
proc b2Joint_SetLocalAnchorA*(jointId: b2JointId; localAnchor: b2Vec2): void {.
    cdecl, importc: "b2Joint_SetLocalAnchorA".}
proc b2Joint_GetLocalAnchorA*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2Joint_GetLocalAnchorA".}
proc b2Joint_SetLocalAnchorB*(jointId: b2JointId; localAnchor: b2Vec2): void {.
    cdecl, importc: "b2Joint_SetLocalAnchorB".}
proc b2Joint_GetLocalAnchorB*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2Joint_GetLocalAnchorB".}
proc b2Joint_GetReferenceAngle*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2Joint_GetReferenceAngle".}
proc b2Joint_SetReferenceAngle*(jointId: b2JointId; angleInRadians: cfloat): void {.
    cdecl, importc: "b2Joint_SetReferenceAngle".}
proc b2Joint_SetLocalAxisA*(jointId: b2JointId; localAxis: b2Vec2): void {.
    cdecl, importc: "b2Joint_SetLocalAxisA".}
proc b2Joint_GetLocalAxisA*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2Joint_GetLocalAxisA".}
proc b2Joint_SetCollideConnected*(jointId: b2JointId; shouldCollide: bool): void {.
    cdecl, importc: "b2Joint_SetCollideConnected".}
proc b2Joint_GetCollideConnected*(jointId: b2JointId): bool {.cdecl,
    importc: "b2Joint_GetCollideConnected".}
proc b2Joint_SetUserData*(jointId: b2JointId; userData: pointer): void {.cdecl,
    importc: "b2Joint_SetUserData".}
proc b2Joint_GetUserData*(jointId: b2JointId): pointer {.cdecl,
    importc: "b2Joint_GetUserData".}
proc b2Joint_WakeBodies*(jointId: b2JointId): void {.cdecl,
    importc: "b2Joint_WakeBodies".}
proc b2Joint_GetConstraintForce*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2Joint_GetConstraintForce".}
proc b2Joint_GetConstraintTorque*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2Joint_GetConstraintTorque".}
proc b2Joint_GetLinearSeparation*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2Joint_GetLinearSeparation".}
proc b2Joint_GetAngularSeparation*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2Joint_GetAngularSeparation".}
proc b2Joint_GetConstraintTuning*(jointId: b2JointId; hertz: ptr cfloat;
                                  dampingRatio: ptr cfloat): void {.cdecl,
    importc: "b2Joint_GetConstraintTuning".}
proc b2Joint_SetConstraintTuning*(jointId: b2JointId; hertz: cfloat;
                                  dampingRatio: cfloat): void {.cdecl,
    importc: "b2Joint_SetConstraintTuning".}
proc b2CreateDistanceJoint*(worldId: b2WorldId; def: ptr b2DistanceJointDef): b2JointId {.
    cdecl, importc: "b2CreateDistanceJoint".}
proc b2DistanceJoint_SetLength*(jointId: b2JointId; length: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetLength".}
proc b2DistanceJoint_GetLength*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetLength".}
proc b2DistanceJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.
    cdecl, importc: "b2DistanceJoint_EnableSpring".}
proc b2DistanceJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2DistanceJoint_IsSpringEnabled".}
proc b2DistanceJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetSpringHertz".}
proc b2DistanceJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetSpringDampingRatio".}
proc b2DistanceJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetSpringHertz".}
proc b2DistanceJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetSpringDampingRatio".}
proc b2DistanceJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.
    cdecl, importc: "b2DistanceJoint_EnableLimit".}
proc b2DistanceJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2DistanceJoint_IsLimitEnabled".}
proc b2DistanceJoint_SetLengthRange*(jointId: b2JointId; minLength: cfloat;
                                     maxLength: cfloat): void {.cdecl,
    importc: "b2DistanceJoint_SetLengthRange".}
proc b2DistanceJoint_GetMinLength*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMinLength".}
proc b2DistanceJoint_GetMaxLength*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMaxLength".}
proc b2DistanceJoint_GetCurrentLength*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetCurrentLength".}
proc b2DistanceJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.
    cdecl, importc: "b2DistanceJoint_EnableMotor".}
proc b2DistanceJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2DistanceJoint_IsMotorEnabled".}
proc b2DistanceJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetMotorSpeed".}
proc b2DistanceJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMotorSpeed".}
proc b2DistanceJoint_SetMaxMotorForce*(jointId: b2JointId; force: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetMaxMotorForce".}
proc b2DistanceJoint_GetMaxMotorForce*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMaxMotorForce".}
proc b2DistanceJoint_GetMotorForce*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMotorForce".}
proc b2CreateMotorJoint*(worldId: b2WorldId; def: ptr b2MotorJointDef): b2JointId {.
    cdecl, importc: "b2CreateMotorJoint".}
proc b2MotorJoint_SetLinearOffset*(jointId: b2JointId; linearOffset: b2Vec2): void {.
    cdecl, importc: "b2MotorJoint_SetLinearOffset".}
proc b2MotorJoint_GetLinearOffset*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2MotorJoint_GetLinearOffset".}
proc b2MotorJoint_SetAngularOffset*(jointId: b2JointId; angularOffset: cfloat): void {.
    cdecl, importc: "b2MotorJoint_SetAngularOffset".}
proc b2MotorJoint_GetAngularOffset*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MotorJoint_GetAngularOffset".}
proc b2MotorJoint_SetMaxForce*(jointId: b2JointId; maxForce: cfloat): void {.
    cdecl, importc: "b2MotorJoint_SetMaxForce".}
proc b2MotorJoint_GetMaxForce*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MotorJoint_GetMaxForce".}
proc b2MotorJoint_SetMaxTorque*(jointId: b2JointId; maxTorque: cfloat): void {.
    cdecl, importc: "b2MotorJoint_SetMaxTorque".}
proc b2MotorJoint_GetMaxTorque*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MotorJoint_GetMaxTorque".}
proc b2MotorJoint_SetCorrectionFactor*(jointId: b2JointId;
                                       correctionFactor: cfloat): void {.cdecl,
    importc: "b2MotorJoint_SetCorrectionFactor".}
proc b2MotorJoint_GetCorrectionFactor*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MotorJoint_GetCorrectionFactor".}
proc b2CreateMouseJoint*(worldId: b2WorldId; def: ptr b2MouseJointDef): b2JointId {.
    cdecl, importc: "b2CreateMouseJoint".}
proc b2MouseJoint_SetTarget*(jointId: b2JointId; target: b2Vec2): void {.cdecl,
    importc: "b2MouseJoint_SetTarget".}
proc b2MouseJoint_GetTarget*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2MouseJoint_GetTarget".}
proc b2MouseJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2MouseJoint_SetSpringHertz".}
proc b2MouseJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MouseJoint_GetSpringHertz".}
proc b2MouseJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl,
                                  importc: "b2MouseJoint_SetSpringDampingRatio".}
proc b2MouseJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MouseJoint_GetSpringDampingRatio".}
proc b2MouseJoint_SetMaxForce*(jointId: b2JointId; maxForce: cfloat): void {.
    cdecl, importc: "b2MouseJoint_SetMaxForce".}
proc b2MouseJoint_GetMaxForce*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2MouseJoint_GetMaxForce".}
proc b2CreateFilterJoint*(worldId: b2WorldId; def: ptr b2FilterJointDef): b2JointId {.
    cdecl, importc: "b2CreateFilterJoint".}
proc b2CreatePrismaticJoint*(worldId: b2WorldId; def: ptr b2PrismaticJointDef): b2JointId {.
    cdecl, importc: "b2CreatePrismaticJoint".}
proc b2PrismaticJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.
    cdecl, importc: "b2PrismaticJoint_EnableSpring".}
proc b2PrismaticJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2PrismaticJoint_IsSpringEnabled".}
proc b2PrismaticJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetSpringHertz".}
proc b2PrismaticJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetSpringHertz".}
proc b2PrismaticJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetSpringDampingRatio".}
proc b2PrismaticJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.
    cdecl, importc: "b2PrismaticJoint_GetSpringDampingRatio".}
proc b2PrismaticJoint_SetTargetTranslation*(jointId: b2JointId;
    translation: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetTargetTranslation".}
proc b2PrismaticJoint_GetTargetTranslation*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetTargetTranslation".}
proc b2PrismaticJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.
    cdecl, importc: "b2PrismaticJoint_EnableLimit".}
proc b2PrismaticJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2PrismaticJoint_IsLimitEnabled".}
proc b2PrismaticJoint_GetLowerLimit*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetLowerLimit".}
proc b2PrismaticJoint_GetUpperLimit*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetUpperLimit".}
proc b2PrismaticJoint_SetLimits*(jointId: b2JointId; lower: cfloat;
                                 upper: cfloat): void {.cdecl,
    importc: "b2PrismaticJoint_SetLimits".}
proc b2PrismaticJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.
    cdecl, importc: "b2PrismaticJoint_EnableMotor".}
proc b2PrismaticJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2PrismaticJoint_IsMotorEnabled".}
proc b2PrismaticJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetMotorSpeed".}
proc b2PrismaticJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetMotorSpeed".}
proc b2PrismaticJoint_SetMaxMotorForce*(jointId: b2JointId; force: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetMaxMotorForce".}
proc b2PrismaticJoint_GetMaxMotorForce*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetMaxMotorForce".}
proc b2PrismaticJoint_GetMotorForce*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetMotorForce".}
proc b2PrismaticJoint_GetTranslation*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetTranslation".}
proc b2PrismaticJoint_GetSpeed*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetSpeed".}
proc b2CreateRevoluteJoint*(worldId: b2WorldId; def: ptr b2RevoluteJointDef): b2JointId {.
    cdecl, importc: "b2CreateRevoluteJoint".}
proc b2RevoluteJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableSpring".}
proc b2RevoluteJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2RevoluteJoint_IsSpringEnabled".}
proc b2RevoluteJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetSpringHertz".}
proc b2RevoluteJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetSpringHertz".}
proc b2RevoluteJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetSpringDampingRatio".}
proc b2RevoluteJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetSpringDampingRatio".}
proc b2RevoluteJoint_SetTargetAngle*(jointId: b2JointId; angle: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetTargetAngle".}
proc b2RevoluteJoint_GetTargetAngle*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetTargetAngle".}
proc b2RevoluteJoint_GetAngle*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetAngle".}
proc b2RevoluteJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableLimit".}
proc b2RevoluteJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2RevoluteJoint_IsLimitEnabled".}
proc b2RevoluteJoint_GetLowerLimit*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetLowerLimit".}
proc b2RevoluteJoint_GetUpperLimit*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetUpperLimit".}
proc b2RevoluteJoint_SetLimits*(jointId: b2JointId; lower: cfloat; upper: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetLimits".}
proc b2RevoluteJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableMotor".}
proc b2RevoluteJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2RevoluteJoint_IsMotorEnabled".}
proc b2RevoluteJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetMotorSpeed".}
proc b2RevoluteJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetMotorSpeed".}
proc b2RevoluteJoint_GetMotorTorque*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetMotorTorque".}
proc b2RevoluteJoint_SetMaxMotorTorque*(jointId: b2JointId; torque: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetMaxMotorTorque".}
proc b2RevoluteJoint_GetMaxMotorTorque*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetMaxMotorTorque".}
proc b2CreateWeldJoint*(worldId: b2WorldId; def: ptr b2WeldJointDef): b2JointId {.
    cdecl, importc: "b2CreateWeldJoint".}
proc b2WeldJoint_SetLinearHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetLinearHertz".}
proc b2WeldJoint_GetLinearHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WeldJoint_GetLinearHertz".}
proc b2WeldJoint_SetLinearDampingRatio*(jointId: b2JointId; dampingRatio: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetLinearDampingRatio".}
proc b2WeldJoint_GetLinearDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WeldJoint_GetLinearDampingRatio".}
proc b2WeldJoint_SetAngularHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetAngularHertz".}
proc b2WeldJoint_GetAngularHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WeldJoint_GetAngularHertz".}
proc b2WeldJoint_SetAngularDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl,
                                  importc: "b2WeldJoint_SetAngularDampingRatio".}
proc b2WeldJoint_GetAngularDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WeldJoint_GetAngularDampingRatio".}
proc b2CreateWheelJoint*(worldId: b2WorldId; def: ptr b2WheelJointDef): b2JointId {.
    cdecl, importc: "b2CreateWheelJoint".}
proc b2WheelJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.
    cdecl, importc: "b2WheelJoint_EnableSpring".}
proc b2WheelJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2WheelJoint_IsSpringEnabled".}
proc b2WheelJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetSpringHertz".}
proc b2WheelJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetSpringHertz".}
proc b2WheelJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl,
                                  importc: "b2WheelJoint_SetSpringDampingRatio".}
proc b2WheelJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetSpringDampingRatio".}
proc b2WheelJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.
    cdecl, importc: "b2WheelJoint_EnableLimit".}
proc b2WheelJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2WheelJoint_IsLimitEnabled".}
proc b2WheelJoint_GetLowerLimit*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetLowerLimit".}
proc b2WheelJoint_GetUpperLimit*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetUpperLimit".}
proc b2WheelJoint_SetLimits*(jointId: b2JointId; lower: cfloat; upper: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetLimits".}
proc b2WheelJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.
    cdecl, importc: "b2WheelJoint_EnableMotor".}
proc b2WheelJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2WheelJoint_IsMotorEnabled".}
proc b2WheelJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetMotorSpeed".}
proc b2WheelJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetMotorSpeed".}
proc b2WheelJoint_SetMaxMotorTorque*(jointId: b2JointId; torque: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetMaxMotorTorque".}
proc b2WheelJoint_GetMaxMotorTorque*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetMaxMotorTorque".}
proc b2WheelJoint_GetMotorTorque*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2WheelJoint_GetMotorTorque".}

const b2Vec2_zero*: b2Vec2 = b2Vec2(x: 0.0f, y :0.0f)
const b2Rot_identity*: b2Rot = b2Rot(c: 1.0f, s: 0.0f)
const b2Transform_identity*: b2Transform = b2Transform(p: b2Vec2_zero, q: b2Rot_identity)
const b2Mat22_zero*: b2Mat22 = b2Mat22(cx: b2Vec2_zero, cy: b2Vec2_zero)

const b2_nullWorldId*: b2WorldId = b2WorldId(index1: 0, generation: 0)
const b2_nullBodyId*: b2BodyId = b2BodyId(index1: 0, world0: 0, generation: 0)
const b2_nullShapeId*: b2ShapeId = b2ShapeId(index1: 0, world0: 0, generation: 0)
const b2_nullJointId*: b2JointId = b2JointId(index1: 0, world0: 0, generation: 0)
const b2_nullChainId*: b2ChainId = b2ChainId(index1: 0, world0: 0, generation: 0)
## These are types declared in Box2D header files. They are 
## written with minimal changes, but keyword-only member 
## names are wrapped in backticks to make them safe for Nim.


type
  b2TOIState* {.size: sizeof(cuint).} = enum
    b2_toiStateUnknown = 0, 
    b2_toiStateFailed = 1, 
    b2_toiStateOverlapped = 2,
    b2_toiStateHit = 3, 
    b2_toiStateSeparated = 4

  b2BodyType* {.size: sizeof(cuint).} = enum
    b2_staticBody = 0, 
    b2_kinematicBody = 1, 
    b2_dynamicBody = 2,
    b2_bodyTypeCount = 3

  b2ShapeType* {.size: sizeof(cuint).} = enum
    b2_circleShape = 0, 
    b2_capsuleShape = 1, 
    b2_segmentShape = 2,
    b2_polygonShape = 3, 
    b2_smoothSegmentShape = 4, 
    b2_shapeTypeCount = 5

  b2JointType* {.size: sizeof(cuint).} = enum
    b2_distanceJoint = 0, b2_motorJoint = 1, b2_mouseJoint = 2,
    b2_prismaticJoint = 3, b2_revoluteJoint = 4, b2_weldJoint = 5,
    b2_wheelJoint = 6

  b2HexColor* {.size: sizeof(cuint).} = enum
    b2_colorBlack = 0, b2_colorNavy = 128, b2_colorDarkBlue = 139,
    b2_colorMediumBlue = 205, b2_colorBlue = 255, b2_colorDarkGreen = 25600,
    b2_colorTeal = 32896, b2_colorDarkCyan = 35723, b2_colorDeepSkyBlue = 49151,
    b2_colorDarkTurquoise = 52945, b2_colorMediumSpringGreen = 64154,
    b2_colorGreen = 65280, b2_colorSpringGreen = 65407, b2_colorAqua = 65535,
    b2_colorMidnightBlue = 1644912, b2_colorGray1 = 1710618,
    b2_colorDodgerBlue = 2003199, b2_colorLightSeaGreen = 2142890,
    b2_colorForestGreen = 2263842, b2_colorSeaGreen = 3050327,
    b2_colorDarkSlateGray = 3100495, b2_colorLimeGreen = 3329330,
    b2_colorGray2 = 3355443, b2_colorMediumSeaGreen = 3978097,
    b2_colorTurquoise = 4251856, b2_colorRoyalBlue = 4286945,
    b2_colorSteelBlue = 4620980, b2_colorDarkSlateBlue = 4734347,
    b2_colorMediumTurquoise = 4772300, b2_colorIndigo = 4915330,
    b2_colorGray3 = 5066061, b2_colorDarkOliveGreen = 5597999,
    b2_colorCadetBlue = 6266528, b2_colorCornflowerBlue = 6591981,
    b2_colorRebeccaPurple = 6697881, b2_colorGray4 = 6710886,
    b2_colorMediumAquamarine = 6737322, b2_colorDimGray = 6908265,
    b2_colorSlateBlue = 6970061, b2_colorOliveDrab = 7048739,
    b2_colorSlateGray = 7372944, b2_colorLightSlateGray = 7833753,
    b2_colorMediumSlateBlue = 8087790, b2_colorLawnGreen = 8190976,
    b2_colorGray5 = 8355711, b2_colorChartreuse = 8388352,
    b2_colorAquamarine = 8388564, b2_colorOlive = 8421376,
    b2_colorLightSlateBlue = 8679679, b2_colorSkyBlue = 8900331,
    b2_colorLightSkyBlue = 8900346, b2_colorBlueViolet = 9055202,
    b2_colorDarkRed = 9109504, b2_colorDarkMagenta = 9109643,
    b2_colorSaddleBrown = 9127187, b2_colorDarkSeaGreen = 9419919,
    b2_colorLightGreen = 9498256, b2_colorMediumPurple = 9662683,
    b2_colorDarkViolet = 9699539, b2_colorPaleGreen = 10025880,
    b2_colorDarkOrchid = 10040012, b2_colorGray6 = 10066329,
    b2_colorYellowGreen = 10145074, b2_colorPurple = 10494192,
    b2_colorSienna = 10506797, b2_colorBrown = 10824234,
    b2_colorDarkGray = 11119017, b2_colorLightBlue = 11393254,
    b2_colorGreenYellow = 11403055, b2_colorPaleTurquoise = 11529966,
    b2_colorMaroon = 11546720, b2_colorLightSteelBlue = 11584734,
    b2_colorPowderBlue = 11591910, b2_colorFirebrick = 11674146,
    b2_colorGray7 = 11776947, b2_colorDarkGoldenrod = 12092939,
    b2_colorMediumOrchid = 12211667, b2_colorRosyBrown = 12357519,
    b2_colorDarkKhaki = 12433259, b2_colorGray = 12500670,
    b2_colorSilver = 12632256, b2_colorMediumVioletRed = 13047173,
    b2_colorGray8 = 13421772, b2_colorIndianRed = 13458524,
    b2_colorPeru = 13468991, b2_colorVioletRed = 13639824,
    b2_colorChocolate = 13789470, b2_colorTan = 13808780,
    b2_colorLightGray = 13882323, b2_colorThistle = 14204888,
    b2_colorOrchid = 14315734, b2_colorGoldenrod = 14329120,
    b2_colorPaleVioletRed = 14381203, b2_colorCrimson = 14423100,
    b2_colorGainsboro = 14474460, b2_colorPlum = 14524637,
    b2_colorBurlywood = 14596231, b2_colorLightCyan = 14745599,
    b2_colorGray9 = 15066597, b2_colorLavender = 15132410,
    b2_colorDarkSalmon = 15308410, b2_colorViolet = 15631086,
    b2_colorLightGoldenrod = 15654274, b2_colorPaleGoldenrod = 15657130,
    b2_colorLightCoral = 15761536, b2_colorKhaki = 15787660,
    b2_colorAliceBlue = 15792383, b2_colorHoneydew = 15794160,
    b2_colorAzure = 15794175, b2_colorSandyBrown = 16032864,
    b2_colorWheat = 16113331, b2_colorBeige = 16119260,
    b2_colorWhiteSmoke = 16119285, b2_colorMintCream = 16121850,
    b2_colorGhostWhite = 16316671, b2_colorSalmon = 16416882,
    b2_colorAntiqueWhite = 16444375, b2_colorLinen = 16445670,
    b2_colorLightGoldenrodYellow = 16448210, b2_colorOldLace = 16643558,
    b2_colorRed = 16711680, b2_colorFuchsia = 16711935,
    b2_colorDeepPink = 16716947, b2_colorOrangeRed = 16729344,
    b2_colorTomato = 16737095, b2_colorHotPink = 16738740,
    b2_colorCoral = 16744272, b2_colorDarkOrange = 16747520,
    b2_colorLightSalmon = 16752762, b2_colorOrange = 16753920,
    b2_colorLightPink = 16758465, b2_colorPink = 16761035,
    b2_colorGold = 16766720, b2_colorPeachPuff = 16767673,
    b2_colorNavajoWhite = 16768685, b2_colorMoccasin = 16770229,
    b2_colorBisque = 16770244, b2_colorMistyRose = 16770273,
    b2_colorBlanchedAlmond = 16772045, b2_colorPapayaWhip = 16773077,
    b2_colorLavenderBlush = 16773365, b2_colorSeashell = 16774638,
    b2_colorCornsilk = 16775388, b2_colorLemonChiffon = 16775885,
    b2_colorFloralWhite = 16775920, b2_colorSnow = 16775930,
    b2_colorYellow = 16776960, b2_colorLightYellow = 16777184,
    b2_colorIvory = 16777200, b2_colorWhite = 16777215

  b2BitSet* {.pure, inheritable, bycopy.} = object
    bits*: ptr uint64 
    blockCapacity*: uint32
    blockCount*: uint32

  b2SetItem* {.pure, inheritable, bycopy.} = object
    key*: uint64 
    hash*: uint32

  b2HashSet* {.pure, inheritable, bycopy.} = object
    items*: ptr b2SetItem
    capacity*: uint32
    count*: uint32

  uintptr_t* = culong
  intptr_t* = clong
  int8_t* = cschar
  int16_t* = cshort
  int32_t* = cint
  int64_t* = clong
  intmax_t* = clong
  uint8_t* = uint8
  uint16_t* = cushort
  uint32_t* = cuint
  uint64_t* = culong
  uintmax_t* = culong

  float_t* = cfloat
  double_t* = cdouble
  
  b2AllocFcn* = proc (a0: cuint; a1: cint): pointer {.cdecl.}
  b2FreeFcn* = proc (a0: pointer): void {.cdecl.}
  b2AssertFcn* = proc (a0: cstring; a1: cstring; a2: cint): cint {.cdecl.}

  b2Version* {.pure, inheritable, bycopy.} = object
    major*: cint
    minor*: cint
    revision*: cint

  b2Timer* {.pure, inheritable, bycopy.} = object
    start_sec*: culonglong
    start_usec*: culonglong

  b2Vec2* {.pure, inheritable, bycopy.} = object
    x*: cfloat
    y*: cfloat

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

  b2Circle* {.pure, inheritable, bycopy.} = object
    center*: b2Vec2
    radius*: cfloat

  b2Capsule* {.pure, inheritable, bycopy.} = object
    center1*: b2Vec2
    center2*: b2Vec2
    radius*: cfloat

  b2DistanceCache* {.pure, inheritable, bycopy.} = object
    metric*: cfloat
    count*: uint16
    indexA*: array[3'i64, uint8]
    indexB*: array[3'i64, uint8]

  b2Polygon* {.pure, inheritable, bycopy.} = object
    vertices*: array[8'i64, b2Vec2]
    normals*: array[8'i64, b2Vec2]
    centroid*: b2Vec2
    radius*: cfloat
    count*: int32

  b2Segment* {.pure, inheritable, bycopy.} = object
    point1*: b2Vec2
    point2*: b2Vec2

  b2SmoothSegment* {.pure, inheritable, bycopy.} = object
    ghost1*: b2Vec2
    segment*: b2Segment
    ghost2*: b2Vec2
    chainId*: int32

  b2Hull* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2Vec2]
    count*: int32

  b2RayCastInput* {.pure, inheritable, bycopy.} = object
    origin*: b2Vec2
    translation*: b2Vec2
    maxFraction*: cfloat

  b2ShapeCastInput* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2Vec2]
    count*: int32
    radius*: cfloat
    translation*: b2Vec2
    maxFraction*: cfloat

  b2CastOutput* {.pure, inheritable, bycopy.} = object
    normal*: b2Vec2
    point*: b2Vec2
    fraction*: cfloat
    iterations*: int32
    hit*: bool

  b2MassData* {.pure, inheritable, bycopy.} = object
    mass*: cfloat
    center*: b2Vec2
    I*: cfloat

  b2SegmentDistanceResult* {.pure, inheritable, bycopy.} = object
    closest1*: b2Vec2
    closest2*: b2Vec2
    fraction1*: cfloat
    fraction2*: cfloat
    distanceSquared*: cfloat

  b2DistanceProxy* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2Vec2]
    count*: int32
    radius*: cfloat

  b2DistanceInput* {.pure, inheritable, bycopy.} = object
    proxyA*: b2DistanceProxy
    proxyB*: b2DistanceProxy
    transformA*: b2Transform
    transformB*: b2Transform
    useRadii*: bool

  b2DistanceOutput* {.pure, inheritable, bycopy.} = object
    pointA*: b2Vec2
    pointB*: b2Vec2
    distance*: cfloat
    iterations*: int32

  b2ShapeCastPairInput* {.pure, inheritable, bycopy.} = object
    proxyA*: b2DistanceProxy
    proxyB*: b2DistanceProxy
    transformA*: b2Transform
    transformB*: b2Transform
    translationB*: b2Vec2
    maxFraction*: cfloat

  b2Sweep* {.pure, inheritable, bycopy.} = object
    localCenter*: b2Vec2
    c1*: b2Vec2
    c2*: b2Vec2
    q1*: b2Rot
    q2*: b2Rot

  b2TOIInput* {.pure, inheritable, bycopy.} = object
    proxyA*: b2DistanceProxy
    proxyB*: b2DistanceProxy
    sweepA*: b2Sweep
    sweepB*: b2Sweep
    tMax*: cfloat

  b2TOIOutput* {.pure, inheritable, bycopy.} = object
    state*: b2TOIState
    t*: cfloat

  b2ManifoldPoint* {.pure, inheritable, bycopy.} = object
    point*: b2Vec2
    anchorA*: b2Vec2
    anchorB*: b2Vec2
    separation*: cfloat
    normalImpulse*: cfloat
    tangentImpulse*: cfloat
    maxNormalImpulse*: cfloat
    normalVelocity*: cfloat
    id*: uint16
    persisted*: bool

  b2Manifold* {.pure, inheritable, bycopy.} = object
    points*: array[2'i64, b2ManifoldPoint]
    normal*: b2Vec2
    pointCount*: int32

  b2TreeNode_anon0_t* {.union, bycopy.} = object
    parent*: int32
    next*: int32

  b2TreeNode* {.pure, inheritable, bycopy.} = object
    aabb*: b2AABB
    categoryBits*: uint32
    anon0*: b2TreeNode_anon0_t
    child1*: int32
    child2*: int32
    userData*: int32
    height*: int16
    enlarged*: bool
    pad*: array[9'i64, cschar]

  b2DynamicTree* {.pure, inheritable, bycopy.} = object
    nodes*: ptr b2TreeNode
    root*: int32
    nodeCount*: int32
    nodeCapacity*: int32
    freeList*: int32
    proxyCount*: int32
    leafIndices*: ptr int32
    leafBoxes*: ptr b2AABB
    leafCenters*: ptr b2Vec2
    binIndices*: ptr int32
    rebuildCapacity*: int32

  b2TreeQueryCallbackFcn* = proc (a0: int32; a1: int32; a2: pointer): bool {.
      cdecl.}
  b2TreeRayCastCallbackFcn* = proc (a0: ptr b2RayCastInput; a1: int32;
                                    a2: int32; a3: pointer): cfloat {.cdecl.}
  b2TreeShapeCastCallbackFcn* = proc (a0: ptr b2ShapeCastInput; a1: int32;
                                      a2: int32; a3: pointer): cfloat {.cdecl.}
  b2WorldId* {.pure, inheritable, bycopy.} = object
    index1*: uint16
    revision*: uint16

  b2BodyId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    revision*: uint16

  b2ShapeId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    revision*: uint16

  b2JointId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    revision*: uint16

  b2ChainId* {.pure, inheritable, bycopy.} = object
    index1*: int32
    world0*: uint16
    revision*: uint16

  b2TaskCallback* = proc (a0: int32; a1: int32; a2: uint32; a3: pointer): void {.
      cdecl.}
  b2EnqueueTaskCallback* = proc (a0: b2TaskCallback; a1: int32; a2: int32;
                                 a3: pointer; a4: pointer): pointer {.cdecl.}
  b2FinishTaskCallback* = proc (a0: pointer; a1: pointer): void {.cdecl.}
  b2RayResult* {.pure, inheritable, bycopy.} = object
    shapeId*: b2ShapeId
    point*: b2Vec2
    normal*: b2Vec2
    fraction*: cfloat
    hit*: bool

  b2WorldDef* {.pure, inheritable, bycopy.} = object
    gravity*: b2Vec2
    restitutionThreshold*: cfloat
    contactPushoutVelocity*: cfloat
    hitEventThreshold*: cfloat
    contactHertz*: cfloat
    contactDampingRatio*: cfloat
    jointHertz*: cfloat
    jointDampingRatio*: cfloat
    enableSleep*: bool
    enableContinous*: bool
    workerCount*: int32
    enqueueTask*: b2EnqueueTaskCallback
    finishTask*: b2FinishTaskCallback
    userTaskContext*: pointer
    internalValue*: int32

  b2BodyDef* {.pure, inheritable, bycopy.} = object
    `type`*: b2BodyType
    position*: b2Vec2
    angle*: cfloat
    linearVelocity*: b2Vec2
    angularVelocity*: cfloat
    linearDamping*: cfloat
    angularDamping*: cfloat
    gravityScale*: cfloat
    sleepThreshold*: cfloat
    userData*: pointer
    enableSleep*: bool
    isAwake*: bool
    fixedRotation*: bool
    isBullet*: bool
    isEnabled*: bool
    automaticMass*: bool
    internalValue*: int32

  b2Filter* {.pure, inheritable, bycopy.} = object
    categoryBits*: uint32
    maskBits*: uint32
    groupIndex*: int32

  b2QueryFilter* {.pure, inheritable, bycopy.} = object
    categoryBits*: uint32
    maskBits*: uint32

  b2ShapeDef* {.pure, inheritable, bycopy.} = object
    userData*: pointer
    friction*: cfloat
    restitution*: cfloat
    density*: cfloat
    filter*: b2Filter
    isSensor*: bool
    enableSensorEvents*: bool
    enableContactEvents*: bool
    enableHitEvents*: bool
    enablePreSolveEvents*: bool
    forceContactCreation*: bool
    internalValue*: int32

  b2ChainDef* {.pure, inheritable, bycopy.} = object
    userData*: pointer
    points*: ptr b2Vec2
    count*: int32
    friction*: cfloat
    restitution*: cfloat
    filter*: b2Filter
    isLoop*: bool
    internalValue*: int32

  b2Profile* {.pure, inheritable, bycopy.} = object
    step*: cfloat
    pairs*: cfloat
    collide*: cfloat
    solve*: cfloat
    buildIslands*: cfloat
    solveConstraints*: cfloat
    prepareTasks*: cfloat
    solverTasks*: cfloat
    prepareConstraints*: cfloat
    integrateVelocities*: cfloat
    warmStart*: cfloat
    solveVelocities*: cfloat
    integratePositions*: cfloat
    relaxVelocities*: cfloat
    applyRestitution*: cfloat
    storeImpulses*: cfloat
    finalizeBodies*: cfloat
    splitIslands*: cfloat
    sleepIslands*: cfloat
    hitEvents*: cfloat
    broadphase*: cfloat
    continuous*: cfloat

  b2Counters* {.pure, inheritable, bycopy.} = object
    staticBodyCount*: int32
    bodyCount*: int32
    shapeCount*: int32
    contactCount*: int32
    jointCount*: int32
    islandCount*: int32
    stackUsed*: int32
    staticTreeHeight*: int32
    treeHeight*: int32
    byteCount*: int32
    taskCount*: int32
    colorCounts*: array[12'i64, int32]

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
    internalValue*: int32

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
    internalValue*: int32

  b2MouseJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    target*: b2Vec2
    hertz*: cfloat
    dampingRatio*: cfloat
    maxForce*: cfloat
    collideConnected*: bool
    userData*: pointer
    internalValue*: int32

  b2PrismaticJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    localAxisA*: b2Vec2
    referenceAngle*: cfloat
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
    internalValue*: int32

  b2RevoluteJointDef* {.pure, inheritable, bycopy.} = object
    bodyIdA*: b2BodyId
    bodyIdB*: b2BodyId
    localAnchorA*: b2Vec2
    localAnchorB*: b2Vec2
    referenceAngle*: cfloat
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
    internalValue*: int32

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
    internalValue*: int32

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
    internalValue*: int32

  b2SensorBeginTouchEvent* {.pure, inheritable, bycopy.} = object
    sensorShapeId*: b2ShapeId
    visitorShapeId*: b2ShapeId

  b2SensorEndTouchEvent* {.pure, inheritable, bycopy.} = object
    sensorShapeId*: b2ShapeId
    visitorShapeId*: b2ShapeId

  b2SensorEvents* {.pure, inheritable, bycopy.} = object
    beginEvents*: ptr b2SensorBeginTouchEvent
    endEvents*: ptr b2SensorEndTouchEvent
    beginCount*: int32
    endCount*: int32

  b2ContactBeginTouchEvent* {.pure, inheritable, bycopy.} = object
    shapeIdA*: b2ShapeId
    shapeIdB*: b2ShapeId

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
    beginCount*: int32
    endCount*: int32
    hitCount*: int32

  b2BodyMoveEvent* {.pure, inheritable, bycopy.} = object
    transform*: b2Transform
    bodyId*: b2BodyId
    userData*: pointer
    fellAsleep*: bool

  b2BodyEvents* {.pure, inheritable, bycopy.} = object
    moveEvents*: ptr b2BodyMoveEvent
    moveCount*: int32

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

  b2DebugDraw* {.pure, inheritable, bycopy.} = object
    DrawPolygon*: proc (a0: ptr b2Vec2; a1: cint; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawSolidPolygon*: proc (a0: b2Transform; a1: ptr b2Vec2; a2: cint;
                             a3: cfloat; a4: b2HexColor; a5: pointer): void {.
        cdecl.}
    DrawCircle*: proc (a0: b2Vec2; a1: cfloat; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawSolidCircle*: proc (a0: b2Transform; a1: cfloat; a2: b2HexColor;
                            a3: pointer): void {.cdecl.}
    DrawCapsule*: proc (a0: b2Vec2; a1: b2Vec2; a2: cfloat; a3: b2HexColor;
                        a4: pointer): void {.cdecl.}
    DrawSolidCapsule*: proc (a0: b2Vec2; a1: b2Vec2; a2: cfloat; a3: b2HexColor;
                             a4: pointer): void {.cdecl.}
    DrawSegment*: proc (a0: b2Vec2; a1: b2Vec2; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawTransform*: proc (a0: b2Transform; a1: pointer): void {.cdecl.}
    DrawPoint*: proc (a0: b2Vec2; a1: cfloat; a2: b2HexColor; a3: pointer): void {.
        cdecl.}
    DrawString*: proc (a0: b2Vec2; a1: cstring; a2: pointer): void {.cdecl.}
    drawingBounds*: b2AABB
    useDrawingBounds*: bool
    drawShapes*: bool
    drawJoints*: bool
    drawJointExtras*: bool
    drawAABBs*: bool
    drawMass*: bool
    drawContacts*: bool
    drawGraphColors*: bool
    drawContactNormals*: bool
    drawContactImpulses*: bool
    drawFrictionImpulses*: bool
    context*: pointer

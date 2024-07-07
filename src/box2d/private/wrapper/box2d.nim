## This is all declared structs, enums, and functions from box2c/include/box2d header files.

import ../compile
ensureCompiled()

type
    b2TOIState* {.size: sizeof(cuint).} = enum
        b2_toiStateUnknown = 0, b2_toiStateFailed = 1, b2_toiStateOverlapped = 2,
        b2_toiStateHit = 3, b2_toiStateSeparated = 4

    b2BodyType* {.size: sizeof(cuint).} = enum
        b2_staticBody = 0, b2_kinematicBody = 1, b2_dynamicBody = 2,
        b2_bodyTypeCount = 3

    b2ShapeType* {.size: sizeof(cuint).} = enum
        b2_circleShape = 0, b2_capsuleShape = 1, b2_segmentShape = 2,
        b2_polygonShape = 3, b2_smoothSegmentShape = 4, b2_shapeTypeCount = 5

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

    b2AllocFcn* = proc (a0: cuint; a1: cint): pointer {.cdecl.} ## Generated based on box2c/include/box2d/base.h:48:15
    b2FreeFcn* = proc (a0: pointer): void {.cdecl.} ## Generated based on box2c/include/box2d/base.h:52:14
    b2AssertFcn* = proc (a0: cstring; a1: cstring; a2: cint): cint {.cdecl.} ## Generated based on box2c/include/box2d/base.h:55:13
    
    b2Version* {.pure, inheritable, bycopy.} = object
        major*: cint             ## Generated based on box2c/include/box2d/base.h:70:16
        minor*: cint
        revision*: cint

    b2Timer* {.pure, inheritable, bycopy.} = object
        start_sec*: culonglong   ## Generated based on box2c/include/box2d/base.h:89:16
        start_usec*: culonglong

    b2Vec2* {.pure, inheritable, bycopy.} = object
        x*: cfloat               ## Generated based on box2c/include/box2d/math_functions.h:22:16
        y*: cfloat

    b2Rot* {.pure, inheritable, bycopy.} = object
        c*: cfloat               ## Generated based on box2c/include/box2d/math_functions.h:30:16
        s*: cfloat

    b2Transform* {.pure, inheritable, bycopy.} = object
        p*: b2Vec2               ## Generated based on box2c/include/box2d/math_functions.h:37:16
        q*: b2Rot

    b2Mat22* {.pure, inheritable, bycopy.} = object
        cx*: b2Vec2              ## Generated based on box2c/include/box2d/math_functions.h:44:16
        cy*: b2Vec2

    b2AABB* {.pure, inheritable, bycopy.} = object
        lowerBound*: b2Vec2      ## Generated based on box2c/include/box2d/math_functions.h:51:16
        upperBound*: b2Vec2

    b2Circle* {.pure, inheritable, bycopy.} = object
        center*: b2Vec2          ## Generated based on box2c/include/box2d/collision.h:99:16
        radius*: cfloat

    b2Capsule* {.pure, inheritable, bycopy.} = object
        center1*: b2Vec2         ## Generated based on box2c/include/box2d/collision.h:110:16
        center2*: b2Vec2
        radius*: cfloat

    b2DistanceCache* {.pure, inheritable, bycopy.} = object
        metric*: cfloat          ## Generated based on box2c/include/box2d/collision.h:327:16
        count*: uint16
        indexA*: array[3'i64, uint8]
        indexB*: array[3'i64, uint8]

    b2Polygon* {.pure, inheritable, bycopy.} = object
        vertices*: array[8'i64, b2Vec2] ## Generated based on box2c/include/box2d/collision.h:128:16
        normals*: array[8'i64, b2Vec2]
        centroid*: b2Vec2
        radius*: cfloat
        count*: int32

    b2Segment* {.pure, inheritable, bycopy.} = object
        point1*: b2Vec2          ## Generated based on box2c/include/box2d/collision.h:147:16
        point2*: b2Vec2

    b2SmoothSegment* {.pure, inheritable, bycopy.} = object
        ghost1*: b2Vec2          ## Generated based on box2c/include/box2d/collision.h:159:16
        segment*: b2Segment
        ghost2*: b2Vec2
        chainId*: int32

    b2Hull* {.pure, inheritable, bycopy.} = object
        points*: array[8'i64, b2Vec2] ## Generated based on box2c/include/box2d/collision.h:254:16
        count*: int32

    b2RayCastInput* {.pure, inheritable, bycopy.} = object
        origin*: b2Vec2          ## Generated based on box2c/include/box2d/collision.h:33:16
        translation*: b2Vec2
        maxFraction*: cfloat

    b2ShapeCastInput* {.pure, inheritable, bycopy.} = object
        points*: array[8'i64, b2Vec2] ## Generated based on box2c/include/box2d/collision.h:48:16
        count*: int32
        radius*: cfloat
        translation*: b2Vec2
        maxFraction*: cfloat

    b2CastOutput* {.pure, inheritable, bycopy.} = object
        normal*: b2Vec2          ## Generated based on box2c/include/box2d/collision.h:67:16
        point*: b2Vec2
        fraction*: cfloat
        iterations*: int32
        hit*: bool
    
    b2MassData* {.pure, inheritable, bycopy.} = object
        mass*: cfloat            ## Generated based on box2c/include/box2d/collision.h:86:16
        center*: b2Vec2
        I*: cfloat

    b2SegmentDistanceResult* {.pure, inheritable, bycopy.} = object
        closest1*: b2Vec2        ## Generated based on box2c/include/box2d/collision.h:291:16
        closest2*: b2Vec2
        fraction1*: cfloat
        fraction2*: cfloat
        distanceSquared*: cfloat

    b2DistanceProxy* {.pure, inheritable, bycopy.} = object
        points*: array[8'i64, b2Vec2] ## Generated based on box2c/include/box2d/collision.h:313:16
        count*: int32
        radius*: cfloat

    b2DistanceInput* {.pure, inheritable, bycopy.} = object
        proxyA*: b2DistanceProxy ## Generated based on box2c/include/box2d/collision.h:345:16
        proxyB*: b2DistanceProxy
        transformA*: b2Transform
        transformB*: b2Transform
        useRadii*: bool

    b2DistanceOutput* {.pure, inheritable, bycopy.} = object
        pointA*: b2Vec2          ## Generated based on box2c/include/box2d/collision.h:364:16
        pointB*: b2Vec2
        distance*: cfloat
        iterations*: int32

    b2ShapeCastPairInput* {.pure, inheritable, bycopy.} = object
        proxyA*: b2DistanceProxy ## Generated based on box2c/include/box2d/collision.h:378:16
        proxyB*: b2DistanceProxy
        transformA*: b2Transform
        transformB*: b2Transform
        translationB*: b2Vec2
        maxFraction*: cfloat

    b2Sweep* {.pure, inheritable, bycopy.} = object
        localCenter*: b2Vec2     ## Generated based on box2c/include/box2d/collision.h:397:16
        c1*: b2Vec2
        c2*: b2Vec2
        q1*: b2Rot
        q2*: b2Rot

    b2TOIInput* {.pure, inheritable, bycopy.} = object
        proxyA*: b2DistanceProxy ## Generated based on box2c/include/box2d/collision.h:410:16
        proxyB*: b2DistanceProxy
        sweepA*: b2Sweep
        sweepB*: b2Sweep
        tMax*: cfloat

    b2TOIOutput* {.pure, inheritable, bycopy.} = object
        state*: b2TOIState       ## Generated based on box2c/include/box2d/collision.h:430:16
        t*: cfloat

    b2ManifoldPoint* {.pure, inheritable, bycopy.} = object
        point*: b2Vec2           ## Generated based on box2c/include/box2d/collision.h:453:16
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
        points*: array[2'i64, b2ManifoldPoint] ## Generated based on box2c/include/box2d/collision.h:491:16
        normal*: b2Vec2
        pointCount*: int32

    struct_b2TreeNode_anon0_t* {.union, bycopy.} = object
        parent*: int32
        next*: int32

    b2TreeNode* {.pure, inheritable, bycopy.} = object
        aabb*: b2AABB            ## Generated based on box2c/include/box2d/collision.h:578:16
        categoryBits*: uint32
        anon0*: struct_b2TreeNode_anon0_t
        child1*: int32
        child2*: int32
        userData*: int32
        height*: int16
        enlarged*: bool
        pad*: array[9'i64, cschar]

    b2DynamicTree* {.pure, inheritable, bycopy.} = object
        nodes*: ptr b2TreeNode   ## Generated based on box2c/include/box2d/collision.h:617:16
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

    b2TreeQueryCallbackFcn* = proc (a0: int32; a1: int32; a2: pointer): bool {.cdecl.}
    b2TreeRayCastCallbackFcn* = proc (a0: ptr b2RayCastInput; a1: int32;
        a2: int32; a3: pointer): cfloat {.cdecl.} ## Generated based on box2c/include/box2d/collision.h:685:15
    b2TreeShapeCastCallbackFcn* = proc (a0: ptr b2ShapeCastInput; a1: int32;
            a2: int32; a3: pointer): cfloat {.cdecl.} ## Generated based on box2c/include/box2d/collision.h:706:15
    
    b2WorldId* {.pure, inheritable, bycopy.} = object
        index1*: uint16          ## Generated based on box2c/include/box2d/id.h:36:16
        revision*: uint16

    b2BodyId* {.pure, inheritable, bycopy.} = object
        index1*: int32           ## Generated based on box2c/include/box2d/id.h:43:16
        world0*: uint16
        revision*: uint16

    b2ShapeId* {.pure, inheritable, bycopy.} = object
        index1*: int32           ## Generated based on box2c/include/box2d/id.h:51:16
        world0*: uint16
        revision*: uint16

    b2JointId* {.pure, inheritable, bycopy.} = object
        index1*: int32           ## Generated based on box2c/include/box2d/id.h:59:16
        world0*: uint16
        revision*: uint16

    b2ChainId* {.pure, inheritable, bycopy.} = object
        index1*: int32           ## Generated based on box2c/include/box2d/id.h:67:16
        world0*: uint16
        revision*: uint16

    b2TaskCallback* = proc (a0: int32; a1: int32; a2: uint32; a3: pointer): void {.cdecl.} ## Generated based on box2c/include/box2d/types.h:30:14
    b2EnqueueTaskCallback* = proc (a0: b2TaskCallback; a1: int32; a2: int32;
        a3: pointer; a4: pointer): pointer {.cdecl.} ## Generated based on box2c/include/box2d/types.h:43:15
    b2FinishTaskCallback* = proc (a0: pointer; a1: pointer): void {.cdecl.} ## Generated based on box2c/include/box2d/types.h:48:14
    
    b2RayResult* {.pure, inheritable, bycopy.} = object
        shapeId*: b2ShapeId      ## Generated based on box2c/include/box2d/types.h:52:16
        point*: b2Vec2
        normal*: b2Vec2
        fraction*: cfloat
        hit*: bool
    
    b2WorldDef* {.pure, inheritable, bycopy.} = object
        gravity*: b2Vec2         ## Generated based on box2c/include/box2d/types.h:64:16
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
        `type`*: b2BodyType  ## Generated based on box2c/include/box2d/types.h:142:16
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
        categoryBits*: uint32    ## Generated based on box2c/include/box2d/types.h:216:16
        maskBits*: uint32
        groupIndex*: int32

    b2QueryFilter* {.pure, inheritable, bycopy.} = object
        categoryBits*: uint32    ## Generated based on box2c/include/box2d/types.h:258:16
        maskBits*: uint32

    b2ShapeDef* {.pure, inheritable, bycopy.} = object
        userData*: pointer       ## Generated based on box2c/include/box2d/types.h:300:16
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
        userData*: pointer       ## Generated based on box2c/include/box2d/types.h:361:16
        points*: ptr b2Vec2
        count*: int32
        friction*: cfloat
        restitution*: cfloat
        filter*: b2Filter
        isLoop*: bool
        internalValue*: int32

    b2Profile* {.pure, inheritable, bycopy.} = object
        step*: cfloat            ## Generated based on box2c/include/box2d/types.h:394:16
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
        staticBodyCount*: int32  ## Generated based on box2c/include/box2d/types.h:421:16
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
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:461:16
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
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:524:16
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
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:566:16
        bodyIdB*: b2BodyId
        target*: b2Vec2
        hertz*: cfloat
        dampingRatio*: cfloat
        maxForce*: cfloat
        collideConnected*: bool
        userData*: pointer
        internalValue*: int32

    b2PrismaticJointDef* {.pure, inheritable, bycopy.} = object
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:607:16
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
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:680:16
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
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:748:16
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
        bodyIdA*: b2BodyId       ## Generated based on box2c/include/box2d/types.h:798:16
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
        sensorShapeId*: b2ShapeId ## Generated based on box2c/include/box2d/types.h:874:16
        visitorShapeId*: b2ShapeId

    b2SensorEndTouchEvent* {.pure, inheritable, bycopy.} = object
        sensorShapeId*: b2ShapeId ## Generated based on box2c/include/box2d/types.h:884:16
        visitorShapeId*: b2ShapeId

    b2SensorEvents* {.pure, inheritable, bycopy.} = object
        beginEvents*: ptr b2SensorBeginTouchEvent ## Generated based on box2c/include/box2d/types.h:896:16
        endEvents*: ptr b2SensorEndTouchEvent
        beginCount*: int32
        endCount*: int32

    b2ContactBeginTouchEvent* {.pure, inheritable, bycopy.} = object
        shapeIdA*: b2ShapeId     ## Generated based on box2c/include/box2d/types.h:912:16
        shapeIdB*: b2ShapeId

    b2ContactEndTouchEvent* {.pure, inheritable, bycopy.} = object
        shapeIdA*: b2ShapeId     ## Generated based on box2c/include/box2d/types.h:922:16
        shapeIdB*: b2ShapeId

    b2ContactHitEvent* {.pure, inheritable, bycopy.} = object
        shapeIdA*: b2ShapeId     ## Generated based on box2c/include/box2d/types.h:932:16
        shapeIdB*: b2ShapeId
        point*: b2Vec2
        normal*: b2Vec2
        approachSpeed*: cfloat

    b2ContactEvents* {.pure, inheritable, bycopy.} = object
        beginEvents*: ptr b2ContactBeginTouchEvent ## Generated based on box2c/include/box2d/types.h:953:16
        endEvents*: ptr b2ContactEndTouchEvent
        hitEvents*: ptr b2ContactHitEvent
        beginCount*: int32
        endCount*: int32
        hitCount*: int32

    b2BodyMoveEvent* {.pure, inheritable, bycopy.} = object
        transform*: b2Transform  ## Generated based on box2c/include/box2d/types.h:984:16
        bodyId*: b2BodyId
        userData*: pointer
        fellAsleep*: bool

    b2BodyEvents* {.pure, inheritable, bycopy.} = object
        moveEvents*: ptr b2BodyMoveEvent ## Generated based on box2c/include/box2d/types.h:995:16
        moveCount*: int32

    b2ContactData* {.pure, inheritable, bycopy.} = object
        shapeIdA*: b2ShapeId     ## Generated based on box2c/include/box2d/types.h:1007:16
        shapeIdB*: b2ShapeId
        manifold*: b2Manifold

    
    b2CustomFilterFcn* = proc (a0: b2ShapeId; a1: b2ShapeId; a2: pointer): bool {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1027:14
    b2PreSolveFcn* = proc (a0: b2ShapeId; a1: b2ShapeId; a2: ptr b2Manifold;
    a3: pointer): bool {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1042:14
    b2OverlapResultFcn* = proc (a0: b2ShapeId; a1: pointer): bool {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1049:14
    b2CastResultFcn* = proc (a0: b2ShapeId; a1: b2Vec2; a2: b2Vec2; a3: cfloat;
    a4: pointer): cfloat {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1066:15
    
    b2DebugDraw* {.pure, inheritable, bycopy.} = object
        DrawPolygon*: proc (a0: ptr b2Vec2; a1: cint; a2: b2HexColor; a3: pointer): void {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1229:16
        DrawSolidPolygon*: proc (a0: b2Transform; a1: ptr b2Vec2; a2: cint;
        a3: cfloat; a4: b2HexColor; a5: pointer): void {.cdecl.}
        DrawCircle*: proc (a0: b2Vec2; a1: cfloat; a2: b2HexColor; a3: pointer): void {.cdecl.}
        DrawSolidCircle*: proc (a0: b2Transform; a1: cfloat; a2: b2HexColor;
        a3: pointer): void {.cdecl.}
        DrawCapsule*: proc (a0: b2Vec2; a1: b2Vec2; a2: cfloat; a3: b2HexColor;
        a4: pointer): void {.cdecl.}
        DrawSolidCapsule*: proc (a0: b2Vec2; a1: b2Vec2; a2: cfloat; a3: b2HexColor;
        a4: pointer): void {.cdecl.}
        DrawSegment*: proc (a0: b2Vec2; a1: b2Vec2; a2: b2HexColor; a3: pointer): void {.cdecl.}
        DrawTransform*: proc (a0: b2Transform; a1: pointer): void {.cdecl.}
        DrawPoint*: proc (a0: b2Vec2; a1: cfloat; a2: b2HexColor; a3: pointer): void {.cdecl.}
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

proc b2SetAllocator*(allocFcn: b2AllocFcn; freeFcn: b2FreeFcn): void {.cdecl,
    importc: "b2SetAllocator".}

proc b2GetByteCount*(): cint {.cdecl, importc: "b2GetByteCount".}

proc b2SetAssertFcn*(assertFcn: b2AssertFcn): void {.cdecl,
    importc: "b2SetAssertFcn".}

proc b2GetVersion*(): b2Version {.cdecl, importc: "b2GetVersion".}

proc b2CreateTimer*(): b2Timer {.cdecl, importc: "b2CreateTimer".}

proc b2GetTicks*(timer: ptr b2Timer): int64 {.cdecl, importc: "b2GetTicks".}

proc b2GetMilliseconds*(timer: ptr b2Timer): cfloat {.cdecl,
    importc: "b2GetMilliseconds".}

proc b2GetMillisecondsAndReset*(timer: ptr b2Timer): cfloat {.cdecl,
    importc: "b2GetMillisecondsAndReset".}

proc b2SleepMilliseconds*(milliseconds: cint): void {.cdecl,
    importc: "b2SleepMilliseconds".}

proc b2Yield*(): void {.cdecl, importc: "b2Yield".}

proc b2IsValid*(a: cfloat): bool {.cdecl, importc: "b2IsValid".}

proc b2Vec2_IsValid*(v: b2Vec2): bool {.cdecl, importc: "b2Vec2_IsValid".}

proc b2Rot_IsValid*(q: b2Rot): bool {.cdecl, importc: "b2Rot_IsValid".}

proc b2AABB_IsValid*(aabb: b2AABB): bool {.cdecl, importc: "b2AABB_IsValid".}

proc b2Normalize*(v: b2Vec2): b2Vec2 {.cdecl, importc: "b2Normalize".}

proc b2NormalizeChecked*(v: b2Vec2): b2Vec2 {.cdecl,
    importc: "b2NormalizeChecked".}

proc b2GetLengthAndNormalize*(length: ptr cfloat; v: b2Vec2): b2Vec2 {.cdecl,
    importc: "b2GetLengthAndNormalize".}

proc b2SetLengthUnitsPerMeter*(lengthUnits: cfloat): void {.cdecl,
    importc: "b2SetLengthUnitsPerMeter".}

proc b2GetLengthUnitsPerMeter*(): cfloat {.cdecl,
    importc: "b2GetLengthUnitsPerMeter".}

proc b2IsValidRay*(input: ptr b2RayCastInput): bool {.cdecl,
    importc: "b2IsValidRay".}

proc b2MakePolygon*(hull: ptr b2Hull; radius: cfloat): b2Polygon {.cdecl,
    importc: "b2MakePolygon".}

proc b2MakeOffsetPolygon*(hull: ptr b2Hull; radius: cfloat;
                          transform: b2Transform): b2Polygon {.cdecl,
    importc: "b2MakeOffsetPolygon".}

proc b2MakeSquare*(h: cfloat): b2Polygon {.cdecl, importc: "b2MakeSquare".}

proc b2MakeBox*(hx: cfloat; hy: cfloat): b2Polygon {.cdecl, importc: "b2MakeBox".}

proc b2MakeRoundedBox*(hx: cfloat; hy: cfloat; radius: cfloat): b2Polygon {.
    cdecl, importc: "b2MakeRoundedBox".}

proc b2MakeOffsetBox*(hx: cfloat; hy: cfloat; center: b2Vec2; angle: cfloat): b2Polygon {.
    cdecl, importc: "b2MakeOffsetBox".}

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

proc b2ComputeHull*(points: ptr b2Vec2; count: int32): b2Hull {.cdecl,
    importc: "b2ComputeHull".}

proc b2ValidateHull*(hull: ptr b2Hull): bool {.cdecl, importc: "b2ValidateHull".}

proc b2SegmentDistance*(p1: b2Vec2; q1: b2Vec2; p2: b2Vec2; q2: b2Vec2): b2SegmentDistanceResult {.
    cdecl, importc: "b2SegmentDistance".}

proc b2ShapeDistance*(cache: ptr b2DistanceCache; input: ptr b2DistanceInput): b2DistanceOutput {.
    cdecl, importc: "b2ShapeDistance".}

proc b2ShapeCast*(input: ptr b2ShapeCastPairInput): b2CastOutput {.cdecl,
    importc: "b2ShapeCast".}

proc b2MakeProxy*(vertices: ptr b2Vec2; count: int32; radius: cfloat): b2DistanceProxy {.
    cdecl, importc: "b2MakeProxy".}

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
                        capsuleB: ptr b2Capsule; xfB: b2Transform;
                        cache: ptr b2DistanceCache): b2Manifold {.cdecl,
    importc: "b2CollideCapsules".}

proc b2CollideSegmentAndCapsule*(segmentA: ptr b2Segment; xfA: b2Transform;
                                 capsuleB: ptr b2Capsule; xfB: b2Transform;
                                 cache: ptr b2DistanceCache): b2Manifold {.
    cdecl, importc: "b2CollideSegmentAndCapsule".}

proc b2CollidePolygonAndCapsule*(polygonA: ptr b2Polygon; xfA: b2Transform;
                                 capsuleB: ptr b2Capsule; xfB: b2Transform;
                                 cache: ptr b2DistanceCache): b2Manifold {.
    cdecl, importc: "b2CollidePolygonAndCapsule".}

proc b2CollidePolygons*(polyA: ptr b2Polygon; xfA: b2Transform;
                        polyB: ptr b2Polygon; xfB: b2Transform;
                        cache: ptr b2DistanceCache): b2Manifold {.cdecl,
    importc: "b2CollidePolygons".}

proc b2CollideSegmentAndPolygon*(segmentA: ptr b2Segment; xfA: b2Transform;
                                 polygonB: ptr b2Polygon; xfB: b2Transform;
                                 cache: ptr b2DistanceCache): b2Manifold {.
    cdecl, importc: "b2CollideSegmentAndPolygon".}

proc b2CollideSmoothSegmentAndCircle*(smoothSegmentA: ptr b2SmoothSegment;
                                      xfA: b2Transform; circleB: ptr b2Circle;
                                      xfB: b2Transform): b2Manifold {.cdecl,
    importc: "b2CollideSmoothSegmentAndCircle".}

proc b2CollideSmoothSegmentAndCapsule*(smoothSegmentA: ptr b2SmoothSegment;
                                       xfA: b2Transform;
                                       capsuleB: ptr b2Capsule;
                                       xfB: b2Transform;
                                       cache: ptr b2DistanceCache): b2Manifold {.
    cdecl, importc: "b2CollideSmoothSegmentAndCapsule".}

proc b2CollideSmoothSegmentAndPolygon*(smoothSegmentA: ptr b2SmoothSegment;
                                       xfA: b2Transform;
                                       polygonB: ptr b2Polygon;
                                       xfB: b2Transform;
                                       cache: ptr b2DistanceCache): b2Manifold {.
    cdecl, importc: "b2CollideSmoothSegmentAndPolygon".}

proc b2DynamicTree_Create*(): b2DynamicTree {.cdecl,
    importc: "b2DynamicTree_Create".}

proc b2DynamicTree_Destroy*(tree: ptr b2DynamicTree): void {.cdecl,
    importc: "b2DynamicTree_Destroy".}

proc b2DynamicTree_CreateProxy*(tree: ptr b2DynamicTree; aabb: b2AABB;
                                categoryBits: uint32; userData: int32): int32 {.
    cdecl, importc: "b2DynamicTree_CreateProxy".}

proc b2DynamicTree_DestroyProxy*(tree: ptr b2DynamicTree; proxyId: int32): void {.
    cdecl, importc: "b2DynamicTree_DestroyProxy".}

proc b2DynamicTree_MoveProxy*(tree: ptr b2DynamicTree; proxyId: int32;
                              aabb: b2AABB): void {.cdecl,
    importc: "b2DynamicTree_MoveProxy".}

proc b2DynamicTree_EnlargeProxy*(tree: ptr b2DynamicTree; proxyId: int32;
                                 aabb: b2AABB): void {.cdecl,
    importc: "b2DynamicTree_EnlargeProxy".}

proc b2DynamicTree_Query*(tree: ptr b2DynamicTree; aabb: b2AABB;
                          maskBits: uint32; callback: b2TreeQueryCallbackFcn;
                          context: pointer): void {.cdecl,
    importc: "b2DynamicTree_Query".}

proc b2DynamicTree_RayCast*(tree: ptr b2DynamicTree; input: ptr b2RayCastInput;
                            maskBits: uint32;
                            callback: b2TreeRayCastCallbackFcn; context: pointer): void {.
    cdecl, importc: "b2DynamicTree_RayCast".}

proc b2DynamicTree_ShapeCast*(tree: ptr b2DynamicTree;
                              input: ptr b2ShapeCastInput; maskBits: uint32;
                              callback: b2TreeShapeCastCallbackFcn;
                              context: pointer): void {.cdecl,
    importc: "b2DynamicTree_ShapeCast".}

proc b2DynamicTree_Validate*(tree: ptr b2DynamicTree): void {.cdecl,
    importc: "b2DynamicTree_Validate".}

proc b2DynamicTree_GetHeight*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetHeight".}

proc b2DynamicTree_GetMaxBalance*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetMaxBalance".}

proc b2DynamicTree_GetAreaRatio*(tree: ptr b2DynamicTree): cfloat {.cdecl,
    importc: "b2DynamicTree_GetAreaRatio".}

proc b2DynamicTree_RebuildBottomUp*(tree: ptr b2DynamicTree): void {.cdecl,
    importc: "b2DynamicTree_RebuildBottomUp".}

proc b2DynamicTree_GetProxyCount*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetProxyCount".}

proc b2DynamicTree_Rebuild*(tree: ptr b2DynamicTree; fullBuild: bool): cint {.
    cdecl, importc: "b2DynamicTree_Rebuild".}

proc b2DynamicTree_ShiftOrigin*(tree: ptr b2DynamicTree; newOrigin: b2Vec2): void {.
    cdecl, importc: "b2DynamicTree_ShiftOrigin".}

proc b2DynamicTree_GetByteCount*(tree: ptr b2DynamicTree): cint {.cdecl,
    importc: "b2DynamicTree_GetByteCount".}

proc b2DefaultWorldDef*(): b2WorldDef {.cdecl, importc: "b2DefaultWorldDef".}

proc b2DefaultBodyDef*(): b2BodyDef {.cdecl, importc: "b2DefaultBodyDef".}

proc b2DefaultFilter*(): b2Filter {.cdecl, importc: "b2DefaultFilter".}

proc b2DefaultQueryFilter*(): b2QueryFilter {.cdecl,
    importc: "b2DefaultQueryFilter".}

proc b2DefaultShapeDef*(): b2ShapeDef {.cdecl, importc: "b2DefaultShapeDef".}

proc b2DefaultChainDef*(): b2ChainDef {.cdecl, importc: "b2DefaultChainDef".}

proc b2DefaultDistanceJointDef*(): b2DistanceJointDef {.cdecl,
    importc: "b2DefaultDistanceJointDef".}

proc b2DefaultMotorJointDef*(): b2MotorJointDef {.cdecl,
    importc: "b2DefaultMotorJointDef".}

proc b2DefaultMouseJointDef*(): b2MouseJointDef {.cdecl,
    importc: "b2DefaultMouseJointDef".}

proc b2DefaultPrismaticJointDef*(): b2PrismaticJointDef {.cdecl,
    importc: "b2DefaultPrismaticJointDef".}

proc b2DefaultRevoluteJointDef*(): b2RevoluteJointDef {.cdecl,
    importc: "b2DefaultRevoluteJointDef".}

proc b2DefaultWeldJointDef*(): b2WeldJointDef {.cdecl,
    importc: "b2DefaultWeldJointDef".}

proc b2DefaultWheelJointDef*(): b2WheelJointDef {.cdecl,
    importc: "b2DefaultWheelJointDef".}

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
                          context: pointer): void {.cdecl,
    importc: "b2World_OverlapAABB".}

proc b2World_OverlapCircle*(worldId: b2WorldId; circle: ptr b2Circle;
                            transform: b2Transform; filter: b2QueryFilter;
                            fcn: b2OverlapResultFcn; context: pointer): void {.
    cdecl, importc: "b2World_OverlapCircle".}

proc b2World_OverlapCapsule*(worldId: b2WorldId; capsule: ptr b2Capsule;
                             transform: b2Transform; filter: b2QueryFilter;
                             fcn: b2OverlapResultFcn; context: pointer): void {.
    cdecl, importc: "b2World_OverlapCapsule".}

proc b2World_OverlapPolygon*(worldId: b2WorldId; polygon: ptr b2Polygon;
                             transform: b2Transform; filter: b2QueryFilter;
                             fcn: b2OverlapResultFcn; context: pointer): void {.
    cdecl, importc: "b2World_OverlapPolygon".}

proc b2World_CastRay*(worldId: b2WorldId; origin: b2Vec2; translation: b2Vec2;
                      filter: b2QueryFilter; fcn: b2CastResultFcn;
                      context: pointer): void {.cdecl,
    importc: "b2World_CastRay".}

proc b2World_CastRayClosest*(worldId: b2WorldId; origin: b2Vec2;
                             translation: b2Vec2; filter: b2QueryFilter): b2RayResult {.
    cdecl, importc: "b2World_CastRayClosest".}

proc b2World_CastCircle*(worldId: b2WorldId; circle: ptr b2Circle;
                         originTransform: b2Transform; translation: b2Vec2;
                         filter: b2QueryFilter; fcn: b2CastResultFcn;
                         context: pointer): void {.cdecl,
    importc: "b2World_CastCircle".}

proc b2World_CastCapsule*(worldId: b2WorldId; capsule: ptr b2Capsule;
                          originTransform: b2Transform; translation: b2Vec2;
                          filter: b2QueryFilter; fcn: b2CastResultFcn;
                          context: pointer): void {.cdecl,
    importc: "b2World_CastCapsule".}

proc b2World_CastPolygon*(worldId: b2WorldId; polygon: ptr b2Polygon;
                          originTransform: b2Transform; translation: b2Vec2;
                          filter: b2QueryFilter; fcn: b2CastResultFcn;
                          context: pointer): void {.cdecl,
    importc: "b2World_CastPolygon".}

proc b2World_EnableSleeping*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableSleeping".}

proc b2World_EnableContinuous*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableContinuous".}

proc b2World_SetRestitutionThreshold*(worldId: b2WorldId; value: cfloat): void {.
    cdecl, importc: "b2World_SetRestitutionThreshold".}

proc b2World_SetHitEventThreshold*(worldId: b2WorldId; value: cfloat): void {.
    cdecl, importc: "b2World_SetHitEventThreshold".}

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

proc b2World_Explode*(worldId: b2WorldId; position: b2Vec2; radius: cfloat;
                      impulse: cfloat): void {.cdecl, importc: "b2World_Explode".}

proc b2World_SetContactTuning*(worldId: b2WorldId; hertz: cfloat;
                               dampingRatio: cfloat; pushVelocity: cfloat): void {.
    cdecl, importc: "b2World_SetContactTuning".}

proc b2World_EnableWarmStarting*(worldId: b2WorldId; flag: bool): void {.cdecl,
    importc: "b2World_EnableWarmStarting".}

proc b2World_GetProfile*(worldId: b2WorldId): b2Profile {.cdecl,
    importc: "b2World_GetProfile".}

proc b2World_GetCounters*(worldId: b2WorldId): b2Counters {.cdecl,
    importc: "b2World_GetCounters".}

proc b2World_DumpMemoryStats*(worldId: b2WorldId): void {.cdecl,
    importc: "b2World_DumpMemoryStats".}

proc b2CreateBody*(worldId: b2WorldId; def: ptr b2BodyDef): b2BodyId {.cdecl,
    importc: "b2CreateBody".}

proc b2DestroyBody*(bodyId: b2BodyId): void {.cdecl, importc: "b2DestroyBody".}

proc b2Body_IsValid*(id: b2BodyId): bool {.cdecl, importc: "b2Body_IsValid".}

proc b2Body_GetType*(bodyId: b2BodyId): b2BodyType {.cdecl,
    importc: "b2Body_GetType".}

proc b2Body_SetType*(bodyId: b2BodyId; `type`: b2BodyType): void {.cdecl,
    importc: "b2Body_SetType".}

proc b2Body_SetUserData*(bodyId: b2BodyId; userData: pointer): void {.cdecl,
    importc: "b2Body_SetUserData".}

proc b2Body_GetUserData*(bodyId: b2BodyId): pointer {.cdecl,
    importc: "b2Body_GetUserData".}

proc b2Body_GetPosition*(bodyId: b2BodyId): b2Vec2 {.cdecl,
    importc: "b2Body_GetPosition".}

proc b2Body_GetRotation*(bodyId: b2BodyId): b2Rot {.cdecl,
    importc: "b2Body_GetRotation".}

proc b2Body_GetAngle*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetAngle".}

proc b2Body_GetTransform*(bodyId: b2BodyId): b2Transform {.cdecl,
    importc: "b2Body_GetTransform".}

proc b2Body_SetTransform*(bodyId: b2BodyId; position: b2Vec2; angle: cfloat): void {.
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

proc b2Body_GetInertiaTensor*(bodyId: b2BodyId): cfloat {.cdecl,
    importc: "b2Body_GetInertiaTensor".}

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

proc b2Body_SetAutomaticMass*(bodyId: b2BodyId; automaticMass: bool): void {.
    cdecl, importc: "b2Body_SetAutomaticMass".}

proc b2Body_GetAutomaticMass*(bodyId: b2BodyId): bool {.cdecl,
    importc: "b2Body_GetAutomaticMass".}

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

proc b2Body_SetSleepThreshold*(bodyId: b2BodyId; sleepVelocity: cfloat): void {.
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

proc b2Body_EnableHitEvents*(bodyId: b2BodyId; enableHitEvents: bool): void {.
    cdecl, importc: "b2Body_EnableHitEvents".}

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

proc b2DestroyShape*(shapeId: b2ShapeId): void {.cdecl,
    importc: "b2DestroyShape".}

proc b2Shape_IsValid*(id: b2ShapeId): bool {.cdecl, importc: "b2Shape_IsValid".}

proc b2Shape_GetType*(shapeId: b2ShapeId): b2ShapeType {.cdecl,
    importc: "b2Shape_GetType".}

proc b2Shape_GetBody*(shapeId: b2ShapeId): b2BodyId {.cdecl,
    importc: "b2Shape_GetBody".}

proc b2Shape_IsSensor*(shapeId: b2ShapeId): bool {.cdecl,
    importc: "b2Shape_IsSensor".}

proc b2Shape_SetUserData*(shapeId: b2ShapeId; userData: pointer): void {.cdecl,
    importc: "b2Shape_SetUserData".}

proc b2Shape_GetUserData*(shapeId: b2ShapeId): pointer {.cdecl,
    importc: "b2Shape_GetUserData".}

proc b2Shape_SetDensity*(shapeId: b2ShapeId; density: cfloat): void {.cdecl,
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

proc b2Shape_RayCast*(shapeId: b2ShapeId; origin: b2Vec2; translation: b2Vec2): b2CastOutput {.
    cdecl, importc: "b2Shape_RayCast".}

proc b2Shape_GetCircle*(shapeId: b2ShapeId): b2Circle {.cdecl,
    importc: "b2Shape_GetCircle".}

proc b2Shape_GetSegment*(shapeId: b2ShapeId): b2Segment {.cdecl,
    importc: "b2Shape_GetSegment".}

proc b2Shape_GetSmoothSegment*(shapeId: b2ShapeId): b2SmoothSegment {.cdecl,
    importc: "b2Shape_GetSmoothSegment".}

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

proc b2Shape_GetAABB*(shapeId: b2ShapeId): b2AABB {.cdecl,
    importc: "b2Shape_GetAABB".}

proc b2Shape_GetClosestPoint*(shapeId: b2ShapeId; target: b2Vec2): b2Vec2 {.
    cdecl, importc: "b2Shape_GetClosestPoint".}

proc b2CreateChain*(bodyId: b2BodyId; def: ptr b2ChainDef): b2ChainId {.cdecl,
    importc: "b2CreateChain".}

proc b2DestroyChain*(chainId: b2ChainId): void {.cdecl,
    importc: "b2DestroyChain".}

proc b2Chain_SetFriction*(chainId: b2ChainId; friction: cfloat): void {.cdecl,
    importc: "b2Chain_SetFriction".}

proc b2Chain_SetRestitution*(chainId: b2ChainId; restitution: cfloat): void {.
    cdecl, importc: "b2Chain_SetRestitution".}

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

proc b2Joint_GetLocalAnchorA*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2Joint_GetLocalAnchorA".}

proc b2Joint_GetLocalAnchorB*(jointId: b2JointId): b2Vec2 {.cdecl,
    importc: "b2Joint_GetLocalAnchorB".}

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

proc b2DistanceJoint_GetHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetHertz".}

proc b2DistanceJoint_GetDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetDampingRatio".}

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

proc b2CreateRevoluteJoint*(worldId: b2WorldId; def: ptr b2RevoluteJointDef): b2JointId {.
    cdecl, importc: "b2CreateRevoluteJoint".}

proc b2RevoluteJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableSpring".}

proc b2RevoluteJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl,
    importc: "b2RevoluteJoint_IsLimitEnabled".}

proc b2RevoluteJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetSpringHertz".}

proc b2RevoluteJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetSpringHertz".}

proc b2RevoluteJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetSpringDampingRatio".}

proc b2RevoluteJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetSpringDampingRatio".}

proc b2RevoluteJoint_GetAngle*(jointId: b2JointId): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetAngle".}

proc b2RevoluteJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableLimit".}

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

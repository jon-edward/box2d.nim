## All declared members from box2c/include/box2d header files.
## 


when not defined(nimdoc):
    import private/compile
    ensureCompiled()


when not defined(b2TOIState):
    type b2TOIState* {.size: sizeof(cuint).} = enum
        ## Describes the TOI output
        
        b2_toiStateUnknown = 0, 
        b2_toiStateFailed = 1, 
        b2_toiStateOverlapped = 2,
        b2_toiStateHit = 3, 
        b2_toiStateSeparated = 4


when not defined(b2BodyType):
    type b2BodyType* {.size: sizeof(cuint).} = enum
        ## The body simulation type.
        ## 
        ## Each body is one of these three types. The type determines how the body behaves in the simulation.
        
        b2_staticBody = 0, 
        b2_kinematicBody = 1, 
        b2_dynamicBody = 2,
        b2_bodyTypeCount = 3


when not defined(b2ShapeType):
    type b2ShapeType* {.size: sizeof(cuint).} = enum
        ## Shape type.
        
        b2_circleShape = 0, 
        b2_capsuleShape = 1, 
        b2_segmentShape = 2,
        b2_polygonShape = 3, 
        b2_smoothSegmentShape = 4, 
        b2_shapeTypeCount = 5


when not defined(b2JointType):
    type b2JointType* {.size: sizeof(cuint).} = enum
        ## Joint type enumeration
        ##
        ## This is useful because all joint types use b2JointId and sometimes you
        ## want to get the type of a joint.
        
        b2_distanceJoint = 0, 
        b2_motorJoint = 1, 
        b2_mouseJoint = 2,
        b2_prismaticJoint = 3, 
        b2_revoluteJoint = 4, 
        b2_weldJoint = 5,
        b2_wheelJoint = 6


when not defined(b2HexColor):
    type b2HexColor* {.size: sizeof(cuint).} = enum
        ## These colors are used for debug draw.
        
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


when not defined(b2AllocFcn):
    type b2AllocFcn* = proc (size: cuint; alignment: cint): pointer {.cdecl.}
        ## Prototype for user allocation function


when not defined(b2FreeFcn):
    type b2FreeFcn* = proc (mem: pointer): void {.cdecl.} 
        ## Prototype for user free function


when not defined(b2AssertFcn):
    type b2AssertFcn* = proc (condition: cstring; fileName: cstring; lineNumber: cint): cint {.cdecl.} 
        ## Prototype for the user assert callback. Return 0 to skip the debugger break.


when not defined(b2Version):
    type b2Version* {.pure, inheritable, bycopy.} = object
        ## Version numbering scheme.
        ## 
        ## See https://semver.org/
        
        major*: cint        
        ## Significant changes
        
        minor*: cint        
        ## Incremental changes
        
        revision*: cint     
        ## Bug fixes


when not defined(b2Timer):
    type b2Timer* {.pure, inheritable, bycopy.} = object
        ## Timer for profiling. This has platform specific code and may not work on every platform.
        
        start_sec*: culonglong
        start_usec*: culonglong


when not defined(b2Vec2):
    type b2Vec2* {.pure, inheritable, bycopy.} = object
        ## 2D vector
        ## 
        ## This can be used to represent a point or free vector
        
        x*, y*: cfloat  
        ## coordinates


when not defined(b2Rot):
    type b2Rot* {.pure, inheritable, bycopy.} = object
        ## 2D rotation
        ## 
        ## This is similar to using a complex number for rotation
        
        c*, s*: cfloat  
        ## cosine and sine


when not defined(b2Transform):
    type b2Transform* {.pure, inheritable, bycopy.} = object
        ## A 2D rigid transform
        
        p*: b2Vec2
        q*: b2Rot


when not defined(b2Mat22):
    type b2Mat22* {.pure, inheritable, bycopy.} = object
        ## A 2-by-2 Matrix
        
        cx*, cy*: b2Vec2    
        ## columns


when not defined(b2AABB):
    type b2AABB* {.pure, inheritable, bycopy.} = object
        ## Axis-aligned bounding box
        
        lowerBound*: b2Vec2 
        upperBound*: b2Vec2


when not defined(b2Circle):
    type b2Circle* {.pure, inheritable, bycopy.} = object
        ## A solid circle
        
        center*: b2Vec2     
        ## The local center
        
        radius*: cfloat     
        ## The radius


when not defined(b2Capsule):
    type b2Capsule* {.pure, inheritable, bycopy.} = object
        ## A solid capsule can be viewed as two semicircles connected
        ## by a rectangle.
        
        center1*: b2Vec2    
        ## Local center of the first semicircle
        
        center2*: b2Vec2    
        ## Local center of the second semicircle
        
        radius*: cfloat     
        ## The radius of the semicircles


when not defined(b2DistanceCache):
    type b2DistanceCache* {.pure, inheritable, bycopy.} = object
        ## Used to warm start b2Distance. Set count to zero on first call or
        ## use zero initialization.
        
        metric*: cfloat                 
        ## Length or area
        
        count*: uint16                  
        ## The number of stored simplex points
        
        indexA*: array[3'i64, uint8]    
        ## The cached simplex indices on shape A
        
        indexB*: array[3'i64, uint8]    
        ## The cached simplex indices on shape B


when not defined(b2Polygon):
    type b2Polygon* {.pure, inheritable, bycopy.} = object
        ## A solid convex polygon. It is assumed that the interior of the polygon is to
        ## the left of each edge.
        ## 
        ## Polygons have a maximum number of vertices equal to b2_maxPolygonVertices.
        ## 
        ## In most cases you should not need many vertices for a convex polygon.
        ## 
        ## .. warning:: 
        ##  DO NOT fill this out manually, instead use a helper function like 
        ##  b2MakePolygon or b2MakeBox.
        
        vertices*: array[8'i64, b2Vec2]     
        ## The polygon vertices
        
        normals*: array[8'i64, b2Vec2]      
        ## The outward normal vectors of the polygon sides
        
        centroid*: b2Vec2                   
        ## The centroid of the polygon
        
        radius*: cfloat                     
        ## The external radius for rounded polygons
        
        count*: int32                       
        ## The number of polygon vertices


when not defined(b2Segment):
    type b2Segment* {.pure, inheritable, bycopy.} = object
        ## A line segment with two-sided collision.
        
        point1*: b2Vec2     
        ## The first point
        
        point2*: b2Vec2     
        ## The second point


when not defined(b2SmoothSegment):
    type b2SmoothSegment* {.pure, inheritable, bycopy.} = object
        ## A smooth line segment with one-sided collision. Only collides on the right side.
        ## 
        ## Several of these are generated for a chain shape.
        ## 
        ## ``ghost1 -> point1 -> point2 -> ghost2``
        
        ghost1*: b2Vec2         
        ## The tail ghost vertex
        
        segment*: b2Segment     
        ## The line segment
        
        ghost2*: b2Vec2         
        ## The head ghost vertex
        
        chainId*: int32         
        ## The owning chain shape index (internal usage only)


when not defined(b2Hull):
    type b2Hull* {.pure, inheritable, bycopy.} = object
        ## A convex hull. Used to create convex polygons.
        
        points*: array[8'i64, b2Vec2]   
        ## The final points of the hull
        
        count*: int32                   
        ## The number of points


when not defined(b2RayCastInput):
    type b2RayCastInput* {.pure, inheritable, bycopy.} = object
        ## Low level ray-cast input data
        
        origin*: b2Vec2         
        ## Start point of the ray cast
        
        translation*: b2Vec2    
        ## Translation of the ray cast
        
        maxFraction*: cfloat    
        ## The maximum fraction of the translation to consider, typically 1


when not defined(b2ShapeCastInput):
    type b2ShapeCastInput* {.pure, inheritable, bycopy.} = object
        ## Low level shape cast input in generic form. This allows casting an arbitrary point
        ## cloud wrap with a radius. For example, a circle is a single point with a non-zero radius.
        ## 
        ## A capsule is two points with a non-zero radius. A box is four points with a zero radius.
        
        points*: array[8'i64, b2Vec2]   
        ## A point cloud to cast
        
        count*: int32                   
        ## The number of points
        
        radius*: cfloat                 
        ## The radius around the point cloud
        
        translation*: b2Vec2            
        ## The translation of the shape cast
        
        maxFraction*: cfloat            
        ## The maximum fraction of the translation to consider, typically 1


when not defined(b2CastOutput):
    type b2CastOutput* {.pure, inheritable, bycopy.} = object
        ## Low level ray-cast or shape-cast output data
        
        normal*: b2Vec2     
        ## The surface normal at the hit point
        
        point*: b2Vec2      
        ## The surface hit point
        
        fraction*: cfloat   
        ## The fraction of the input translation at collision
        
        iterations*: int32  
        ## The number of iterations used
        
        hit*: bool          
        ## Did the cast hit?


when not defined(b2MassData):
    type b2MassData* {.pure, inheritable, bycopy.} = object
        ## This holds the mass data computed for a shape.
        
        mass*: cfloat       
        ## The mass of the shape, usually in kilograms.
        
        center*: b2Vec2     
        ## The position of the shape's centroid relative to the shape's origin.
        
        I*: cfloat          
        ## The rotational inertia of the shape about the local origin.


when not defined(b2SegmentDistanceResult):
    type b2SegmentDistanceResult* {.pure, inheritable, bycopy.} = object
        ## Result of computing the distance between two line segments
        
        closest1*: b2Vec2           
        ## The closest point on the first segment
        
        closest2*: b2Vec2           
        ## The closest point on the second segment
        
        fraction1*: cfloat          
        ## The barycentric coordinate on the first segment
        
        fraction2*: cfloat          
        ## The barycentric coordinate on the second segment
        
        distanceSquared*: cfloat    
        ## The squared distance between the closest points


when not defined(b2DistanceProxy):
    type b2DistanceProxy* {.pure, inheritable, bycopy.} = object
        ## A distance proxy is used by the GJK algorithm. It encapsulates any shape.
        
        points*: array[8'i64, b2Vec2]   
        ## The point cloud
        
        count*: int32                   
        ## The number of points
        
        radius*: cfloat                 
        ## The external radius of the point cloud


when not defined(b2DistanceInput):
    type b2DistanceInput* {.pure, inheritable, bycopy.} = object
        ## Input for b2Distance
        
        proxyA*: b2DistanceProxy    
        ## The proxy for shape A
        
        proxyB*: b2DistanceProxy    
        ## The proxy for shape B
        
        transformA*: b2Transform    
        ## The world transform for shape A
        
        transformB*: b2Transform    
        ## The world transform for shape B
        
        useRadii*: bool             
        ## Should the proxy radius be considered?


when not defined(b2DistanceOutput):
    type b2DistanceOutput* {.pure, inheritable, bycopy.} = object
        ## Output for b2Distance
        
        pointA*: b2Vec2     
        ## Closest point on shape A
        
        pointB*: b2Vec2     
        ## Closest point on shape B
        
        distance*: cfloat   
        ## The final distance, zero if overlapped
        
        iterations*: int32  
        ## Number of GJK iterations used


when not defined(b2ShapeCastPairInput):
    type b2ShapeCastPairInput* {.pure, inheritable, bycopy.} = object
        ## Input parameters for b2ShapeCast
        
        proxyA*: b2DistanceProxy    
        ## The proxy for shape A
        
        proxyB*: b2DistanceProxy    
        ## The proxy for shape B
        
        transformA*: b2Transform    
        ## The world transform for shape A
        
        transformB*: b2Transform    
        ## The world transform for shape B
        
        translationB*: b2Vec2       
        ## The translation of shape B
        
        maxFraction*: cfloat        
        ## The fraction of the translation to consider, typically 1


when not defined(b2Sweep):
    type b2Sweep* {.pure, inheritable, bycopy.} = object
        ## This describes the motion of a body/shape for TOI computation. Shapes are defined with respect to the body origin,
        ## which may not coincide with the center of mass. However, to support dynamics we must interpolate the center of mass
        ## position.
        
        localCenter*: b2Vec2    
        ## Local center of the mass position
        
        c1*: b2Vec2             
        ## Starting center of mass world position
        
        c2*: b2Vec2             
        ## Ending center of mass world position
        
        q1*: b2Rot              
        ## Starting world rotation
        
        q2*: b2Rot              
        ## Ending world rotation


when not defined(b2TOIInput):
    type b2TOIInput* {.pure, inheritable, bycopy.} = object
        ## Input parameters for b2TimeOfImpact
        
        proxyA*: b2DistanceProxy    
        ## The proxy for shape A
        
        proxyB*: b2DistanceProxy    
        ## The proxy for shape B
        
        sweepA*: b2Sweep            
        ## The movement of shape A
        
        sweepB*: b2Sweep            
        ## The movement of shape B
        
        tMax*: cfloat               
        ## Defines the sweep interval [0, tMax]


when not defined(b2TOIOutput):
    type b2TOIOutput* {.pure, inheritable, bycopy.} = object
        ## Output parameters for b2TimeOfImpact.
        
        state*: b2TOIState  
        ## The type of result
        
        t*: cfloat          
        ## The time of the collision


when not defined(b2ManifoldPoint):
    type b2ManifoldPoint* {.pure, inheritable, bycopy.} = object
        ## A manifold point is a contact point belonging to a contact
        ## manifold. It holds details related to the geometry and dynamics
        ## of the contact points.
        
        point*: b2Vec2              
        ## Location of the contact point in world space. Subject to precision loss at large coordinates.
        
        anchorA*: b2Vec2            
        ## Location of the contact point relative to body A's origin in world space
        
        anchorB*: b2Vec2            
        ## Location of the contact point relative to body B's origin in world space
        
        separation*: cfloat         
        ## The separation of the contact point, negative if penetrating
        
        normalImpulse*: cfloat      
        ## The impulse along the manifold normal vector
        
        tangentImpulse*: cfloat     
        ## The friction impulse
        
        maxNormalImpulse*: cfloat   
        ## The maximum normal impulse applied during sub-stepping
        
        normalVelocity*: cfloat     
        ## Relative normal velocity pre-solve. Used for hit events. If the normal impulse is
        ## zero then there was no hit. Negative means shapes are approaching.
        
        id*: uint16                 
        ## Uniquely identifies a contact point between two shapes
        
        persisted*: bool            
        ## Did this contact point exist the previous step?


when not defined(b2Manifold):
    type b2Manifold* {.pure, inheritable, bycopy.} = object
        ## A contact manifold describes the contact points between colliding shapes
        
        points*: array[2'i64, b2ManifoldPoint]  
        ## The manifold points, up to two are possible in 2D
        
        normal*: b2Vec2                         
        ## The unit normal vector in world space, points from shape A to body B
        
        pointCount*: int32                      
        ## The number of contacts points, will be 0, 1, or 2


when not defined(b2WorldId):
    type b2WorldId* {.pure, inheritable, bycopy.} = object
        ## World id references a world instance. This should be treated as an opaque handle.
        
        index1*: uint16
        revision*: uint16


when not defined(b2BodyId):
    type b2BodyId* {.pure, inheritable, bycopy.} = object
        ## Body id references a body instance. This should be treated as an opaque handle.
        
        index1*: int32 
        world0*: uint16
        revision*: uint16


when not defined(b2ShapeId):
    type b2ShapeId* {.pure, inheritable, bycopy.} = object
        ## Shape id references a shape instance. This should be treated as an opaque handle.
        
        index1*: int32 
        world0*: uint16
        revision*: uint16


when not defined(b2JointId):
    type b2JointId* {.pure, inheritable, bycopy.} = object
        ## Joint id references a joint instance. This should be treated as an opaque handle.
        
        index1*: int32 
        world0*: uint16
        revision*: uint16


when not defined(b2ChainId):
    type b2ChainId* {.pure, inheritable, bycopy.} = object
        ## Chain id references a chain instances. This should be treated as an opaque handle.
        
        index1*: int32 
        world0*: uint16
        revision*: uint16


when not defined(b2TaskCallback):
    type b2TaskCallback* = proc (startIndex: int32; endIndex: int32; workerIndex: uint32; taskContext: pointer): void {.cdecl.}
        ## This is prototype for a Box2D task. Your task system is expected to invoke the Box2D task with these arguments.
        ## 
        ## The task spans a range of the parallel-for: [startIndex, endIndex)
        ## 
        ## The worker index must correctly identify each worker in the user thread pool, expected in [0, workerCount).
        ## 
        ## A worker must only exist on only one thread at a time and is analogous to the thread index.
        ## 
        ## The task context is the context pointer sent from Box2D when it is enqueued.
        ## 
        ## The startIndex and endIndex are expected in the range [0, itemCount) where itemCount is the argument to b2EnqueueTaskCallback
        ## below. Box2D expects startIndex < endIndex and will execute a loop like this:
        ## 
        ## ```
        ## for i in startIndex..<endIndex:
        ##   DoWork()
        ## ```


when not defined(b2EnqueueTaskCallback):
    type b2EnqueueTaskCallback* = proc (task: b2TaskCallback; itemCount: int32; minRange: int32;
        taskContext: pointer; userContext: pointer): pointer {.cdecl.} 
        ## These functions can be provided to Box2D to invoke a task system. These are designed to work well with enkiTS.
        ## 
        ## Returns a pointer to the user's task object. May be nullptr. A nullptr indicates to Box2D that the work was executed
        ## serially within the callback and there is no need to call b2FinishTaskCallback.
        ## 
        ## The itemCount is the number of Box2D work items that are to be partitioned among workers by the user's task system.
        ## 
        ## This is essentially a parallel-for. The minRange parameter is a suggestion of the minimum number of items to assign
        ## per worker to reduce overhead. For example, suppose the task is small and that itemCount is 16. A minRange of 8 suggests
        ## that your task system should split the work items among just two workers, even if you have more available.
        ## In general the range [startIndex, endIndex) send to b2TaskCallback should obey:
        ## 
        ## ``endIndex - startIndex >= minRange``
        ## 
        ## The exception of course is when itemCount < minRange.


when not defined(b2FinishTaskCallback):
    type b2FinishTaskCallback* = proc (userTask: pointer; userContext: pointer): void {.cdecl.} 
        ## Finishes a user task object that wraps a Box2D task.


when not defined(b2RayResult):
    type b2RayResult* {.pure, inheritable, bycopy.} = object
        ## Result from b2World_RayCastClosest
        
        shapeId*: b2ShapeId 
        point*: b2Vec2
        normal*: b2Vec2
        fraction*: cfloat
        hit*: bool


when not defined(b2WorldDef):
    type b2WorldDef* {.pure, inheritable, bycopy.} = object
        ## World definition used to create a simulation world.
        ## 
        ## Must be initialized using `b2DefaultWorldDef`_.
        
        gravity*: b2Vec2                    
        ## Gravity vector. Box2D has no up-vector defined.
        
        restitutionThreshold*: cfloat       
        ## Restitution velocity threshold, usually in m/s. Collisions above this                                    
        ## speed have restitution applied (will bounce).
        
        contactPushoutVelocity*: cfloat     
        ## This parameter controls how fast overlap is resolved and has units of meters per second
        
        hitEventThreshold*: cfloat          
        ## Threshold velocity for hit events. Usually meters per second.
        
        contactHertz*: cfloat               
        ## Contact stiffness. Cycles per second.
        
        contactDampingRatio*: cfloat        
        ## Contact bounciness. Non-dimensional.
        
        jointHertz*: cfloat                 
        ## Joint stiffness. Cycles per second.
        
        jointDampingRatio*: cfloat          
        ## Joint bounciness. Non-dimensional.
        
        enableSleep*: bool                  
        ## Can bodies go to sleep to improve performance
        
        enableContinous*: bool              
        ## Enable continuous collision
        
        workerCount*: int32                 
        ## Number of workers to use with the provided task system. Box2D performs best when using only
        ## performance cores and accessing a single L2 cache. Efficiency cores and hyper-threading provide
        ## little benefit and may even harm performance.
        
        enqueueTask*: b2EnqueueTaskCallback 
        ## Function to spawn tasks
        
        finishTask*: b2FinishTaskCallback   
        ## Function to finish a task
        
        userTaskContext*: pointer           
        ## User context that is provided to enqueueTask and finishTask
        
        internalValue: int32


when not defined(b2BodyDef):
    type b2BodyDef* {.pure, inheritable, bycopy.} = object
        ## A body definition holds all the data needed to construct a rigid body.
        ## 
        ## You can safely re-use body definitions. Shapes are added to a body after construction.
        ## 
        ## Body definitions are temporary objects used to bundle creation parameters.
        ## 
        ## Must be initialized using `b2DefaultBodyDef`_.
        
        bodyType*: b2BodyType         
        ## The body type: static, kinematic, or dynamic.
        
        position*: b2Vec2           
        ## The initial world position of the body. Bodies should be created with the desired position.
        
        angle*: cfloat              
        ## The initial world angle of the body in radians.
        
        linearVelocity*: b2Vec2     
        ## The initial linear velocity of the body's origin. Typically in meters per second.
        
        angularVelocity*: cfloat    
        ## The initial angular velocity of the body. Typically in meters per second.
        
        linearDamping*: cfloat      
        ## Linear damping is use to reduce the linear velocity. The damping parameter
        ## can be larger than 1 but the damping effect becomes sensitive to the
        ## time step when the damping parameter is large.
        ## 
        ## Generally linear damping is undesirable because it makes objects move slowly
        ## as if they are floating.
        
        angularDamping*: cfloat     
        ## Angular damping is use to reduce the angular velocity. The damping parameter
        ## can be larger than 1.0f but the damping effect becomes sensitive to the
        ## time step when the damping parameter is large.
        ## 
        ## Angular damping can be used to slow down rotating bodies.
        
        gravityScale*: cfloat       
        ## Scale the gravity applied to this body. Non-dimensional.
        
        sleepThreshold*: cfloat     
        ## Sleep velocity threshold, default is 0.05 meter per second
        
        userData*: pointer          
        ## Use this to store application specific body data.
        
        enableSleep*: bool          
        ## Set this flag to false if this body should never fall asleep.
        
        isAwake*: bool              
        ## Is this body initially awake or sleeping?
        
        fixedRotation*: bool        
        ## Should this body be prevented from rotating? Useful for characters.
        
        isBullet*: bool             
        ## Treat this body as high speed object that performs continuous collision detection
        ## against dynamic and kinematic bodies, but not other bullet bodies. 
        ## 
        ## Should be used sparingly.
        
        isEnabled*: bool            
        ## Used to disable a body. A disabled body does not move or collide.
        
        automaticMass*: bool        
        ## Automatically compute mass and related properties on this body from shapes.
        ## 
        ## Triggers whenever a shape is add/removed/changed. Default is true.
        
        internalValue: int32


when not defined(b2Filter):
    type b2Filter* {.pure, inheritable, bycopy.} = object
        ## This is used to filter collision on shapes. It affects shape-vs-shape collision
        ## and shape-versus-query collision (such as `b2World_CastRay`_).
        
        categoryBits*: uint32   
        ## The collision category bits. Normally you would just set one bit. The category bits should
        ## represent your application object types.
        
        maskBits*: uint32
        ## The collision mask bits. This states the categories that this
        ## shape would accept for collision.
        ## 
        ## For example, you may want your player to only collide with static objects
        ## and other players.
        
        groupIndex*: int32      
        ## Collision groups allow a certain group of objects to never collide (negative)
        ## or always collide (positive). A group index of zero has no effect. Non-zero group filtering
        ## always wins against the mask bits.
        ## 
        ## For example, you may want ragdolls to collide with other ragdolls but you don't want
        ## ragdoll self-collision. In this case you would give each ragdoll a unique negative group index
        ## and apply that group index to all shapes on the ragdoll.


when not defined(b2QueryFilter):
    type b2QueryFilter* {.pure, inheritable, bycopy.} = object
        ## The query filter is used to filter collisions between queries and shapes. For example,
        ## you may want a ray-cast representing a projectile to hit players and the static environment
        ## but not debris.
        
        categoryBits*: uint32   
        ## The collision category bits of this query. Normally you would just set one bit.
        
        maskBits*: uint32       
        ## The collision mask bits. This states the shape categories that this
        ## query would accept for collision.


when not defined(b2ShapeDef):
    type b2ShapeDef* {.pure, inheritable, bycopy.} = object
        ## Used to create a shape.
        ## 
        ## This is a temporary object used to bundle shape creation parameters. You may use
        ## the same shape definition to create multiple shapes.
        ## 
        ## Must be initialized using `b2DefaultShapeDef`_.
        
        userData*: pointer          
        ## Use this to store application specific shape data.
        
        friction*: cfloat           
        ## The Coulomb (dry) friction coefficient, usually in the range [0,1].
        
        restitution*: cfloat        
        ## The restitution (bounce) usually in the range [0,1].
        
        density*: cfloat            
        ## The density, usually in kg/m^2.
        
        filter*: b2Filter           
        ## Collision filtering data.
        
        isSensor*: bool             
        ## A sensor shape generates overlap events but never generates a collision response.
        
        enableSensorEvents*: bool   
        ## Enable sensor events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors.
        
        enableContactEvents*: bool  
        ## Enable contact events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors.
        
        enableHitEvents*: bool      
        ## Enable hit events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors.
        
        enablePreSolveEvents*: bool 
        ## Enable pre-solve contact events for this shape. Only applies to dynamic bodies. These are expensive
        ## and must be carefully handled due to threading. Ignored for sensors.
        
        forceContactCreation*: bool 
        ## Normally shapes on static bodies don't invoke contact creation when they are added to the world. This overrides
        ## that behavior and causes contact creation. This significantly slows down static body creation which can be important
        ## when there are many static shapes.
        
        internalValue: int32  


when not defined(b2ChainDef):
    type b2ChainDef* {.pure, inheritable, bycopy.} = object
        ## Used to create a chain of edges. This is designed to eliminate ghost collisions with some limitations.
        ## - chains are one-sided
        ## - chains have no mass and should be used on static bodies
        ## - chains have a counter-clockwise winding order
        ## - chains are either a loop or open
        ## - a chain must have at least 4 points
        ## - the distance between any two points must be greater than b2_linearSlop
        ## - a chain shape should not self intersect (this is not validated)
        ## - an open chain shape has NO COLLISION on the first and final edge
        ## - you may overlap two open chains on their first three and/or last three points to get smooth collision
        ## - a chain shape creates multiple smooth edges shapes on the body
        ## 
        ## https://en.wikipedia.org/wiki/Polygonal_chain
        ## 
        ## Must be initialized using `b2DefaultChainDef`_.
        ## 
        ## .. warning:: Do not use chain shapes unless you understand the limitations.
        
        userData*: pointer
        ## Use this to store application specific shape data.
        
        points*: ptr b2Vec2
        ## An array of at least 4 points. These are cloned and may be temporary.
        
        count*: int32
        ## The point count, must be 4 or more.
        
        friction*: cfloat
        ## The friction coefficient, usually in the range [0,1].
        
        restitution*: cfloat
        ## The restitution (elasticity) usually in the range [0,1].
        
        filter*: b2Filter
        ## Contact filtering data.
        
        isLoop*: bool
        ## Indicates a closed chain formed by connecting the first and last points
        
        internalValue: int32


when not defined(b2Profile):
    type b2Profile* {.pure, inheritable, bycopy.} = object
        ## Profiling data. Times are in milliseconds.
        
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


when not defined(b2Counters):
    type b2Counters* {.pure, inheritable, bycopy.} = object
        ## Counters that give details of the simulation size.
        
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


when not defined(b2DistanceJointDef):
    type b2DistanceJointDef* {.pure, inheritable, bycopy.} = object
        ## Distance joint definition
        ## 
        ## This requires defining an anchor point on both
        ## bodies and the non-zero distance of the distance joint. The definition uses
        ## local anchor points so that the initial configuration can violate the
        ## constraint slightly. This helps when saving and loading a game.
        
        bodyIdA*: b2BodyId 
        ## The first attached body
        
        bodyIdB*: b2BodyId
        ## The second attached body
        
        localAnchorA*: b2Vec2
        ## The local anchor point relative to body A's origin
        
        localAnchorB*: b2Vec2
        ## The local anchor point relative to body B's origin
        
        length*: cfloat
        ## The rest length of this joint. Clamped to a stable minimum value.
        
        enableSpring*: bool
        ## Enable the distance constraint to behave like a spring. If false
        ## then the distance joint will be rigid, overriding the limit and motor.
        
        hertz*: cfloat
        ## The spring linear stiffness Hertz, cycles per second
        
        dampingRatio*: cfloat
        ## The spring linear damping ratio, non-dimensional
        
        enableLimit*: bool
        ## Enable/disable the joint limit
        
        minLength*: cfloat
        ## Minimum length. Clamped to a stable minimum value.
        
        maxLength*: cfloat
        ## Maximum length. Must be greater than or equal to the minimum length.

        enableMotor*: bool
        ## Enable/disable the joint motor

        maxMotorForce*: cfloat
        ## The maximum motor force, usually in newtons

        motorSpeed*: cfloat
        ## The desired motor speed, usually in meters per second

        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide

        userData*: pointer
        ## User data pointer

        internalValue: int32


when not defined(b2MotorJointDef):
    type b2MotorJointDef* {.pure, inheritable, bycopy.} = object
        ## A motor joint is used to control the relative motion between two bodies
        ## 
        ## A typical usage is to control the movement of a dynamic body with respect to the ground.
        
        bodyIdA*: b2BodyId 
        ## The first attached body
        
        bodyIdB*: b2BodyId
        ## The second attached body
        
        linearOffset*: b2Vec2
        ## Position of body B minus the position of body A, in body A's frame
        
        angularOffset*: cfloat
        ## The body B angle minus body A angle in radians
        
        maxForce*: cfloat
        ## The maximum motor force in newtons
        
        maxTorque*: cfloat
        ## The maximum motor torque in newton-meters
        
        correctionFactor*: cfloat
        ## Position correction factor in the range [0,1]
        
        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide
        
        userData*: pointer
        ## User data pointer

        internalValue: int32


when not defined(b2MouseJointDef):
    type b2MouseJointDef* {.pure, inheritable, bycopy.} = object
        ## A mouse joint is used to make a point on a body track a specified world point.
        ## 
        ## This a soft constraint and allows the constraint to stretch without
        ## applying huge forces. This also applies rotation constraint heuristic to improve control.
        
        bodyIdA*: b2BodyId
        ## The first attached body.

        bodyIdB*: b2BodyId
        ## The second attached body.

        target*: b2Vec2
        ## The initial target point in world space
        
        hertz*: cfloat
        ## Stiffness in hertz
        
        dampingRatio*: cfloat
        ## Damping ratio, non-dimensional
        
        maxForce*: cfloat
        ## Maximum force, typically in newtons
        
        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide.
        
        userData*: pointer
        ## User data pointer
        
        internalValue: int32


when not defined(b2PrismaticJointDef):
    type b2PrismaticJointDef* {.pure, inheritable, bycopy.} = object
        ## Prismatic joint definition
        ## 
        ## This requires defining a line of motion using an axis and an anchor point.
        ## 
        ## The definition uses local anchor points and a local axis so that the initial
        ## configuration can violate the constraint slightly. The joint translation is zero
        ## when the local anchor points coincide in world space.
        
        bodyIdA*: b2BodyId 
        ## The first attached body
        
        bodyIdB*: b2BodyId
        ## The second attached body
        
        localAnchorA*: b2Vec2
        ## The local anchor point relative to body A's origin
        
        localAnchorB*: b2Vec2
        ## The local anchor point relative to body B's origin
        
        localAxisA*: b2Vec2
        ## The local translation unit axis in bodyA
        
        referenceAngle*: cfloat
        ## The constrained angle between the bodies: body B angle - body A angle
        
        enableSpring*: bool
        ## Enable a linear spring along the prismatic joint axis
        
        hertz*: cfloat
        ## The spring stiffness Hertz, cycles per second
        
        dampingRatio*: cfloat
        ## The spring damping ratio, non-dimensional
        
        enableLimit*: bool
        ## Enable/disable the joint limit
        
        lowerTranslation*: cfloat
        ## The lower translation limit
        
        upperTranslation*: cfloat
        ## The upper translation limit
        
        enableMotor*: bool
        ## Enable/disable the joint motor
        
        maxMotorForce*: cfloat
        ## The maximum motor force, typically in newtons
        
        motorSpeed*: cfloat
        ## The desired motor speed, typically in meters per second
        
        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide
        
        userData*: pointer
        ## User data pointer
        
        internalValue: int32


when not defined(b2RevoluteJointDef):
    type b2RevoluteJointDef* {.pure, inheritable, bycopy.} = object
        ## Revolute joint definition
        ## 
        ## This requires defining an anchor point where the bodies are joined.
        ## 
        ## The definition uses local anchor points so that the
        ## initial configuration can violate the constraint slightly. You also need to
        ## specify the initial relative angle for joint limits. This helps when saving
        ## and loading a game.
        ## 
        ## The local anchor points are measured from the body's origin
        ## rather than the center of mass because:
        ## 1. you might not know where the center of mass will be
        ## 2. if you add/remove shapes from a body and recompute the mass, the joints will be broken
        
        bodyIdA*: b2BodyId  
        ## The first attached body
        
        bodyIdB*: b2BodyId
        ## The second attached body
        
        localAnchorA*: b2Vec2
        ## The local anchor point relative to body A's origin
        
        localAnchorB*: b2Vec2
        ## The local anchor point relative to body B's origin
        
        referenceAngle*: cfloat
        ## The bodyB angle minus bodyA angle in the reference state (radians).
        ## 
        ## This defines the zero angle for the joint limit.
        
        enableSpring*: bool
        ## Enable a rotational spring on the revolute hinge axis
        
        hertz*: cfloat
        ## The spring stiffness Hertz, cycles per second
        
        dampingRatio*: cfloat
        ## The spring damping ratio, non-dimensional
        
        enableLimit*: bool
        ## A flag to enable joint limits
        
        lowerAngle*: cfloat
        ## The lower angle for the joint limit in radians
        
        upperAngle*: cfloat
        ## The upper angle for the joint limit in radians
        
        enableMotor*: bool
        ## A flag to enable the joint motor
        
        maxMotorTorque*: cfloat
        ## The maximum motor torque, typically in newton-meters
        
        motorSpeed*: cfloat
        ## The desired motor speed in radians per second
        
        drawSize*: cfloat
        ## Scale the debug draw
        
        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide
        
        userData*: pointer
        ## User data pointer
        
        internalValue: int32


when not defined(b2WeldJointDef):
    type b2WeldJointDef* {.pure, inheritable, bycopy.} = object
        ## Weld joint definition
        ## 
        ## A weld joint connect to bodies together rigidly. This constraint provides springs to mimic
        ## soft-body simulation.
        ## 
        ## .. note:: The approximate solver in Box2D cannot hold many bodies together rigidly
        
        bodyIdA*: b2BodyId 
        ## The first attached body
        
        bodyIdB*: b2BodyId
        ## The second attached body
        
        localAnchorA*: b2Vec2
        ## The local anchor point relative to body A's origin
        
        localAnchorB*: b2Vec2
        ## The local anchor point relative to body B's origin
        
        referenceAngle*: cfloat
        ## The bodyB angle minus body A angle in the reference state (radians)
        
        linearHertz*: cfloat
        ## Linear stiffness expressed as Hertz (cycles per second). Use zero for maximum stiffness.
        
        angularHertz*: cfloat
        ## Angular stiffness as Hertz (cycles per second). Use zero for maximum stiffness.
        
        linearDampingRatio*: cfloat
        ## Linear damping ratio, non-dimensional. Use 1 for critical damping.
        
        angularDampingRatio*: cfloat
        ## Angular damping ratio, non-dimensional. Use 1 for critical damping.
        
        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide
        
        userData*: pointer
        ## User data pointer
        
        internalValue: int32


when not defined(b2WheelJointDef):
    type b2WheelJointDef* {.pure, inheritable, bycopy.} = object
        ## Wheel joint definition
        ## 
        ## This requires defining a line of motion using an axis and an anchor point.
        ## 
        ## The definition uses local  anchor points and a local axis so that the initial
        ## configuration can violate the constraint slightly. The joint translation is zero
        ## when the local anchor points coincide in world space.
        
        bodyIdA*: b2BodyId 
        ## The first attached body
        
        bodyIdB*: b2BodyId
        ## The second attached body
        
        localAnchorA*: b2Vec2
        ## The local anchor point relative to body A's origin
        
        localAnchorB*: b2Vec2
        ## The local anchor point relative to body B's origin
        
        localAxisA*: b2Vec2
        ## The local translation unit axis in body A
        
        enableSpring*: bool
        ## Enable a linear spring along the local axis
        
        hertz*: cfloat
        ## Spring stiffness in Hertz
        
        dampingRatio*: cfloat
        ## Spring damping ratio, non-dimensional
        
        enableLimit*: bool
        ## Enable/disable the joint linear limit
        
        lowerTranslation*: cfloat
        ## The lower translation limit
        
        upperTranslation*: cfloat
        ## The upper translation limit
        
        enableMotor*: bool
        ## Enable/disable the joint rotational motor
        
        maxMotorTorque*: cfloat
        ## The maximum motor torque, typically in newton-meters
        
        motorSpeed*: cfloat
        ## The desired motor speed in radians per second
        
        collideConnected*: bool
        ## Set this flag to true if the attached bodies should collide
        
        userData*: pointer
        ## User data pointer
        
        internalValue: int32


when not defined(b2SensorBeginTouchEvent):
    type b2SensorBeginTouchEvent* {.pure, inheritable, bycopy.} = object
        ## A begin touch event is generated when a shape starts to overlap a sensor shape.
        
        sensorShapeId*: b2ShapeId 
        ## The id of the sensor shape

        visitorShapeId*: b2ShapeId
        ## The id of the dynamic shape that began touching the sensor shape


when not defined(b2SensorEndTouchEvent):
    type b2SensorEndTouchEvent* {.pure, inheritable, bycopy.} = object
        ## An end touch event is generated when a shape stops overlapping a sensor shape.
        
        sensorShapeId*: b2ShapeId
        ## The id of the sensor shape

        visitorShapeId*: b2ShapeId
        ## The id of the dynamic shape that stopped touching the sensor shape


when not defined b2SensorEvents:
    type b2SensorEvents* {.pure, inheritable, bycopy.} = object
        ## Sensor events are buffered in the Box2D world and are available
        ## as begin/end overlap event arrays after the time step is complete.
        ## 
        ## .. note:: these may become invalid if bodies and/or shapes are destroyed
        
        beginEvents*: ptr b2SensorBeginTouchEvent
        ## Array of sensor begin touch events
        
        endEvents*: ptr b2SensorEndTouchEvent
        ## Array of sensor end touch events
        
        beginCount*: int32
        ## The number of begin touch events
        
        endCount*: int32
        ## The number of end touch events


when not defined(b2ContactBeginTouchEvent):
    type b2ContactBeginTouchEvent* {.pure, inheritable, bycopy.} = object
        ## A begin touch event is generated when two shapes begin touching.
        
        shapeIdA*: b2ShapeId
        ## Id of the first shape
        
        shapeIdB*: b2ShapeId
        ## Id of the second shape


when not defined(b2ContactEndTouchEvent):
    type b2ContactEndTouchEvent* {.pure, inheritable, bycopy.} = object
        ## An end touch event is generated when two shapes stop touching.
        
        shapeIdA*: b2ShapeId
        ## Id of the first shape
        
        shapeIdB*: b2ShapeId
        ## Id of the second shape


when not defined(b2ContactHitEvent):
    type b2ContactHitEvent* {.pure, inheritable, bycopy.} = object
        ## A hit touch event is generated when two shapes collide with a speed faster than the hit speed threshold.
        
        shapeIdA*: b2ShapeId
        ## Id of the first shape
        
        shapeIdB*: b2ShapeId
        ## Id of the second shape
        
        point*: b2Vec2
        ## Point where the shapes hit
        
        normal*: b2Vec2
        ## Normal vector pointing from shape A to shape B
        
        approachSpeed*: cfloat
        ## The speed the shapes are approaching. Always positive. Typically in meters per second.


when not defined(b2ContactEvents):
    type b2ContactEvents* {.pure, inheritable, bycopy.} = object
        ## Contact events are buffered in the Box2D world and are available
        ## as event arrays after the time step is complete.
        ## 
        ## .. note:: these may become invalid if bodies and/or shapes are destroyed
        
        beginEvents*: ptr b2ContactBeginTouchEvent
        ## Array of begin touch events

        endEvents*: ptr b2ContactEndTouchEvent
        ## Array of end touch events
        
        hitEvents*: ptr b2ContactHitEvent
        ## Array of hit events
        
        beginCount*: int32
        ## Number of begin touch events
        
        endCount*: int32
        ## Number of end touch events
        
        hitCount*: int32
        ## Number of hit events


when not defined(b2BodyMoveEvent):
    type b2BodyMoveEvent* {.pure, inheritable, bycopy.} = object
        ## Body move events triggered when a body moves.
        ## 
        ## Triggered when a body moves due to simulation. Not reported for bodies moved by the user.
        ## 
        ## This also has a flag to indicate that the body went to sleep so the application can also
        ## sleep that actor/entity/object associated with the body.
        ## 
        ## On the other hand if the flag does not indicate the body went to sleep then the application
        ## can treat the actor/entity/object associated with the body as awake.
        ## 
        ## This is an efficient way for an application to update game object transforms rather than
        ## calling functions such as `b2Body_GetTransform`_ because this data is delivered as a contiguous array
        ## and it is only populated with bodies that have moved.
        ## 
        ## .. note:: If sleeping is disabled all dynamic and kinematic bodies will trigger move events.

        transform*: b2Transform 
        bodyId*: b2BodyId
        userData*: pointer
        fellAsleep*: bool


when not defined(b2BodyEvents):
    type b2BodyEvents* {.pure, inheritable, bycopy.} = object
        ## Body events are buffered in the Box2D world and are available
        ## as event arrays after the time step is complete.
        ## 
        ## .. note:: this data becomes invalid if bodies are destroyed
        
        moveEvents*: ptr b2BodyMoveEvent
        moveCount*: int32


when not defined(b2ContactData):
    type b2ContactData* {.pure, inheritable, bycopy.} = object
        ## The contact data for two shapes. By convention the manifold normal points
        ## from shape A to shape B.
        ## 
        ## See `b2Shape_GetContactData`_ and `b2Body_GetContactData`_
        
        shapeIdA*: b2ShapeId 
        shapeIdB*: b2ShapeId
        manifold*: b2Manifold


when not defined(b2CustomFilterFcn):
    type b2CustomFilterFcn* = proc (shapeIdA: b2ShapeId; shapeIdB: b2ShapeId; context: pointer): bool {.cdecl.} 
        ## Prototype for a contact filter callback.
        ## 
        ## This is called when a contact pair is considered for collision. This allows you to
        ## perform custom logic to prevent collision between shapes. This is only called if
        ## one of the two shapes has custom filtering enabled. See `b2ShapeDef`_.
        ## 
        ## .. note::
        ##      - this function must be thread-safe
        ##      - this is only called if one of the two shapes has enabled custom filtering
        ##      - this is called only for awake dynamic bodies
        ## 
        ## Return false if you want to disable the collision
        ## 
        ## .. warning:: Do not attempt to modify the world inside this callback


when not defined(b2PreSolveFcn):
    type b2PreSolveFcn* = proc (shapeIdA: b2ShapeId; shapeIdB: b2ShapeId; manifold: ptr b2Manifold;
        context: pointer): bool {.cdecl.} 
        ## Prototype for a pre-solve callback.
        ## 
        ## This is called after a contact is updated. This allows you to inspect a
        ## contact before it goes to the solver. If you are careful, you can modify the
        ## contact manifold (e.g. modify the normal).
        ## .. note:: 
        ##      - this function must be thread-safe
        ##      - this is only called if the shape has enabled presolve events
        ##      - this is called only for awake dynamic bodies
        ##      - this is not called for sensors
        ##      - the supplied manifold has impulse values from the previous step
        ## 
        ## Return false if you want to disable the contact this step
        ## 
        ## .. warning:: Do not attempt to modify the world inside this callback

when not defined(b2OverlapResultFcn):
    type b2OverlapResultFcn* = proc (shapeId: b2ShapeId; context: pointer): bool {.cdecl.} 
        ## Prototype callback for overlap queries.
        ## 
        ## Called for each shape found in the query.
        ## 
        ## Return false to terminate the query.


when not defined(b2CastResultFcn):
    type b2CastResultFcn* = proc (shapeId: b2ShapeId; point: b2Vec2; normal: b2Vec2; fraction: cfloat;
        context: pointer): cfloat {.cdecl.} 
        ## Prototype callback for ray casts.
        ## 
        ## Called for each shape found in the query. You control how the ray cast
        ## proceeds by returning a float:
        ## 
        ## Return -1 to filter, 0 to terminate, fraction to clip the ray for closest hit, 1 to continue
        ## 
        ## ``shapeId`` - the shape hit by the ray
        ## 
        ## ``point`` - the point of initial intersection
        ## 
        ## ``normal`` - the normal vector at the point of intersection
        ## 
        ## ``fraction`` - the fraction along the ray at the point of intersection
        ## 
        ## ``context`` - the user context
        ## 
        ## See `b2World_CastRay`_.
  

when not defined(b2DebugDraw):
    type b2DebugDraw* {.pure, inheritable, bycopy.} = object
        ## This struct holds callbacks you can implement to draw a Box2D world.
        
        DrawPolygon*: proc (vertices: ptr b2Vec2; vertexCount: cint; color: b2HexColor; context: pointer): void {.cdecl.}
        ## Draw a closed polygon provided in CCW order.
        
        DrawSolidPolygon*: proc (transform: b2Transform; vertices: ptr b2Vec2; vertexCount: cint;
            radius: cfloat; color: b2HexColor; context: pointer): void {.cdecl.}
        ## Draw a solid closed polygon provided in CCW order.
        
        DrawCircle*: proc (center: b2Vec2; radius: cfloat; color: b2HexColor; context: pointer): void {.cdecl.}
        ## Draw a circle.
        
        DrawSolidCircle*: proc (transform: b2Transform; radius: cfloat; color: b2HexColor;
            context: pointer): void {.cdecl.}
        ## Draw a solid circle.
        
        DrawCapsule*: proc (p1: b2Vec2; p2: b2Vec2; radius: cfloat; color: b2HexColor;
            context: pointer): void {.cdecl.}
        ## Draw a capsule.
        
        DrawSolidCapsule*: proc (p1: b2Vec2; p2: b2Vec2; radius: cfloat; color: b2HexColor;
            context: pointer): void {.cdecl.}
        ## Draw a solid capsule.
        
        DrawSegment*: proc (p1: b2Vec2; p2: b2Vec2; color: b2HexColor; context: pointer): void {.cdecl.}
        ## Draw a line segment.
        
        DrawTransform*: proc (transform: b2Transform; context: pointer): void {.cdecl.}
        ## Draw a transform. Choose your own length scale.
        
        DrawPoint*: proc (p: b2Vec2; size: cfloat; color: b2HexColor; context: pointer): void {.cdecl.}
        ## Draw a point.
        
        DrawString*: proc (p: b2Vec2; s: cstring; context: pointer): void {.cdecl.}
        ## Draw a string.
        
        drawingBounds*: b2AABB
        ## Bounds to use if restricting drawing to a rectangular region
        
        useDrawingBounds*: bool
        ## Option to restrict drawing to a rectangular region. May suffer from unstable depth sorting.
        
        drawShapes*: bool
        ## Option to draw shapes
        
        drawJoints*: bool
        ## Option to draw joints
        
        drawJointExtras*: bool
        ## Option to draw additional information for joints
        
        drawAABBs*: bool
        ## Option to draw the bounding boxes for shapes
        
        drawMass*: bool
        ## Option to draw the mass and center of mass of dynamic bodies
        
        drawContacts*: bool
        ## Option to draw contact points
        
        drawGraphColors*: bool
        ## Option to visualize the graph coloring used for contacts and joints
        
        drawContactNormals*: bool
        ## Option to draw contact normals
        
        drawContactImpulses*: bool
        ## Option to draw contact normal impulses
        
        drawFrictionImpulses*: bool
        ## Option to draw contact friction impulses
        
        context*: pointer
        ## User context that is passed as an argument to drawing callback functions


when not defined(b2_pi):
    const b2_pi* = 3.14159265359

when not defined(b2_maxPolygonVertices):
    const b2_maxPolygonVertices* = 8

when not defined(b2_defaultCategoryBits):
    const b2_defaultCategoryBits* = 1

when not defined(b2_defaultMaskBits):
    const b2_defaultMaskBits* = 4294967295'i64


when not defined(b2_nullWorldId):
    const b2_nullWorldId*: b2WorldId = b2WorldId(index1: 0, revision: 0)

when not defined(b2_nullBodyId):
    const b2_nullBodyId*: b2BodyId = b2BodyId(index1: 0, world0: 0, revision: 0)

when not defined(b2_nullShapeId):
    const b2_nullShapeId*: b2ShapeId = b2ShapeId(index1: 0, world0: 0, revision: 0)

when not defined(b2_nullJointId):
    const b2_nullJointId*: b2JointId = b2JointId(index1: 0, world0: 0, revision: 0)

when not defined(b2_nullChainId):
    const b2_nullChainId*: b2ChainId = b2ChainId(index1: 0, world0: 0, revision: 0)


when not defined(b2Vec2_zero):
    const b2Vec2_zero*: b2Vec2 = b2Vec2(x: 0.0f, y :0.0f)

when not defined(b2Rot_identity):
    const b2Rot_identity*: b2Rot = b2Rot(c: 1.0f, s: 0.0f)

when not defined(b2Transform_identity):
    const b2Transform_identity*: b2Transform = b2Transform(p: b2Vec2_zero, q: b2Rot_identity)

when not defined(b2Mat22_zero):
    const b2Mat22_zero*: b2Mat22 = b2Mat22(cx: b2Vec2_zero, cy: b2Vec2_zero)

when not defined(b2_emptyDistanceCache):
    const b2_emptyDistanceCache*: b2DistanceCache = b2DistanceCache(
        metric: 0.0f,
        count: 0,
        indexA: [0, 0, 0],
        indexB: [0, 0, 0]
    )


when not defined(b2SetAllocator):
    proc b2SetAllocator*(allocFcn: b2AllocFcn; freeFcn: b2FreeFcn): void {.cdecl,
        importc: "b2SetAllocator".}
        ## This allows the user to override the allocation functions. These should be
        ## set during application startup.


when not defined(b2GetByteCount):
    proc b2GetByteCount*(): cint {.cdecl, importc: "b2GetByteCount".}
        ## Return the total bytes allocated by Box2D


when not defined(b2SetAssertFcn):
    proc b2SetAssertFcn*(assertFcn: b2AssertFcn): void {.cdecl,
        importc: "b2SetAssertFcn".}
        ## Override the default assert callback
        ## 
        ## ``assertFcn`` - a non-null assert callback


when not defined(b2GetVersion):
    proc b2GetVersion*(): b2Version {.cdecl, importc: "b2GetVersion".}
        ## Get the current version of Box2D


when not defined(b2CreateTimer):
    proc b2CreateTimer*(): b2Timer {.cdecl, importc: "b2CreateTimer".}


when not defined(b2GetTicks):
    proc b2GetTicks*(timer: ptr b2Timer): int64 {.cdecl, importc: "b2GetTicks".}


when not defined(b2GetMilliseconds):
    proc b2GetMilliseconds*(timer: ptr b2Timer): cfloat {.cdecl, importc: "b2GetMilliseconds".}


when not defined(b2GetMillisecondsAndReset):
    proc b2GetMillisecondsAndReset*(timer: ptr b2Timer): cfloat {.cdecl, importc: "b2GetMillisecondsAndReset".}


when not defined(b2SleepMilliseconds):
    proc b2SleepMilliseconds*(milliseconds: cint): void {.cdecl, importc: "b2SleepMilliseconds".}


when not defined(b2Yield):
    proc b2Yield*(): void {.cdecl, importc: "b2Yield".}


when not defined(b2IsValid):
    proc b2IsValid*(a: cfloat): bool {.cdecl, importc: "b2IsValid".}
        ## Is this a valid number? Not NaN or infinity.


when not defined(b2Vec2_IsValid):
    proc b2Vec2_IsValid*(v: b2Vec2): bool {.cdecl, importc: "b2Vec2_IsValid".}
        ## Is this a valid vector? Not NaN or infinity.


when not defined(b2Rot_IsValid):
    proc b2Rot_IsValid*(q: b2Rot): bool {.cdecl, importc: "b2Rot_IsValid".}
        ## Is this a valid rotation? Not NaN or infinity. Is normalized.


when not defined(b2AABB_IsValid):
    proc b2AABB_IsValid*(aabb: b2AABB): bool {.cdecl, importc: "b2AABB_IsValid".}
        ## Is this a valid bounding box? Not Nan or infinity. Upper bound greater than or equal to lower bound.


when not defined(b2Normalize):
    proc b2Normalize*(v: b2Vec2): b2Vec2 {.cdecl, importc: "b2Normalize".}
        ## Convert a vector into a unit vector if possible, otherwise returns the zero vector.


when not defined(b2NormalizeChecked):
    proc b2NormalizeChecked*(v: b2Vec2): b2Vec2 {.cdecl, importc: "b2NormalizeChecked".}
        ## Convert a vector into a unit vector if possible, otherwise asserts.


when not defined(b2GetLengthAndNormalize):
    proc b2GetLengthAndNormalize*(length: ptr cfloat; v: b2Vec2): b2Vec2 {.cdecl, importc: "b2GetLengthAndNormalize".}
        ## Convert a vector into a unit vector if possible, otherwise returns the zero vector. Also
        ## outputs the length.


when not defined(b2SetLengthUnitsPerMeter):
    proc b2SetLengthUnitsPerMeter*(lengthUnits: cfloat): void {.cdecl, importc: "b2SetLengthUnitsPerMeter".}
        ## Box2D bases all length units on meters, but you may need different units for your game.
        ## 
        ## You can set this value to use different units. This should be done at application startup
        ## and only modified once. Default value is 1.
        ## 
        ## .. warning:: This must be modified before any calls to Box2D


when not defined(b2GetLengthUnitsPerMeter):
    proc b2GetLengthUnitsPerMeter*(): cfloat {.cdecl, importc: "b2GetLengthUnitsPerMeter".}
        ## Get the current length units per meter.


when not defined(b2IsValidRay):
    proc b2IsValidRay*(input: ptr b2RayCastInput): bool {.cdecl, importc: "b2IsValidRay".}
        ## Validate ray cast input data (NaN, etc)


when not defined(b2MakePolygon):
    proc b2MakePolygon*(hull: ptr b2Hull; radius: cfloat): b2Polygon {.cdecl, importc: "b2MakePolygon".}
        ## Make a convex polygon from a convex hull. This will assert if the hull is not valid.


when not defined(b2MakeOffsetPolygon):
    proc b2MakeOffsetPolygon*(hull: ptr b2Hull; radius: cfloat; transform: b2Transform): b2Polygon {.cdecl, importc: "b2MakeOffsetPolygon".}
        ## Make an offset convex polygon from a convex hull. This will assert if the hull is not valid.


when not defined(b2MakeSquare):
    proc b2MakeSquare*(h: cfloat): b2Polygon {.cdecl, importc: "b2MakeSquare".}
        ## Make a square polygon, bypassing the need for a convex hull.


when not defined(b2MakeBox):
    proc b2MakeBox*(hx: cfloat; hy: cfloat): b2Polygon {.cdecl, importc: "b2MakeBox".}
        ## Make a box (rectangle) polygon, bypassing the need for a convex hull.


when not defined(b2MakeRoundedBox):
    proc b2MakeRoundedBox*(hx: cfloat; hy: cfloat; radius: cfloat): b2Polygon {.cdecl, importc: "b2MakeRoundedBox".}
        ## Make a rounded box, bypassing the need for a convex hull.


when not defined(b2MakeOffsetBox):
    proc b2MakeOffsetBox*(hx: cfloat; hy: cfloat; center: b2Vec2; angle: cfloat): b2Polygon {.cdecl, importc: "b2MakeOffsetBox".}
        ## Make an offset box, bypassing the need for a convex hull.


when not defined(b2TransformPolygon):
    proc b2TransformPolygon*(transform: b2Transform; polygon: ptr b2Polygon): b2Polygon {.cdecl, importc: "b2TransformPolygon".}
        ## Transform a polygon. This is useful for transferring a shape from one body to another.


when not defined(b2ComputeCircleMass):
    proc b2ComputeCircleMass*(shape: ptr b2Circle; density: cfloat): b2MassData {.cdecl, importc: "b2ComputeCircleMass".}
        ## Compute mass properties of a circle


when not defined(b2ComputeCapsuleMass):
    proc b2ComputeCapsuleMass*(shape: ptr b2Capsule; density: cfloat): b2MassData {.cdecl, importc: "b2ComputeCapsuleMass".}
        ## Compute mass properties of a capsule


when not defined(b2ComputePolygonMass):
    proc b2ComputePolygonMass*(shape: ptr b2Polygon; density: cfloat): b2MassData {.cdecl, importc: "b2ComputePolygonMass".}
        ## Compute mass properties of a polygon


when not defined(b2ComputeCircleAABB):
    proc b2ComputeCircleAABB*(shape: ptr b2Circle; transform: b2Transform): b2AABB {.cdecl, importc: "b2ComputeCircleAABB".}
        ## Compute the bounding box of a transformed circle


when not defined(b2ComputeCapsuleAABB):
    proc b2ComputeCapsuleAABB*(shape: ptr b2Capsule; transform: b2Transform): b2AABB {.cdecl, importc: "b2ComputeCapsuleAABB".}
        ## Compute the bounding box of a transformed capsule


when not defined(b2ComputePolygonAABB):
    proc b2ComputePolygonAABB*(shape: ptr b2Polygon; transform: b2Transform): b2AABB {.cdecl, importc: "b2ComputePolygonAABB".}
        ## Compute the bounding box of a transformed polygon


when not defined(b2ComputeSegmentAABB):
    proc b2ComputeSegmentAABB*(shape: ptr b2Segment; transform: b2Transform): b2AABB {.cdecl, importc: "b2ComputeSegmentAABB".}
        ## Compute the bounding box of a transformed line segment


when not defined(b2PointInCircle):
    proc b2PointInCircle*(point: b2Vec2; shape: ptr b2Circle): bool {.cdecl,importc: "b2PointInCircle".}
        ## Test a point for overlap with a circle in local space


when not defined(b2PointInCapsule):
    proc b2PointInCapsule*(point: b2Vec2; shape: ptr b2Capsule): bool {.cdecl,importc: "b2PointInCapsule".}
        ## Test a point for overlap with a capsule in local space


when not defined(b2PointInPolygon):
    proc b2PointInPolygon*(point: b2Vec2; shape: ptr b2Polygon): bool {.cdecl,importc: "b2PointInPolygon".}
        ## Test a point for overlap with a convex polygon in local space


when not defined(b2RayCastCircle):
    proc b2RayCastCircle*(input: ptr b2RayCastInput; shape: ptr b2Circle): b2CastOutput {.cdecl, importc: "b2RayCastCircle".}
        ## Ray cast versus circle in shape local space. Initial overlap is treated as a miss.


when not defined(b2RayCastCapsule):
    proc b2RayCastCapsule*(input: ptr b2RayCastInput; shape: ptr b2Capsule): b2CastOutput {.cdecl, importc: "b2RayCastCapsule".}
        ## Ray cast versus capsule in shape local space. Initial overlap is treated as a miss.


when not defined(b2RayCastSegment):
    proc b2RayCastSegment*(input: ptr b2RayCastInput; shape: ptr b2Segment; oneSided: bool): b2CastOutput {.cdecl, importc: "b2RayCastSegment".}
        ## Ray cast versus segment in shape local space. Optionally treat the segment as one-sided with hits from
        ## the left side being treated as a miss.


when not defined(b2RayCastPolygon):
    proc b2RayCastPolygon*(input: ptr b2RayCastInput; shape: ptr b2Polygon): b2CastOutput {.cdecl, importc: "b2RayCastPolygon".}
        ## Ray cast versus polygon in shape local space. Initial overlap is treated as a miss.


when not defined(b2ShapeCastCircle):
    proc b2ShapeCastCircle*(input: ptr b2ShapeCastInput; shape: ptr b2Circle): b2CastOutput {.cdecl, importc: "b2ShapeCastCircle".}
        ## Shape cast versus a circle. Initial overlap is treated as a miss.


when not defined(b2ShapeCastCapsule):
    proc b2ShapeCastCapsule*(input: ptr b2ShapeCastInput; shape: ptr b2Capsule): b2CastOutput {.cdecl, importc: "b2ShapeCastCapsule".}
        ## Shape cast versus a capsule. Initial overlap is treated as a miss.


when not defined(b2ShapeCastSegment):
    proc b2ShapeCastSegment*(input: ptr b2ShapeCastInput; shape: ptr b2Segment): b2CastOutput {.cdecl, importc: "b2ShapeCastSegment".}
        ## Shape cast versus a line segment. Initial overlap is treated as a miss.


when not defined(b2ShapeCastPolygon):
    proc b2ShapeCastPolygon*(input: ptr b2ShapeCastInput; shape: ptr b2Polygon): b2CastOutput {.cdecl, importc: "b2ShapeCastPolygon".}
        ## Shape cast versus a convex polygon. Initial overlap is treated as a miss.


when not defined(b2ComputeHull):
    proc b2ComputeHull*(points: ptr b2Vec2; count: int32): b2Hull {.cdecl, importc: "b2ComputeHull".}
        ## Compute the convex hull of a set of points. Returns an empty hull if it fails.
        ## 
        ## Some failure cases:
        ## - all points very close together
        ## - all points on a line
        ## - less than 3 points
        ## - more than b2_maxPolygonVertices points
        ## 
        ## This welds close points and removes collinear points.
        ## 

when not defined(b2ValidateHull):
    proc b2ValidateHull*(hull: ptr b2Hull): bool {.cdecl, importc: "b2ValidateHull".}
        ## This determines if a hull is valid. Checks for:
        ## - convexity
        ## - collinear points
        ## 
        ## This is expensive and should not be called at runtime.


when not defined(b2SegmentDistance):
    proc b2SegmentDistance*(p1: b2Vec2; q1: b2Vec2; p2: b2Vec2; q2: b2Vec2): b2SegmentDistanceResult {.cdecl, importc: "b2SegmentDistance".}
        ## Compute the distance between two line segments, clamping at the end points if needed.


when not defined(b2ShapeDistance):
    proc b2ShapeDistance*(cache: ptr b2DistanceCache; input: ptr b2DistanceInput): b2DistanceOutput {.cdecl, importc: "b2ShapeDistance".}
        ## Compute the closest points between two shapes. Supports any combination of:
        ## b2Circle, b2Polygon, b2EdgeShape. The simplex cache is input/output. 
        ## 
        ## On the first call set b2SimplexCache.count to zero.


when not defined(b2ShapeCast):
    proc b2ShapeCast*(input: ptr b2ShapeCastPairInput): b2CastOutput {.cdecl, importc: "b2ShapeCast".}
        ## Perform a linear shape cast of shape B moving and shape A fixed. Determines the hit point, normal, and translation fraction.


when not defined(b2MakeProxy):
    proc b2MakeProxy*(vertices: ptr b2Vec2; count: int32; radius: cfloat): b2DistanceProxy {.cdecl, importc: "b2MakeProxy".}
        ## Make a proxy for use in GJK and related functions.


when not defined(b2GetSweepTransform):
    proc b2GetSweepTransform*(sweep: ptr b2Sweep; time: cfloat): b2Transform {.cdecl, importc: "b2GetSweepTransform".}
        ## Evaluate the transform sweep at a specific time.


when not defined(b2TimeOfImpact):
    proc b2TimeOfImpact*(input: ptr b2TOIInput): b2TOIOutput {.cdecl, importc: "b2TimeOfImpact".}
        ## Compute the upper bound on time before two shapes penetrate. Time is represented as
        ## a fraction between \[0,tMax\]. This uses a swept separating axis and may miss some intermediate,
        ## non-tunneling collisions. If you change the time interval, you should call this function
        ## again.


when not defined(b2CollideCircles):
    proc b2CollideCircles*(circleA: ptr b2Circle; xfA: b2Transform; circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.cdecl, importc: "b2CollideCircles".}
        ## Compute the contact manifold between two circles


when not defined(b2CollideCapsuleAndCircle):
    proc b2CollideCapsuleAndCircle*(capsuleA: ptr b2Capsule; xfA: b2Transform; circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.cdecl, importc: "b2CollideCapsuleAndCircle".}
        ## Compute the contact manifold between a capsule and circle


when not defined(b2CollideSegmentAndCircle):
    proc b2CollideSegmentAndCircle*(segmentA: ptr b2Segment; xfA: b2Transform; circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.cdecl, importc: "b2CollideSegmentAndCircle".}
        ## Compute the contact manifold between an segment and a circle


when not defined(b2CollidePolygonAndCircle):
    proc b2CollidePolygonAndCircle*(polygonA: ptr b2Polygon; xfA: b2Transform; circleB: ptr b2Circle; xfB: b2Transform): b2Manifold {.cdecl, importc: "b2CollidePolygonAndCircle".}
        ## Compute the contact manifold between a polygon and a circle


when not defined(b2CollideCapsules):
    proc b2CollideCapsules*(capsuleA: ptr b2Capsule; xfA: b2Transform;
                capsuleB: ptr b2Capsule; xfB: b2Transform;
                cache: ptr b2DistanceCache): b2Manifold {.cdecl, importc: "b2CollideCapsules".}
        ## Compute the contact manifold between two capsules


when not defined(b2CollideSegmentAndCapsule):
    proc b2CollideSegmentAndCapsule*(segmentA: ptr b2Segment; xfA: b2Transform;
                    capsuleB: ptr b2Capsule; xfB: b2Transform;
                    cache: ptr b2DistanceCache): b2Manifold {.cdecl, importc: "b2CollideSegmentAndCapsule".}
        ## Compute the contact manifold between an segment and a circle


when not defined(b2CollidePolygonAndCapsule):
    proc b2CollidePolygonAndCapsule*(polygonA: ptr b2Polygon; xfA: b2Transform;
                    capsuleB: ptr b2Capsule; xfB: b2Transform;
                    cache: ptr b2DistanceCache): b2Manifold {.cdecl, importc: "b2CollidePolygonAndCapsule".}
        ## Compute the contact manifold between a polygon and capsule


when not defined(b2CollidePolygons):
    proc b2CollidePolygons*(polyA: ptr b2Polygon; xfA: b2Transform;
                polyB: ptr b2Polygon; xfB: b2Transform;
                cache: ptr b2DistanceCache): b2Manifold {.cdecl,importc: "b2CollidePolygons".}
        ## Compute the contact manifold between two polygons


when not defined(b2CollideSegmentAndPolygon):
    proc b2CollideSegmentAndPolygon*(segmentA: ptr b2Segment; xfA: b2Transform;
                    polygonB: ptr b2Polygon; xfB: b2Transform;
                    cache: ptr b2DistanceCache): b2Manifold {.cdecl, importc: "b2CollideSegmentAndPolygon".}
        ## Compute the contact manifold between an segment and a polygon


when not defined(b2CollideSmoothSegmentAndCircle):
    proc b2CollideSmoothSegmentAndCircle*(smoothSegmentA: ptr b2SmoothSegment;
                        xfA: b2Transform; circleB: ptr b2Circle;
                        xfB: b2Transform): b2Manifold {.cdecl,importc: "b2CollideSmoothSegmentAndCircle".}
        ## Compute the contact manifold between a smooth segment and a circle


when not defined(b2CollideSmoothSegmentAndCapsule):
    proc b2CollideSmoothSegmentAndCapsule*(smoothSegmentA: ptr b2SmoothSegment;
                        xfA: b2Transform;
                        capsuleB: ptr b2Capsule;
                        xfB: b2Transform;
                        cache: ptr b2DistanceCache): b2Manifold {.cdecl, importc: "b2CollideSmoothSegmentAndCapsule".}
        ## Compute the contact manifold between an segment and a capsule


when not defined(b2CollideSmoothSegmentAndPolygon):
    proc b2CollideSmoothSegmentAndPolygon*(smoothSegmentA: ptr b2SmoothSegment;
                        xfA: b2Transform;
                        polygonB: ptr b2Polygon;
                        xfB: b2Transform;
                        cache: ptr b2DistanceCache): b2Manifold {.cdecl, importc: "b2CollideSmoothSegmentAndPolygon".}
        ## Compute the contact manifold between a smooth segment and a rounded polygon


when not defined(b2DefaultWorldDef):
    proc b2DefaultWorldDef*(): b2WorldDef {.cdecl, importc: "b2DefaultWorldDef".}
        ## Use this to initialize your world definition


when not defined(b2DefaultBodyDef):
    proc b2DefaultBodyDef*(): b2BodyDef {.cdecl, importc: "b2DefaultBodyDef".}
        ## Use this to initialize your body definition


when not defined(b2DefaultFilter):
    proc b2DefaultFilter*(): b2Filter {.cdecl, importc: "b2DefaultFilter".}
        ## Use this to initialize your filter


when not defined(b2DefaultQueryFilter):
    proc b2DefaultQueryFilter*(): b2QueryFilter {.cdecl, importc: "b2DefaultQueryFilter".}
        ## Use this to initialize your query filter


when not defined(b2DefaultShapeDef):
    proc b2DefaultShapeDef*(): b2ShapeDef {.cdecl, importc: "b2DefaultShapeDef".}
        ## Use this to initialize your shape definition


when not defined(b2DefaultChainDef):
    proc b2DefaultChainDef*(): b2ChainDef {.cdecl, importc: "b2DefaultChainDef".}
        ## Use this to initialize your chain definition


when not defined(b2DefaultDistanceJointDef):
    proc b2DefaultDistanceJointDef*(): b2DistanceJointDef {.cdecl, importc: "b2DefaultDistanceJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2DefaultMotorJointDef):
    proc b2DefaultMotorJointDef*(): b2MotorJointDef {.cdecl, importc: "b2DefaultMotorJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2DefaultMouseJointDef):
    proc b2DefaultMouseJointDef*(): b2MouseJointDef {.cdecl, importc: "b2DefaultMouseJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2DefaultPrismaticJointDef):
    proc b2DefaultPrismaticJointDef*(): b2PrismaticJointDef {.cdecl, importc: "b2DefaultPrismaticJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2DefaultRevoluteJointDef):
    proc b2DefaultRevoluteJointDef*(): b2RevoluteJointDef {.cdecl, importc: "b2DefaultRevoluteJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2DefaultWeldJointDef):
    proc b2DefaultWeldJointDef*(): b2WeldJointDef {.cdecl, importc: "b2DefaultWeldJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2DefaultWheelJointDef):
    proc b2DefaultWheelJointDef*(): b2WheelJointDef {.cdecl, importc: "b2DefaultWheelJointDef".}
        ## Use this to initialize your joint definition


when not defined(b2CreateWorld):
    proc b2CreateWorld*(def: ptr b2WorldDef): b2WorldId {.cdecl, importc: "b2CreateWorld".}
        ## Create a world for rigid body simulation. A world contains bodies, shapes, and constraints. You make create
        ## up to 128 worlds. Each world is completely independent and may be simulated in parallel.
        ## 
        ## Return the world id.


when not defined(b2DestroyWorld):
    proc b2DestroyWorld*(worldId: b2WorldId): void {.cdecl, importc: "b2DestroyWorld".}
        ## Destroy a world


when not defined(b2World_IsValid):
    proc b2World_IsValid*(id: b2WorldId): bool {.cdecl, importc: "b2World_IsValid".}
        ## World id validation. Provides validation for up to 64K allocations.


when not defined(b2World_Step):
    proc b2World_Step*(worldId: b2WorldId; timeStep: cfloat; subStepCount: cint): void {.cdecl, importc: "b2World_Step".}
        ## Simulate a world for one time step. This performs collision detection, integration, and constraint solution.
        ## 
        ## ``worldId`` - The world to simulate
        ## 
        ## ``timeStep`` - The amount of time to simulate, this should be a fixed number. Typically 1/60.
        ## 
        ## ``subStepCount`` - The number of sub-steps, increasing the sub-step count can increase accuracy. Typically 4.


when not defined(b2World_Draw):
    proc b2World_Draw*(worldId: b2WorldId; draw: ptr b2DebugDraw): void {.cdecl, importc: "b2World_Draw".}
        ## Call this to draw shapes and other debug draw data


when not defined(b2World_GetBodyEvents):
    proc b2World_GetBodyEvents*(worldId: b2WorldId): b2BodyEvents {.cdecl, importc: "b2World_GetBodyEvents".}
        ## Get the body events for the current time step. The event data is transient. Do not store a reference to this data.


when not defined(b2World_GetSensorEvents):
    proc b2World_GetSensorEvents*(worldId: b2WorldId): b2SensorEvents {.cdecl, importc: "b2World_GetSensorEvents".}
        ## Get sensor events for the current time step. The event data is transient. Do not store a reference to this data.


when not defined(b2World_GetContactEvents):
    proc b2World_GetContactEvents*(worldId: b2WorldId): b2ContactEvents {.cdecl, importc: "b2World_GetContactEvents".}
        ## Get contact events for this current time step. The event data is transient. Do not store a reference to this data.


when not defined(b2World_OverlapAABB):
    proc b2World_OverlapAABB*(worldId: b2WorldId; aabb: b2AABB;
                filter: b2QueryFilter; fcn: b2OverlapResultFcn;
                context: pointer): void {.cdecl, importc: "b2World_OverlapAABB".}
        ## Overlap test for all shapes that *potentially* overlap the provided AABB


when not defined(b2World_OverlapCircle):
    proc b2World_OverlapCircle*(worldId: b2WorldId; circle: ptr b2Circle;
                transform: b2Transform; filter: b2QueryFilter;
                fcn: b2OverlapResultFcn; context: pointer): void {.cdecl, importc: "b2World_OverlapCircle".}
        ## Overlap test for for all shapes that overlap the provided circle


when not defined(b2World_OverlapCapsule):
    proc b2World_OverlapCapsule*(worldId: b2WorldId; capsule: ptr b2Capsule;
                transform: b2Transform; filter: b2QueryFilter;
                fcn: b2OverlapResultFcn; context: pointer): void {.cdecl, importc: "b2World_OverlapCapsule".}
        ## Overlap test for all shapes that overlap the provided capsule


when not defined(b2World_OverlapPolygon):
    proc b2World_OverlapPolygon*(worldId: b2WorldId; polygon: ptr b2Polygon;
                transform: b2Transform; filter: b2QueryFilter;
                fcn: b2OverlapResultFcn; context: pointer): void {.cdecl, importc: "b2World_OverlapPolygon".}
        ## Overlap test for all shapes that overlap the provided polygon


when not defined(b2World_CastRay):
    proc b2World_CastRay*(worldId: b2WorldId; origin: b2Vec2; translation: b2Vec2;
                filter: b2QueryFilter; fcn: b2CastResultFcn;
                context: pointer): void {.cdecl, importc: "b2World_CastRay".}
        ## Cast a ray into the world to collect shapes in the path of the ray.
        ## 
        ## Your callback function controls whether you get the closest point, any point, or n-points.
        ## 
        ## The ray-cast ignores shapes that contain the starting point.
        ## 
        ## ``worldId`` - The world to cast the ray against
        ## 
        ## ``origin`` - The start point of the ray
        ## 
        ## ``translation`` - The translation of the ray from the start point to the end point
        ## 
        ## ``filter`` - Contains bit flags to filter unwanted shapes from the results
        ## 
        ## ``fcn`` - A user implemented callback function
        ## 
        ## ``context`` - A user context that is passed along to the callback function
        ##
        ## .. note:: The callback function may receive shapes in any order


when not defined(b2World_CastRayClosest):
    proc b2World_CastRayClosest*(worldId: b2WorldId; origin: b2Vec2;
                translation: b2Vec2; filter: b2QueryFilter): b2RayResult {.cdecl, importc: "b2World_CastRayClosest".}
        ## Cast a ray into the world to collect the closest hit. This is a convenience function.
        ## 
        ## This is less general than `b2World_CastRay`_ and does not allow for custom filtering.


when not defined(b2World_CastCircle):
    proc b2World_CastCircle*(worldId: b2WorldId; circle: ptr b2Circle;
                originTransform: b2Transform; translation: b2Vec2;
                filter: b2QueryFilter; fcn: b2CastResultFcn;
                context: pointer): void {.cdecl, importc: "b2World_CastCircle".}
        ## Cast a circle through the world. Similar to a cast ray except that a circle is cast instead of a point.


when not defined(b2World_CastCapsule):
    proc b2World_CastCapsule*(worldId: b2WorldId; capsule: ptr b2Capsule;
                originTransform: b2Transform; translation: b2Vec2;
                filter: b2QueryFilter; fcn: b2CastResultFcn;
                context: pointer): void {.cdecl, importc: "b2World_CastCapsule".}
        ## Cast a capsule through the world. Similar to a cast ray except that a capsule is cast instead of a point.


when not defined(b2World_CastPolygon):
    proc b2World_CastPolygon*(worldId: b2WorldId; polygon: ptr b2Polygon;
                originTransform: b2Transform; translation: b2Vec2;
                filter: b2QueryFilter; fcn: b2CastResultFcn;
                context: pointer): void {.cdecl, importc: "b2World_CastPolygon".}
        ## Cast a polygon through the world. Similar to a cast ray except that a polygon is cast instead of a point.


when not defined(b2World_EnableSleeping):
    proc b2World_EnableSleeping*(worldId: b2WorldId; flag: bool): void {.cdecl, importc: "b2World_EnableSleeping".}
        ## Enable/disable sleep. If your application does not need sleeping, you can gain some performance
        ## by disabling sleep completely at the world level.
        ## 
        ## See `b2WorldDef`_


when not defined(b2World_EnableContinuous):
    proc b2World_EnableContinuous*(worldId: b2WorldId; flag: bool): void {.cdecl, importc: "b2World_EnableContinuous".}
        ## Enable/disable continuous collision between dynamic and static bodies. Generally you should keep continuous
        ## collision enabled to prevent fast moving objects from going through static objects. The performance gain from
        ## disabling continuous collision is minor.
        ## 
        ## See `b2WorldDef`_


when not defined(b2World_SetRestitutionThreshold):
    proc b2World_SetRestitutionThreshold*(worldId: b2WorldId; value: cfloat): void {.cdecl, importc: "b2World_SetRestitutionThreshold".}
        ## Adjust the restitution threshold. It is recommended not to make this value very small
        ## because it will prevent bodies from sleeping. Typically in meters per second.
        ## 
        ## See `b2WorldDef`_


when not defined(b2World_SetHitEventThreshold):
    proc b2World_SetHitEventThreshold*(worldId: b2WorldId; value: cfloat): void {.cdecl, importc: "b2World_SetHitEventThreshold".}
        ## Adjust the hit event threshold. This controls the collision velocity needed to generate a b2ContactHitEvent.
        ## 
        ## Typically in meters per second.
        ## 
        ## See `b2WorldDef`_


when not defined(b2World_SetCustomFilterCallback):
    proc b2World_SetCustomFilterCallback*(worldId: b2WorldId;
                        fcn: b2CustomFilterFcn; context: pointer): void {.cdecl, importc: "b2World_SetCustomFilterCallback".}
        ## Register the custom filter callback. This is optional.


when not defined(b2World_SetPreSolveCallback):
    proc b2World_SetPreSolveCallback*(worldId: b2WorldId; fcn: b2PreSolveFcn;
                    context: pointer): void {.cdecl, importc: "b2World_SetPreSolveCallback".}
        ## Register the pre-solve callback. This is optional.


when not defined(b2World_SetGravity):
    proc b2World_SetGravity*(worldId: b2WorldId; gravity: b2Vec2): void {.cdecl, importc: "b2World_SetGravity".}
        ## Set the gravity vector for the entire world. Box2D has no concept of an up direction and this
        ## is left as a decision for the application. Typically in m/s^2.


when not defined(b2World_GetGravity):
    proc b2World_GetGravity*(worldId: b2WorldId): b2Vec2 {.cdecl, importc: "b2World_GetGravity".}
        ## Get the gravity vector


when not defined(b2World_Explode):
    proc b2World_Explode*(worldId: b2WorldId; position: b2Vec2; radius: cfloat;
                impulse: cfloat): void {.cdecl, importc: "b2World_Explode".}
        ## Apply a radial explosion
        ## 
        ## ``worldId`` - The world id
        ## 
        ## ``position`` - The center of the explosion
        ## 
        ## ``radius`` - The radius of the explosion
        ## 
        ## ``impulse`` - The impulse of the explosion, typically in kg * m / s or N * s.


when not defined(b2World_SetContactTuning):
    proc b2World_SetContactTuning*(worldId: b2WorldId; hertz: cfloat;
                    dampingRatio: cfloat; pushVelocity: cfloat): void {.cdecl, importc: "b2World_SetContactTuning".}
        ## Adjust contact tuning parameters
        ## 
        ## ``worldId`` - The world id
        ## 
        ## ``hertz`` - The contact stiffness (cycles per second)
        ## 
        ## ``dampingRatio`` - The contact bounciness with 1 being critical damping (non-dimensional)
        ## 
        ## ``pushVelocity`` - The maximum contact constraint push out velocity (meters per second)
        ## 
        ## .. note:: Advanced feature


when not defined(b2World_EnableWarmStarting):
    proc b2World_EnableWarmStarting*(worldId: b2WorldId; flag: bool): void {.cdecl, importc: "b2World_EnableWarmStarting".}
        ## Enable/disable constraint warm starting. Advanced feature for testing. Disabling
        ## sleeping greatly reduces stability and provides no performance gain.


when not defined(b2World_GetProfile):
    proc b2World_GetProfile*(worldId: b2WorldId): b2Profile {.cdecl, importc: "b2World_GetProfile".}
        ## Get the current world performance profile


when not defined(b2World_GetCounters):
    proc b2World_GetCounters*(worldId: b2WorldId): b2Counters {.cdecl, importc: "b2World_GetCounters".}
        ## Get world counters and sizes


when not defined(b2World_DumpMemoryStats):
    proc b2World_DumpMemoryStats*(worldId: b2WorldId): void {.cdecl, importc: "b2World_DumpMemoryStats".}
        ## Dump memory stats to box2d_memory.txt


when not defined(b2CreateBody):
    proc b2CreateBody*(worldId: b2WorldId; def: ptr b2BodyDef): b2BodyId {.cdecl, importc: "b2CreateBody".}
        ## Create a rigid body given a definition. No reference to the definition is retained. So you can create the definition
        ## on the stack and pass it as a pointer.
        ## 
        ## ```
        ## let bodyDef = b2DefaultBodyDef()
        ## let myBodyId = b2CreateBody(myWorldId, bodyDef.addr)
        ## ```
        ## 
        ## .. warning:: This function is locked during callbacks.


when not defined(b2DestroyBody):
    proc b2DestroyBody*(bodyId: b2BodyId): void {.cdecl, importc: "b2DestroyBody".}
        ## Destroy a rigid body given an id. This destroys all shapes and joints attached to the body.
        ## 
        ## Do not keep references to the associated shapes and joints.


when not defined(b2Body_IsValid):
    proc b2Body_IsValid*(id: b2BodyId): bool {.cdecl, importc: "b2Body_IsValid".}
        ## Body identifier validation. Can be used to detect orphaned ids. Provides validation for up to 64K allocations.


when not defined(b2Body_GetType):
    proc b2Body_GetType*(bodyId: b2BodyId): b2BodyType {.cdecl, importc: "b2Body_GetType".}
        ## Get the body type: static, kinematic, or dynamic


when not defined(b2Body_SetType):
    proc b2Body_SetType*(bodyId: b2BodyId; bodyType: b2BodyType): void {.cdecl, importc: "b2Body_SetType".}
        ## Change the body type. This is an expensive operation. This automatically updates the mass
        ## properties regardless of the automatic mass setting.


when not defined(b2Body_SetUserData):
    proc b2Body_SetUserData*(bodyId: b2BodyId; userData: pointer): void {.cdecl, importc: "b2Body_SetUserData".}
        ## Set the user data for a body


when not defined(b2Body_GetUserData):
    proc b2Body_GetUserData*(bodyId: b2BodyId): pointer {.cdecl, importc: "b2Body_GetUserData".}
        ## Get the user data stored in a body


when not defined(b2Body_GetPosition):
    proc b2Body_GetPosition*(bodyId: b2BodyId): b2Vec2 {.cdecl, importc: "b2Body_GetPosition".}
        ## Get the world position of a body. This is the location of the body origin.


when not defined(b2Body_GetRotation):
    proc b2Body_GetRotation*(bodyId: b2BodyId): b2Rot {.cdecl, importc: "b2Body_GetRotation".}
        ## Get the world rotation of a body as a cosine/sine pair (complex number)


when not defined(b2Body_GetAngle):
    proc b2Body_GetAngle*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetAngle".}
        ## Get the body angle in radians in the range \[-pi, pi\]


when not defined(b2Body_GetTransform):
    proc b2Body_GetTransform*(bodyId: b2BodyId): b2Transform {.cdecl, importc: "b2Body_GetTransform".}
        ## Get the world transform of a body.


when not defined(b2Body_SetTransform):
    proc b2Body_SetTransform*(bodyId: b2BodyId; position: b2Vec2; angle: cfloat): void {.cdecl, importc: "b2Body_SetTransform".}
        ## Set the world transform of a body. This acts as a teleport and is fairly expensive.
        ## 
        ## .. note:: Generally you should create a body with its intended transform.
        ## 
        ## See `b2BodyDef`_


when not defined(b2Body_GetLocalPoint):
    proc b2Body_GetLocalPoint*(bodyId: b2BodyId; worldPoint: b2Vec2): b2Vec2 {.cdecl, importc: "b2Body_GetLocalPoint".}
        ## Get a local point on a body given a world point


when not defined(b2Body_GetWorldPoint):
    proc b2Body_GetWorldPoint*(bodyId: b2BodyId; localPoint: b2Vec2): b2Vec2 {.cdecl, importc: "b2Body_GetWorldPoint".}
        ## Get a world point on a body given a local point


when not defined(b2Body_GetLocalVector):
    proc b2Body_GetLocalVector*(bodyId: b2BodyId; worldVector: b2Vec2): b2Vec2 {.cdecl, importc: "b2Body_GetLocalVector".}
        ## Get a local vector on a body given a world vector


when not defined(b2Body_GetWorldVector):
    proc b2Body_GetWorldVector*(bodyId: b2BodyId; localVector: b2Vec2): b2Vec2 {.cdecl, importc: "b2Body_GetWorldVector".}
        ## Get a world vector on a body given a local vector


when not defined(b2Body_GetLinearVelocity):
    proc b2Body_GetLinearVelocity*(bodyId: b2BodyId): b2Vec2 {.cdecl, importc: "b2Body_GetLinearVelocity".}
        ## Get the linear velocity of a body's center of mass. Typically in meters per second.


when not defined(b2Body_GetAngularVelocity):
    proc b2Body_GetAngularVelocity*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetAngularVelocity".}
        ## Get the angular velocity of a body in radians per second


when not defined(b2Body_SetLinearVelocity):
    proc b2Body_SetLinearVelocity*(bodyId: b2BodyId; linearVelocity: b2Vec2): void {.cdecl, importc: "b2Body_SetLinearVelocity".}
        ## Set the linear velocity of a body. Typically in meters per second.


when not defined(b2Body_SetAngularVelocity):
    proc b2Body_SetAngularVelocity*(bodyId: b2BodyId; angularVelocity: cfloat): void {.cdecl, importc: "b2Body_SetAngularVelocity".}
        ## Set the angular velocity of a body in radians per second


when not defined(b2Body_ApplyForce):
    proc b2Body_ApplyForce*(bodyId: b2BodyId; force: b2Vec2; point: b2Vec2; wake: bool): void {.cdecl, importc: "b2Body_ApplyForce".}
        ## Apply a force at a world point. If the force is not applied at the center of mass,
        ## it will generate a torque and affect the angular velocity. This optionally wakes up the body.
        ## 
        ## The force is ignored if the body is not awake.
        ## 
        ## ``bodyId`` - The body id
        ## 
        ## ``force`` - The world force vector, typically in newtons (N)
        ## 
        ## ``point`` - The world position of the point of application
        ## 
        ## ``wake`` - Option to wake up the body


when not defined(b2Body_ApplyForceToCenter):
    proc b2Body_ApplyForceToCenter*(bodyId: b2BodyId; force: b2Vec2; wake: bool): void {.cdecl, importc: "b2Body_ApplyForceToCenter".}
        ## Apply a force to the center of mass. This optionally wakes up the body.
        ## 
        ## The force is ignored if the body is not awake.
        ## 
        ## ``bodyId`` - The body id
        ## 
        ## ``force`` - the world force vector, usually in newtons (N).
        ## 
        ## ``wake`` - also wake up the body


when not defined(b2Body_ApplyTorque):
    proc b2Body_ApplyTorque*(bodyId: b2BodyId; torque: cfloat; wake: bool): void {.cdecl, importc: "b2Body_ApplyTorque".}
        ## Apply a torque. This affects the angular velocity without affecting the linear velocity.
        ## 
        ## This optionally wakes the body. The torque is ignored if the body is not awake.
        ## 
        ## ``bodyId`` - The body id
        ## 
        ## ``torque`` - about the z-axis (out of the screen), typically in N\*m.
        ## 
        ## ``wake`` - also wake up the body


when not defined(b2Body_ApplyLinearImpulse):
    proc b2Body_ApplyLinearImpulse*(bodyId: b2BodyId; impulse: b2Vec2;
                    point: b2Vec2; wake: bool): void {.cdecl,importc: "b2Body_ApplyLinearImpulse".}
        ## Apply an impulse at a point. This immediately modifies the velocity.
        ## 
        ## It also modifies the angular velocity if the point of application
        ## is not at the center of mass. This optionally wakes the body.
        ## 
        ## The impulse is ignored if the body is not awake.
        ## 
        ## ``bodyId`` - The body id
        ## 
        ## ``impulse`` - the world impulse vector, typically in N*s or kg*m/s.
        ## 
        ## ``point`` - the world position of the point of application.
        ## 
        ## ``wake`` - also wake up the body
        ## 
        ## .. warning:: 
        ##      This should be used for one-shot impulses. If you need a steady force,
        ##      use a force instead, which will work better with the sub-stepping solver.


when not defined(b2Body_ApplyLinearImpulseToCenter):
    proc b2Body_ApplyLinearImpulseToCenter*(bodyId: b2BodyId; impulse: b2Vec2;
                        wake: bool): void {.cdecl,importc: "b2Body_ApplyLinearImpulseToCenter".}
        ## Apply an impulse to the center of mass. This immediately modifies the velocity.
        ## 
        ## The impulse is ignored if the body is not awake. This optionally wakes the body.
        ## 
        ## ``bodyId`` - The body id
        ## 
        ## ``impulse`` - the world impulse vector, typically in N*s or kg*m/s.
        ## 
        ## ``wake`` - also wake up the body
        ## 
        ## .. warning:: 
        ##      This should be used for one-shot impulses. If you need a steady force,
        ##      use a force instead, which will work better with the sub-stepping solver.


when not defined(b2Body_ApplyAngularImpulse):
    proc b2Body_ApplyAngularImpulse*(bodyId: b2BodyId; impulse: cfloat; wake: bool): void {.cdecl, importc: "b2Body_ApplyAngularImpulse".}
        ## Apply an angular impulse. The impulse is ignored if the body is not awake.
        ## 
        ## This optionally wakes the body.
        ## 
        ## ``bodyId`` - The body id
        ## 
        ## ``impulse`` - the angular impulse, typically in units of kg*m*m/s
        ## 
        ## ``wake`` - also wake up the body
        ## 
        ## .. warning:: 
        ##      This should be used for one-shot impulses. If you need a steady force,
        ##      use a force instead, which will work better with the sub-stepping solver.


when not defined(b2Body_GetMass):
    proc b2Body_GetMass*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetMass".}
        ## Get the mass of the body, typically in kilograms


when not defined(b2Body_GetInertiaTensor):
    proc b2Body_GetInertiaTensor*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetInertiaTensor".}
        ## Get the inertia tensor of the body, typically in kg\*m^2


when not defined(b2Body_GetLocalCenterOfMass):
    proc b2Body_GetLocalCenterOfMass*(bodyId: b2BodyId): b2Vec2 {.cdecl, importc: "b2Body_GetLocalCenterOfMass".}
        ## Get the center of mass position of the body in local space


when not defined(b2Body_GetWorldCenterOfMass):
    proc b2Body_GetWorldCenterOfMass*(bodyId: b2BodyId): b2Vec2 {.cdecl, importc: "b2Body_GetWorldCenterOfMass".}
        ## Get the center of mass position of the body in world space


when not defined(b2Body_SetMassData):
    proc b2Body_SetMassData*(bodyId: b2BodyId; massData: b2MassData): void {.cdecl, importc: "b2Body_SetMassData".}
        ## Override the body's mass properties. Normally this is computed automatically using the
        ## shape geometry and density. This information is lost if a shape is added or removed or if the
        ## body type changes.


when not defined(b2Body_GetMassData):
    proc b2Body_GetMassData*(bodyId: b2BodyId): b2MassData {.cdecl, importc: "b2Body_GetMassData".}
        ## Get the mass data for a body


when not defined(b2Body_ApplyMassFromShapes):
    proc b2Body_ApplyMassFromShapes*(bodyId: b2BodyId): void {.cdecl, importc: "b2Body_ApplyMassFromShapes".}
        ## This update the mass properties to the sum of the mass properties of the shapes.
        ## 
        ## This normally does not need to be called unless you called `b2Body_SetMassData`_ to override
        ## the mass and you later want to reset the mass.
        ## 
        ## You may also use this when automatic mass computation has been disabled.
        ## 
        ## You should call this regardless of body type.


when not defined(b2Body_SetAutomaticMass):
    proc b2Body_SetAutomaticMass*(bodyId: b2BodyId; automaticMass: bool): void {.cdecl, importc: "b2Body_SetAutomaticMass".}
        ## Set the automatic mass setting. Normally this is set in `b2BodyDef`_ before creation.


when not defined(b2Body_GetAutomaticMass):
    proc b2Body_GetAutomaticMass*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_GetAutomaticMass".}
        ## Get the automatic mass setting


when not defined(b2Body_SetLinearDamping):
    proc b2Body_SetLinearDamping*(bodyId: b2BodyId; linearDamping: cfloat): void {.cdecl, importc: "b2Body_SetLinearDamping".}
        ## Adjust the linear damping. Normally this is set in `b2BodyDef`_ before creation.


when not defined(b2Body_GetLinearDamping):
    proc b2Body_GetLinearDamping*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetLinearDamping".}
        ## Get the current linear damping.


when not defined(b2Body_SetAngularDamping):
    proc b2Body_SetAngularDamping*(bodyId: b2BodyId; angularDamping: cfloat): void {.cdecl, importc: "b2Body_SetAngularDamping".}
        ## Adjust the angular damping. Normally this is set in `b2BodyDef`_ before creation.


when not defined(b2Body_GetAngularDamping):
    proc b2Body_GetAngularDamping*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetAngularDamping".}
        ## Get the current angular damping.


when not defined(b2Body_SetGravityScale):
    proc b2Body_SetGravityScale*(bodyId: b2BodyId; gravityScale: cfloat): void {.cdecl, importc: "b2Body_SetGravityScale".}
        ## Adjust the gravity scale. Normally this is set in `b2BodyDef`_ before creation.


when not defined(b2Body_GetGravityScale):
    proc b2Body_GetGravityScale*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetGravityScale".}
        ## Get the current gravity scale


when not defined(b2Body_IsAwake):
    proc b2Body_IsAwake*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_IsAwake".}
        ## Returns true if this body is awake


when not defined(b2Body_SetAwake):
    proc b2Body_SetAwake*(bodyId: b2BodyId; awake: bool): void {.cdecl, importc: "b2Body_SetAwake".}
        ## Wake a body from sleep. This wakes the entire island the body is touching.
        ## 
        ## .. warning:: 
        ##      Putting a body to sleep will put the entire island of bodies touching this body to sleep,
        ##      which can be expensive and possibly unintuitive.


when not defined(b2Body_EnableSleep):
    proc b2Body_EnableSleep*(bodyId: b2BodyId; enableSleep: bool): void {.cdecl, importc: "b2Body_EnableSleep".}
        ## Enable or disable sleeping for this body. If sleeping is disabled the body will wake.


when not defined(b2Body_IsSleepEnabled):
    proc b2Body_IsSleepEnabled*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_IsSleepEnabled".}
        ## Returns true if sleeping is enabled for this body


when not defined(b2Body_SetSleepThreshold):
    proc b2Body_SetSleepThreshold*(bodyId: b2BodyId; sleepVelocity: cfloat): void {.cdecl, importc: "b2Body_SetSleepThreshold".}
        ## Set the sleep threshold, typically in meters per second


when not defined(b2Body_GetSleepThreshold):
    proc b2Body_GetSleepThreshold*(bodyId: b2BodyId): cfloat {.cdecl, importc: "b2Body_GetSleepThreshold".}
        ## Get the sleep threshold, typically in meters per second.


when not defined(b2Body_IsEnabled):
    proc b2Body_IsEnabled*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_IsEnabled".}
        ## Returns true if this body is enabled


when not defined(b2Body_Disable):
    proc b2Body_Disable*(bodyId: b2BodyId): void {.cdecl, importc: "b2Body_Disable".}
        ## Disable a body by removing it completely from the simulation. This is expensive.


when not defined(b2Body_Enable):
    proc b2Body_Enable*(bodyId: b2BodyId): void {.cdecl, importc: "b2Body_Enable".}
        ## Enable a body by adding it to the simulation. This is expensive.


when not defined(b2Body_SetFixedRotation):
    proc b2Body_SetFixedRotation*(bodyId: b2BodyId; flag: bool): void {.cdecl, importc: "b2Body_SetFixedRotation".}
        ## Set this body to have fixed rotation. This causes the mass to be reset in all cases.


when not defined(b2Body_IsFixedRotation):
    proc b2Body_IsFixedRotation*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_IsFixedRotation".}
        ## Does this body have fixed rotation?


when not defined(b2Body_SetBullet):
    proc b2Body_SetBullet*(bodyId: b2BodyId; flag: bool): void {.cdecl, importc: "b2Body_SetBullet".}
        ## Set this body to be a bullet. A bullet does continuous collision detection
        ## against dynamic bodies (but not other bullets).


when not defined(b2Body_IsBullet):
    proc b2Body_IsBullet*(bodyId: b2BodyId): bool {.cdecl, importc: "b2Body_IsBullet".}
        ## Is this body a bullet?


when not defined(b2Body_EnableHitEvents):
    proc b2Body_EnableHitEvents*(bodyId: b2BodyId; enableHitEvents: bool): void {.cdecl, importc: "b2Body_EnableHitEvents".}
        ## Enable/disable hit events on all shapes
        ## See `b2ShapeDef`_


when not defined(b2Body_GetShapeCount):
    proc b2Body_GetShapeCount*(bodyId: b2BodyId): cint {.cdecl, importc: "b2Body_GetShapeCount".}
        ## Get the number of shapes on this body


when not defined(b2Body_GetShapes):
    proc b2Body_GetShapes*(bodyId: b2BodyId; shapeArray: ptr b2ShapeId;
                capacity: cint): cint {.cdecl, importc: "b2Body_GetShapes".}
        ## Get the shape ids for all shapes on this body, up to the provided capacity.
        ## 
        ## Returns the number of shape ids stored in the user array


when not defined(b2Body_GetJointCount):
    proc b2Body_GetJointCount*(bodyId: b2BodyId): cint {.cdecl, importc: "b2Body_GetJointCount".}
        ## Get the number of joints on this body


when not defined(b2Body_GetJoints):
    proc b2Body_GetJoints*(bodyId: b2BodyId; jointArray: ptr b2JointId;
                capacity: cint): cint {.cdecl, importc: "b2Body_GetJoints".}
        ## Get the joint ids for all joints on this body, up to the provided capacity
        ## 
        ## Returns the number of joint ids stored in the user array


when not defined(b2Body_GetContactCapacity):
    proc b2Body_GetContactCapacity*(bodyId: b2BodyId): cint {.cdecl, importc: "b2Body_GetContactCapacity".}
        ## Get the maximum capacity required for retrieving all the touching contacts on a body


when not defined(b2Body_GetContactData):
    proc b2Body_GetContactData*(bodyId: b2BodyId; contactData: ptr b2ContactData;
                capacity: cint): cint {.cdecl, importc: "b2Body_GetContactData".}
        ## Get the touching contact data for a body


when not defined(b2Body_ComputeAABB):
    proc b2Body_ComputeAABB*(bodyId: b2BodyId): b2AABB {.cdecl, importc: "b2Body_ComputeAABB".}
        ## Get the current world AABB that contains all the attached shapes. Note that this may not encompass the body origin.
        ## 
        ## If there are no shapes attached then the returned AABB is empty and centered on the body origin.


when not defined(b2CreateCircleShape):
    proc b2CreateCircleShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                circle: ptr b2Circle): b2ShapeId {.cdecl, importc: "b2CreateCircleShape".}
        ## Create a circle shape and attach it to a body. The shape definition and geometry are fully cloned.
        ## 
        ## Contacts are not created until the next time step.
        ## 
        ## Returns the shape id for accessing the shape


when not defined(b2CreateSegmentShape):
    proc b2CreateSegmentShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                segment: ptr b2Segment): b2ShapeId {.cdecl, importc: "b2CreateSegmentShape".}
        ## Create a line segment shape and attach it to a body. The shape definition and geometry are fully cloned.
        ## 
        ## Contacts are not created until the next time step.
        ## 
        ## Returns the shape id for accessing the shape


when not defined(b2CreateCapsuleShape):
    proc b2CreateCapsuleShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                capsule: ptr b2Capsule): b2ShapeId {.cdecl, importc: "b2CreateCapsuleShape".}
        ## Create a capsule shape and attach it to a body. The shape definition and geometry are fully cloned.
        ## 
        ## Contacts are not created until the next time step.
        ## 
        ## Returns the shape id for accessing the shape


when not defined(b2CreatePolygonShape):
    proc b2CreatePolygonShape*(bodyId: b2BodyId; def: ptr b2ShapeDef;
                polygon: ptr b2Polygon): b2ShapeId {.cdecl, importc: "b2CreatePolygonShape".}
        ## Create a polygon shape and attach it to a body. The shape definition and geometry are fully cloned.
        ## 
        ## Contacts are not created until the next time step.
        ## 
        ## Returns the shape id for accessing the shape


when not defined(b2DestroyShape):
    proc b2DestroyShape*(shapeId: b2ShapeId): void {.cdecl, importc: "b2DestroyShape".}
        ## Destroy a shape


when not defined(b2Shape_IsValid):
    proc b2Shape_IsValid*(id: b2ShapeId): bool {.cdecl, importc: "b2Shape_IsValid".}
        ## Shape identifier validation. Provides validation for up to 64K allocations.


when not defined(b2Shape_GetType):
    proc b2Shape_GetType*(shapeId: b2ShapeId): b2ShapeType {.cdecl, importc: "b2Shape_GetType".}
        ## Get the type of a shape


when not defined(b2Shape_GetBody):
    proc b2Shape_GetBody*(shapeId: b2ShapeId): b2BodyId {.cdecl, importc: "b2Shape_GetBody".}
        ## Get the id of the body that a shape is attached to


when not defined(b2Shape_IsSensor):
    proc b2Shape_IsSensor*(shapeId: b2ShapeId): bool {.cdecl, importc: "b2Shape_IsSensor".}
        ## Returns true If the shape is a sensor


when not defined(b2Shape_SetUserData):
    proc b2Shape_SetUserData*(shapeId: b2ShapeId; userData: pointer): void {.cdecl, importc: "b2Shape_SetUserData".}
        ## Set the user data for a shape


when not defined(b2Shape_GetUserData):
    proc b2Shape_GetUserData*(shapeId: b2ShapeId): pointer {.cdecl, importc: "b2Shape_GetUserData".}
        ## Get the user data for a shape. This is useful when you get a shape id
        ## from an event or query.


when not defined(b2Shape_SetDensity):
    proc b2Shape_SetDensity*(shapeId: b2ShapeId; density: cfloat): void {.cdecl, importc: "b2Shape_SetDensity".}
        ## Set the mass density of a shape, typically in kg/m^2.
        ## 
        ## This will not update the mass properties on the parent body.
        ## 
        ## See `b2ShapeDef`_, `b2Body_ApplyMassFromShapes`_


when not defined(b2Shape_GetDensity):
    proc b2Shape_GetDensity*(shapeId: b2ShapeId): cfloat {.cdecl, importc: "b2Shape_GetDensity".}
        ## Get the density of a shape, typically in kg/m^2


when not defined(b2Shape_SetFriction):
    proc b2Shape_SetFriction*(shapeId: b2ShapeId; friction: cfloat): void {.cdecl, importc: "b2Shape_SetFriction".}
        ## Set the friction on a shape


when not defined(b2Shape_GetFriction):
    proc b2Shape_GetFriction*(shapeId: b2ShapeId): cfloat {.cdecl, importc: "b2Shape_GetFriction".}
        ## Get the friction of a shape


when not defined(b2Shape_SetRestitution):
    proc b2Shape_SetRestitution*(shapeId: b2ShapeId; restitution: cfloat): void {.cdecl, importc: "b2Shape_SetRestitution".}
        ## Set the shape restitution (bounciness)


when not defined(b2Shape_GetRestitution):
    proc b2Shape_GetRestitution*(shapeId: b2ShapeId): cfloat {.cdecl, importc: "b2Shape_GetRestitution".}
        ## Get the shape restitution


when not defined(b2Shape_GetFilter):
    proc b2Shape_GetFilter*(shapeId: b2ShapeId): b2Filter {.cdecl, importc: "b2Shape_GetFilter".}
        ## Get the shape filter


when not defined(b2Shape_SetFilter):
    proc b2Shape_SetFilter*(shapeId: b2ShapeId; filter: b2Filter): void {.cdecl, importc: "b2Shape_SetFilter".}
        ## Set the current filter. This is almost as expensive as recreating the shape.


when not defined(b2Shape_EnableSensorEvents):
    proc b2Shape_EnableSensorEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl, importc: "b2Shape_EnableSensorEvents".}
        ## Enable sensor events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors.


when not defined(b2Shape_AreSensorEventsEnabled):
    proc b2Shape_AreSensorEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl, importc: "b2Shape_AreSensorEventsEnabled".}
        ## Returns true if sensor events are enabled


when not defined(b2Shape_EnableContactEvents):
    proc b2Shape_EnableContactEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl, importc: "b2Shape_EnableContactEvents".}
        ## Enable contact events for this shape. Only applies to kinematic and dynamic bodies. Ignored for sensors.


when not defined(b2Shape_AreContactEventsEnabled):
    proc b2Shape_AreContactEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl, importc: "b2Shape_AreContactEventsEnabled".}
        ## Returns true if contact events are enabled


when not defined(b2Shape_EnablePreSolveEvents):
    proc b2Shape_EnablePreSolveEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl, importc: "b2Shape_EnablePreSolveEvents".}
        ## Enable pre-solve contact events for this shape. Only applies to dynamic bodies. These are expensive
        ## and must be carefully handled due to multithreading. Ignored for sensors.


when not defined(b2Shape_ArePreSolveEventsEnabled):
    proc b2Shape_ArePreSolveEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl, importc: "b2Shape_ArePreSolveEventsEnabled".}
        ## Returns true if pre-solve events are enabled


when not defined(b2Shape_EnableHitEvents):
    proc b2Shape_EnableHitEvents*(shapeId: b2ShapeId; flag: bool): void {.cdecl, importc: "b2Shape_EnableHitEvents".}
        ## Enable contact hit events for this shape. Ignored for sensors.


when not defined(b2Shape_AreHitEventsEnabled):
    proc b2Shape_AreHitEventsEnabled*(shapeId: b2ShapeId): bool {.cdecl, importc: "b2Shape_AreHitEventsEnabled".}
        ## Returns true if hit events are enabled


when not defined(b2Shape_TestPoint):
    proc b2Shape_TestPoint*(shapeId: b2ShapeId; point: b2Vec2): bool {.cdecl, importc: "b2Shape_TestPoint".}
        ## Test a point for overlap with a shape


when not defined(b2Shape_RayCast):
    proc b2Shape_RayCast*(shapeId: b2ShapeId; origin: b2Vec2; translation: b2Vec2): b2CastOutput {.cdecl, importc: "b2Shape_RayCast".}
        ## Ray cast a shape directly


when not defined(b2Shape_GetCircle):
    proc b2Shape_GetCircle*(shapeId: b2ShapeId): b2Circle {.cdecl, importc: "b2Shape_GetCircle".}
        ## Get a copy of the shape's circle. Asserts the type is correct.


when not defined(b2Shape_GetSegment):
    proc b2Shape_GetSegment*(shapeId: b2ShapeId): b2Segment {.cdecl, importc: "b2Shape_GetSegment".}
        ## Get a copy of the shape's line segment. Asserts the type is correct.


when not defined(b2Shape_GetSmoothSegment):
    proc b2Shape_GetSmoothSegment*(shapeId: b2ShapeId): b2SmoothSegment {.cdecl, importc: "b2Shape_GetSmoothSegment".}
        ## Get a copy of the shape's smooth line segment. These come from chain shapes.
        ## 
        ## Asserts the type is correct.


when not defined(b2Shape_GetCapsule):
    proc b2Shape_GetCapsule*(shapeId: b2ShapeId): b2Capsule {.cdecl, importc: "b2Shape_GetCapsule".}
        ## Get a copy of the shape's capsule. Asserts the type is correct.


when not defined(b2Shape_GetPolygon):
    proc b2Shape_GetPolygon*(shapeId: b2ShapeId): b2Polygon {.cdecl, importc: "b2Shape_GetPolygon".}
        ## Get a copy of the shape's convex polygon. Asserts the type is correct.


when not defined(b2Shape_SetCircle):
    proc b2Shape_SetCircle*(shapeId: b2ShapeId; circle: ptr b2Circle): void {.cdecl, importc: "b2Shape_SetCircle".}
        ## Allows you to change a shape to be a circle or update the current circle.
        ## 
        ## This does not modify the mass properties.
        ## 
        ## See `b2Body_ApplyMassFromShapes`_


when not defined(b2Shape_SetCapsule):
    proc b2Shape_SetCapsule*(shapeId: b2ShapeId; capsule: ptr b2Capsule): void {.cdecl, importc: "b2Shape_SetCapsule".}
        ## Allows you to change a shape to be a capsule or update the current capsule.
        ## 
        ## This does not modify the mass properties.
        ## 
        ## See `b2Body_ApplyMassFromShapes`_


when not defined(b2Shape_SetSegment):
    proc b2Shape_SetSegment*(shapeId: b2ShapeId; segment: ptr b2Segment): void {.cdecl, importc: "b2Shape_SetSegment".}
        ## Allows you to change a shape to be a segment or update the current segment.


when not defined(b2Shape_SetPolygon):
    proc b2Shape_SetPolygon*(shapeId: b2ShapeId; polygon: ptr b2Polygon): void {.cdecl, importc: "b2Shape_SetPolygon".}
        ## Allows you to change a shape to be a polygon or update the current polygon.
        ## 
        ## This does not modify the mass properties.
        ## 
        ## See `b2Body_ApplyMassFromShapes`_


when not defined(b2Shape_GetParentChain):
    proc b2Shape_GetParentChain*(shapeId: b2ShapeId): b2ChainId {.cdecl, importc: "b2Shape_GetParentChain".}
        ## Get the parent chain id if the shape type is b2_smoothSegmentShape, otherwise
        ## returns b2_nullChainId.


when not defined(b2Shape_GetContactCapacity):
    proc b2Shape_GetContactCapacity*(shapeId: b2ShapeId): cint {.cdecl, importc: "b2Shape_GetContactCapacity".}
        ## Get the maximum capacity required for retrieving all the touching contacts on a shape


when not defined(b2Shape_GetContactData):
    proc b2Shape_GetContactData*(shapeId: b2ShapeId; contactData: ptr b2ContactData;
                capacity: cint): cint {.cdecl, importc: "b2Shape_GetContactData".}
        ## Get the touching contact data for a shape. The provided shapeId will be either shapeIdA or shapeIdB on the contact data.


when not defined(b2Shape_GetAABB):
    proc b2Shape_GetAABB*(shapeId: b2ShapeId): b2AABB {.cdecl, importc: "b2Shape_GetAABB".}
        ## Get the current world AABB


when not defined(b2Shape_GetClosestPoint):
    proc b2Shape_GetClosestPoint*(shapeId: b2ShapeId; target: b2Vec2): b2Vec2 {.cdecl, importc: "b2Shape_GetClosestPoint".}
        ## Get the closest point on a shape to a target point. Target and result are in world space.


when not defined(b2CreateChain):
    proc b2CreateChain*(bodyId: b2BodyId; def: ptr b2ChainDef): b2ChainId {.cdecl, importc: "b2CreateChain".}
        ## Create a chain shape
        ## 
        ## See `b2ChainDef`_ for details


when not defined(b2DestroyChain):
    proc b2DestroyChain*(chainId: b2ChainId): void {.cdecl, importc: "b2DestroyChain".}
        ## Destroy a chain shape


when not defined(b2Chain_SetFriction):
    proc b2Chain_SetFriction*(chainId: b2ChainId; friction: cfloat): void {.cdecl, importc: "b2Chain_SetFriction".}
        ## Set the chain friction


when not defined(b2Chain_SetRestitution):
    proc b2Chain_SetRestitution*(chainId: b2ChainId; restitution: cfloat): void {.cdecl, importc: "b2Chain_SetRestitution".}
        ## Set the chain restitution (bounciness)


when not defined(b2Chain_IsValid):
    proc b2Chain_IsValid*(id: b2ChainId): bool {.cdecl, importc: "b2Chain_IsValid".}
        ## Chain identifier validation. Provides validation for up to 64K allocations.


when not defined(b2DestroyJoint):
    proc b2DestroyJoint*(jointId: b2JointId): void {.cdecl, importc: "b2DestroyJoint".}
        ## Destroy a joint


when not defined(b2Joint_IsValid):
    proc b2Joint_IsValid*(id: b2JointId): bool {.cdecl, importc: "b2Joint_IsValid".}
        ## Joint identifier validation. Provides validation for up to 64K allocations.


when not defined(b2Joint_GetType):
    proc b2Joint_GetType*(jointId: b2JointId): b2JointType {.cdecl, importc: "b2Joint_GetType".}
        ## Get the joint type


when not defined(b2Joint_GetBodyA):
    proc b2Joint_GetBodyA*(jointId: b2JointId): b2BodyId {.cdecl, importc: "b2Joint_GetBodyA".}
        ## Get body A id on a joint


when not defined(b2Joint_GetBodyB):
    proc b2Joint_GetBodyB*(jointId: b2JointId): b2BodyId {.cdecl, importc: "b2Joint_GetBodyB".}
        ## Get body B id on a joint


when not defined(b2Joint_GetLocalAnchorA):
    proc b2Joint_GetLocalAnchorA*(jointId: b2JointId): b2Vec2 {.cdecl, importc: "b2Joint_GetLocalAnchorA".}
        ## Get the local anchor on body A


when not defined(b2Joint_GetLocalAnchorB):
    proc b2Joint_GetLocalAnchorB*(jointId: b2JointId): b2Vec2 {.cdecl, importc: "b2Joint_GetLocalAnchorB".}
        ## Get the local anchor on body B

when not defined(b2Joint_SetCollideConnected):
    proc b2Joint_SetCollideConnected*(jointId: b2JointId; shouldCollide: bool): void {.cdecl, importc: "b2Joint_SetCollideConnected".}
        ## Toggle collision between connected bodies


when not defined(b2Joint_GetCollideConnected):
    proc b2Joint_GetCollideConnected*(jointId: b2JointId): bool {.cdecl, importc: "b2Joint_GetCollideConnected".}
        ## Is collision allowed between connected bodies?


when not defined(b2Joint_SetUserData):
    proc b2Joint_SetUserData*(jointId: b2JointId; userData: pointer): void {.cdecl, importc: "b2Joint_SetUserData".}
        ## Set the user data on a joint


when not defined(b2Joint_GetUserData):
    proc b2Joint_GetUserData*(jointId: b2JointId): pointer {.cdecl, importc: "b2Joint_GetUserData".}
        ## Get the user data on a joint


when not defined(b2Joint_WakeBodies):
    proc b2Joint_WakeBodies*(jointId: b2JointId): void {.cdecl, importc: "b2Joint_WakeBodies".}
        ## Wake the bodies connect to this joint


when not defined(b2Joint_GetConstraintForce):
    proc b2Joint_GetConstraintForce*(jointId: b2JointId): b2Vec2 {.cdecl, importc: "b2Joint_GetConstraintForce".}
        ## Get the current constraint force for this joint


when not defined(b2Joint_GetConstraintTorque):
    proc b2Joint_GetConstraintTorque*(jointId: b2JointId): cfloat {.cdecl, importc: "b2Joint_GetConstraintTorque".}
        ## Get the current constraint torque for this joint


when not defined(b2CreateDistanceJoint):
    proc b2CreateDistanceJoint*(worldId: b2WorldId; def: ptr b2DistanceJointDef): b2JointId {.cdecl, importc: "b2CreateDistanceJoint".}
        ## Create a distance joint
        ## 
        ## See `b2DistanceJointDef`_ for details


when not defined(b2DistanceJoint_SetLength):
    proc b2DistanceJoint_SetLength*(jointId: b2JointId; length: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetLength".}
        ## Set the rest length of a distance joint
        ## 
        ## ``jointId`` - The id for a distance joint
        ## 
        ## ``length`` - The new distance joint length


when not defined(b2DistanceJoint_GetLength):
    proc b2DistanceJoint_GetLength*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetLength".}
        ## Get the rest length of a distance joint


when not defined(b2DistanceJoint_EnableSpring):
    proc b2DistanceJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.cdecl, importc: "b2DistanceJoint_EnableSpring".}
        ## Enable/disable the distance joint spring. When disabled the distance joint is rigid.


when not defined(b2DistanceJoint_IsSpringEnabled):
    proc b2DistanceJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2DistanceJoint_IsSpringEnabled".}
        ## Is the distance joint spring enabled?


when not defined(b2DistanceJoint_SetSpringHertz):
    proc b2DistanceJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetSpringHertz".}
        ## Set the spring stiffness in Hertz


when not defined(b2DistanceJoint_SetSpringDampingRatio):
    proc b2DistanceJoint_SetSpringDampingRatio*(jointId: b2JointId; dampingRatio: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetSpringDampingRatio".}
        ## Set the spring damping ratio, non-dimensional


when not defined(b2DistanceJoint_GetHertz):
    proc b2DistanceJoint_GetHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetHertz".}
        ## Get the spring Hertz


when not defined(b2DistanceJoint_GetDampingRatio):
    proc b2DistanceJoint_GetDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetDampingRatio".}
        ## Get the spring damping ratio


when not defined(b2DistanceJoint_EnableLimit):
    proc b2DistanceJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.cdecl, importc: "b2DistanceJoint_EnableLimit".}
        ## Enable joint limit. The limit only works if the joint spring is enabled. Otherwise the joint is rigid
        ## and the limit has no effect.


when not defined(b2DistanceJoint_IsLimitEnabled):
    proc b2DistanceJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2DistanceJoint_IsLimitEnabled".}
        ## Is the distance joint limit enabled?


when not defined(b2DistanceJoint_SetLengthRange):
    proc b2DistanceJoint_SetLengthRange*(jointId: b2JointId; minLength: cfloat;
                    maxLength: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetLengthRange".}
        ## Set the minimum and maximum length parameters of a distance joint


when not defined(b2DistanceJoint_GetMinLength):
    proc b2DistanceJoint_GetMinLength*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetMinLength".}
        ## Get the distance joint minimum length


when not defined(b2DistanceJoint_GetMaxLength):
    proc b2DistanceJoint_GetMaxLength*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetMaxLength".}
        ## Get the distance joint maximum length


when not defined(b2DistanceJoint_GetCurrentLength):
    proc b2DistanceJoint_GetCurrentLength*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetCurrentLength".}
        ## Get the current length of a distance joint


when not defined(b2DistanceJoint_EnableMotor):
    proc b2DistanceJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.cdecl, importc: "b2DistanceJoint_EnableMotor".}
        ## Enable/disable the distance joint motor


when not defined(b2DistanceJoint_IsMotorEnabled):
    proc b2DistanceJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2DistanceJoint_IsMotorEnabled".}
        ## Is the distance joint motor enabled?


when not defined(b2DistanceJoint_SetMotorSpeed):
    proc b2DistanceJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetMotorSpeed".}
        ## Set the distance joint motor speed, typically in meters per second


when not defined(b2DistanceJoint_GetMotorSpeed):
    proc b2DistanceJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetMotorSpeed".}
        ## Get the distance joint motor speed, typically in meters per second


when not defined(b2DistanceJoint_SetMaxMotorForce):
    proc b2DistanceJoint_SetMaxMotorForce*(jointId: b2JointId; force: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetMaxMotorForce".}
        ## Set the distance joint maximum motor force, typically in newtons


when not defined(b2DistanceJoint_GetMaxMotorForce):
    proc b2DistanceJoint_GetMaxMotorForce*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetMaxMotorForce".}
        ## Get the distance joint maximum motor force, typically in newtons


when not defined(b2DistanceJoint_GetMotorForce):
    proc b2DistanceJoint_GetMotorForce*(jointId: b2JointId): cfloat {.cdecl, importc: "b2DistanceJoint_GetMotorForce".}
        ## Get the distance joint current motor force, typically in newtons


when not defined(b2CreateMotorJoint):
    proc b2CreateMotorJoint*(worldId: b2WorldId; def: ptr b2MotorJointDef): b2JointId {.cdecl, importc: "b2CreateMotorJoint".}
        ## Create a motor joint
        ## 
        ## See `b2MotorJointDef`_ for details


when not defined(b2MotorJoint_SetLinearOffset):
    proc b2MotorJoint_SetLinearOffset*(jointId: b2JointId; linearOffset: b2Vec2): void {.cdecl, importc: "b2MotorJoint_SetLinearOffset".}
        ## Set the motor joint linear offset target


when not defined(b2MotorJoint_GetLinearOffset):
    proc b2MotorJoint_GetLinearOffset*(jointId: b2JointId): b2Vec2 {.cdecl, importc: "b2MotorJoint_GetLinearOffset".}
        ## Get the motor joint linear offset target


when not defined(b2MotorJoint_SetAngularOffset):
    proc b2MotorJoint_SetAngularOffset*(jointId: b2JointId; angularOffset: cfloat): void {.cdecl, importc: "b2MotorJoint_SetAngularOffset".}
        ## Set the motor joint angular offset target in radians


when not defined(b2MotorJoint_GetAngularOffset):
    proc b2MotorJoint_GetAngularOffset*(jointId: b2JointId): cfloat {.cdecl, importc: "b2MotorJoint_GetAngularOffset".}
        ## Get the motor joint angular offset target in radians


when not defined(b2MotorJoint_SetMaxForce):
    proc b2MotorJoint_SetMaxForce*(jointId: b2JointId; maxForce: cfloat): void {.cdecl, importc: "b2MotorJoint_SetMaxForce".}
        ## Set the motor joint maximum force, typically in newtons


when not defined(b2MotorJoint_GetMaxForce):
    proc b2MotorJoint_GetMaxForce*(jointId: b2JointId): cfloat {.cdecl, importc: "b2MotorJoint_GetMaxForce".}
        ## Get the motor joint maximum force, typically in newtons


when not defined(b2MotorJoint_SetMaxTorque):
    proc b2MotorJoint_SetMaxTorque*(jointId: b2JointId; maxTorque: cfloat): void {.cdecl, importc: "b2MotorJoint_SetMaxTorque".}
        ## Set the motor joint maximum torque, typically in newton-meters


when not defined(b2MotorJoint_GetMaxTorque):
    proc b2MotorJoint_GetMaxTorque*(jointId: b2JointId): cfloat {.cdecl,importc: "b2MotorJoint_GetMaxTorque".}
        ## Get the motor joint maximum torque, typically in newton-meters


when not defined(b2MotorJoint_SetCorrectionFactor):
    proc b2MotorJoint_SetCorrectionFactor*(jointId: b2JointId;
                        correctionFactor: cfloat): void {.cdecl, importc: "b2MotorJoint_SetCorrectionFactor".}
        ## Set the motor joint correction factor, typically in \[0, 1\]


when not defined(b2MotorJoint_GetCorrectionFactor):
    proc b2MotorJoint_GetCorrectionFactor*(jointId: b2JointId): cfloat {.cdecl, importc: "b2MotorJoint_GetCorrectionFactor".}
        ## Get the motor joint correction factor, typically in \[0, 1\]


when not defined(b2CreateMouseJoint):
    proc b2CreateMouseJoint*(worldId: b2WorldId; def: ptr b2MouseJointDef): b2JointId {.cdecl, importc: "b2CreateMouseJoint".}
        ## Create a mouse joint
        ## 
        ## See `b2MouseJointDef`_ for details


when not defined(b2MouseJoint_SetTarget):
    proc b2MouseJoint_SetTarget*(jointId: b2JointId; target: b2Vec2): void {.cdecl, importc: "b2MouseJoint_SetTarget".}
        ## Set the mouse joint target


when not defined(b2MouseJoint_GetTarget):
    proc b2MouseJoint_GetTarget*(jointId: b2JointId): b2Vec2 {.cdecl, importc: "b2MouseJoint_GetTarget".}
        ## Get the mouse joint target


when not defined(b2MouseJoint_SetSpringHertz):
    proc b2MouseJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2MouseJoint_SetSpringHertz".}
        ## Set the mouse joint spring stiffness in Hertz


when not defined(b2MouseJoint_GetSpringHertz):
    proc b2MouseJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2MouseJoint_GetSpringHertz".}
        ## Get the mouse joint spring stiffness in Hertz


when not defined(b2MouseJoint_SetSpringDampingRatio):
    proc b2MouseJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2MouseJoint_SetSpringDampingRatio".}
        ## Set the mouse joint spring damping ratio, non-dimensional


when not defined(b2MouseJoint_GetSpringDampingRatio):
    proc b2MouseJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2MouseJoint_GetSpringDampingRatio".}
        ## Get the mouse joint spring damping ratio, non-dimensional


when not defined(b2MouseJoint_SetMaxForce):
    proc b2MouseJoint_SetMaxForce*(jointId: b2JointId; maxForce: cfloat): void {.cdecl, importc: "b2MouseJoint_SetMaxForce".}
        ## Set the mouse joint maximum force, typically in newtons


when not defined(b2MouseJoint_GetMaxForce):
    proc b2MouseJoint_GetMaxForce*(jointId: b2JointId): cfloat {.cdecl, importc: "b2MouseJoint_GetMaxForce".}
        ## Get the mouse joint maximum force, typically in newtons


when not defined(b2CreatePrismaticJoint):
    proc b2CreatePrismaticJoint*(worldId: b2WorldId; def: ptr b2PrismaticJointDef): b2JointId {.cdecl, importc: "b2CreatePrismaticJoint".}
        ## Create a prismatic (slider) joint.
        ## 
        ## See `b2PrismaticJointDef`_ for details


when not defined(b2PrismaticJoint_EnableSpring):
    proc b2PrismaticJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.cdecl, importc: "b2PrismaticJoint_EnableSpring".}
        ## Enable/disable the joint spring.


when not defined(b2PrismaticJoint_IsSpringEnabled):
    proc b2PrismaticJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2PrismaticJoint_IsSpringEnabled".}
        ## Is the prismatic joint spring enabled or not?


when not defined(b2PrismaticJoint_SetSpringHertz):
    proc b2PrismaticJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetSpringHertz".}
        ## Set the prismatic joint stiffness in Hertz.
        ## 
        ## This should usually be less than a quarter of the simulation rate. For example, if the simulation
        ## runs at 60Hz then the joint stiffness should be 15Hz or less.


when not defined(b2PrismaticJoint_GetSpringHertz):
    proc b2PrismaticJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetSpringHertz".}
        ## Get the prismatic joint stiffness in Hertz


when not defined(b2PrismaticJoint_SetSpringDampingRatio):
    proc b2PrismaticJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetSpringDampingRatio".}
        ## Set the prismatic joint damping ratio (non-dimensional)


when not defined(b2PrismaticJoint_GetSpringDampingRatio):
    proc b2PrismaticJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetSpringDampingRatio".}
        ## Get the prismatic joint damping ratio (non-dimensional)


when not defined(b2PrismaticJoint_EnableLimit):
    proc b2PrismaticJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.cdecl, importc: "b2PrismaticJoint_EnableLimit".}
        ## Enable/disable a prismatic joint limit


when not defined(b2PrismaticJoint_IsLimitEnabled):
    proc b2PrismaticJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2PrismaticJoint_IsLimitEnabled".}
        ## Is the prismatic joint limit enabled?


when not defined(b2PrismaticJoint_GetLowerLimit):
    proc b2PrismaticJoint_GetLowerLimit*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetLowerLimit".}
        ## Get the prismatic joint lower limit


when not defined(b2PrismaticJoint_GetUpperLimit):
    proc b2PrismaticJoint_GetUpperLimit*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetUpperLimit".}
        ## Get the prismatic joint upper limit


when not defined(b2PrismaticJoint_SetLimits):
    proc b2PrismaticJoint_SetLimits*(jointId: b2JointId; lower: cfloat;
                    upper: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetLimits".}
        ## Set the prismatic joint limits


when not defined(b2PrismaticJoint_EnableMotor):
    proc b2PrismaticJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.cdecl, importc: "b2PrismaticJoint_EnableMotor".}
        ## Enable/disable a prismatic joint motor


when not defined(b2PrismaticJoint_IsMotorEnabled):
    proc b2PrismaticJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2PrismaticJoint_IsMotorEnabled".}
        ## Is the prismatic joint motor enabled?


when not defined(b2PrismaticJoint_SetMotorSpeed):
    proc b2PrismaticJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetMotorSpeed".}
        ## Set the prismatic joint motor speed, typically in meters per second


when not defined(b2PrismaticJoint_GetMotorSpeed):
    proc b2PrismaticJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetMotorSpeed".}
        ## Get the prismatic joint motor speed, typically in meters per second


when not defined(b2PrismaticJoint_SetMaxMotorForce):
    proc b2PrismaticJoint_SetMaxMotorForce*(jointId: b2JointId; force: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetMaxMotorForce".}
        ## Set the prismatic joint maximum motor force, typically in newtons


when not defined(b2PrismaticJoint_GetMaxMotorForce):
    proc b2PrismaticJoint_GetMaxMotorForce*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetMaxMotorForce".}
        ## Get the prismatic joint maximum motor force, typically in newtons


when not defined(b2PrismaticJoint_GetMotorForce):
    proc b2PrismaticJoint_GetMotorForce*(jointId: b2JointId): cfloat {.cdecl, importc: "b2PrismaticJoint_GetMotorForce".}
        ## Get the prismatic joint current motor force, typically in newtons


when not defined(b2CreateRevoluteJoint):
    proc b2CreateRevoluteJoint*(worldId: b2WorldId; def: ptr b2RevoluteJointDef): b2JointId {.cdecl, importc: "b2CreateRevoluteJoint".}
        ## Create a revolute joint
        ## 
        ## See `b2RevoluteJointDef`_ for details


when not defined(b2RevoluteJoint_EnableSpring):
    proc b2RevoluteJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.cdecl, importc: "b2RevoluteJoint_EnableSpring".}
        ## Enable/disable the revolute joint spring


when not defined(b2RevoluteJoint_IsLimitEnabled):
    proc b2RevoluteJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2RevoluteJoint_IsLimitEnabled".}
        ## Is the revolute joint limit enabled?


when not defined(b2RevoluteJoint_SetSpringHertz):
    proc b2RevoluteJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetSpringHertz".}
        ## Set the revolute joint spring stiffness in Hertz


when not defined(b2RevoluteJoint_GetSpringHertz):
    proc b2RevoluteJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetSpringHertz".}
        ## Get the revolute joint spring stiffness in Hertz


when not defined(b2RevoluteJoint_SetSpringDampingRatio):
    proc b2RevoluteJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetSpringDampingRatio".}
        ## Set the revolute joint spring damping ratio, non-dimensional


when not defined(b2RevoluteJoint_GetSpringDampingRatio):
    proc b2RevoluteJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetSpringDampingRatio".}
        ## Get the revolute joint spring damping ratio, non-dimensional


when not defined(b2RevoluteJoint_GetAngle):
    proc b2RevoluteJoint_GetAngle*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetAngle".}
        ## Get the revolute joint current angle in radians relative to the reference angle
        ## 
        ## See `b2RevoluteJointDef`_


when not defined(b2RevoluteJoint_EnableLimit):
    proc b2RevoluteJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.cdecl, importc: "b2RevoluteJoint_EnableLimit".}
        ## Enable/disable the revolute joint limit


when not defined(b2RevoluteJoint_GetLowerLimit):
    proc b2RevoluteJoint_GetLowerLimit*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetLowerLimit".}
        ## Get the revolute joint lower limit in radians


when not defined(b2RevoluteJoint_GetUpperLimit):
    proc b2RevoluteJoint_GetUpperLimit*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetUpperLimit".}
        ## Get the revolute joint upper limit in radians


when not defined(b2RevoluteJoint_SetLimits):
    proc b2RevoluteJoint_SetLimits*(jointId: b2JointId; lower: cfloat; upper: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetLimits".}
        ## Set the revolute joint limits in radians


when not defined(b2RevoluteJoint_EnableMotor):
    proc b2RevoluteJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.cdecl, importc: "b2RevoluteJoint_EnableMotor".}
        ## Enable/disable a revolute joint motor


when not defined(b2RevoluteJoint_IsMotorEnabled):
    proc b2RevoluteJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2RevoluteJoint_IsMotorEnabled".}
        ## Is the revolute joint motor enabled?


when not defined(b2RevoluteJoint_SetMotorSpeed):
    proc b2RevoluteJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetMotorSpeed".}
        ## Set the revolute joint motor speed in radians per second


when not defined(b2RevoluteJoint_GetMotorSpeed):
    proc b2RevoluteJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetMotorSpeed".}
        ## Get the revolute joint motor speed in radians per second


when not defined(b2RevoluteJoint_GetMotorTorque):
    proc b2RevoluteJoint_GetMotorTorque*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetMotorTorque".}
        ## Get the revolute joint current motor torque, typically in newton-meters


when not defined(b2RevoluteJoint_SetMaxMotorTorque):
    proc b2RevoluteJoint_SetMaxMotorTorque*(jointId: b2JointId; torque: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetMaxMotorTorque".}
        ## Set the revolute joint maximum motor torque, typically in newton-meters


when not defined(b2RevoluteJoint_GetMaxMotorTorque):
    proc b2RevoluteJoint_GetMaxMotorTorque*(jointId: b2JointId): cfloat {.cdecl, importc: "b2RevoluteJoint_GetMaxMotorTorque".}
        ## Get the revolute joint maximum motor torque, typically in newton-meters


when not defined(b2CreateWeldJoint):
    proc b2CreateWeldJoint*(worldId: b2WorldId; def: ptr b2WeldJointDef): b2JointId {.cdecl, importc: "b2CreateWeldJoint".}
        ## Create a weld joint
        ## 
        ## See `b2WeldJointDef`_ for details


when not defined(b2WeldJoint_SetLinearHertz):
    proc b2WeldJoint_SetLinearHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2WeldJoint_SetLinearHertz".}
        ## Set the weld joint linear stiffness in Hertz. 0 is rigid.


when not defined(b2WeldJoint_GetLinearHertz):
    proc b2WeldJoint_GetLinearHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WeldJoint_GetLinearHertz".}
        ## Get the weld joint linear stiffness in Hertz


when not defined(b2WeldJoint_SetLinearDampingRatio):
    proc b2WeldJoint_SetLinearDampingRatio*(jointId: b2JointId; dampingRatio: cfloat): void {.cdecl, importc: "b2WeldJoint_SetLinearDampingRatio".}
        ## Set the weld joint linear damping ratio (non-dimensional)


when not defined(b2WeldJoint_GetLinearDampingRatio):
    proc b2WeldJoint_GetLinearDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WeldJoint_GetLinearDampingRatio".}
        ## Get the weld joint linear damping ratio (non-dimensional)


when not defined(b2WeldJoint_SetAngularHertz):
    proc b2WeldJoint_SetAngularHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2WeldJoint_SetAngularHertz".}
        ## Set the weld joint angular stiffness in Hertz. 0 is rigid.


when not defined(b2WeldJoint_GetAngularHertz):
    proc b2WeldJoint_GetAngularHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WeldJoint_GetAngularHertz".}
        ## Get the weld joint angular stiffness in Hertz. 0 is rigid.


when not defined(b2WeldJoint_SetAngularDampingRatio):
    proc b2WeldJoint_SetAngularDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2WeldJoint_SetAngularDampingRatio".}
        ## Set weld joint angular damping ratio, non-dimensional


when not defined(b2WeldJoint_GetAngularDampingRatio):
    proc b2WeldJoint_GetAngularDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WeldJoint_GetAngularDampingRatio".}
        ## Get weld joint angular damping ratio, non-dimensional


when not defined(b2CreateWheelJoint):
    proc b2CreateWheelJoint*(worldId: b2WorldId; def: ptr b2WheelJointDef): b2JointId {.cdecl, importc: "b2CreateWheelJoint".}
        ## Create a wheel joint
        ## 
        ## See `b2WheelJointDef`_ for details


when not defined(b2WheelJoint_EnableSpring):
    proc b2WheelJoint_EnableSpring*(jointId: b2JointId; enableSpring: bool): void {.cdecl, importc: "b2WheelJoint_EnableSpring".}
        ## Enable/disable the wheel joint spring


when not defined(b2WheelJoint_IsSpringEnabled):
    proc b2WheelJoint_IsSpringEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2WheelJoint_IsSpringEnabled".}
        ## Is the wheel joint spring enabled?


when not defined(b2WheelJoint_SetSpringHertz):
    proc b2WheelJoint_SetSpringHertz*(jointId: b2JointId; hertz: cfloat): void {.cdecl, importc: "b2WheelJoint_SetSpringHertz".}
        ## Set the wheel joint stiffness in Hertz


when not defined(b2WheelJoint_GetSpringHertz):
    proc b2WheelJoint_GetSpringHertz*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetSpringHertz".}
        ## Get the wheel joint stiffness in Hertz


when not defined(b2WheelJoint_SetSpringDampingRatio):
    proc b2WheelJoint_SetSpringDampingRatio*(jointId: b2JointId;
    dampingRatio: cfloat): void {.cdecl, importc: "b2WheelJoint_SetSpringDampingRatio".}
        ## Set the wheel joint damping ratio, non-dimensional


when not defined(b2WheelJoint_GetSpringDampingRatio):
    proc b2WheelJoint_GetSpringDampingRatio*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetSpringDampingRatio".}
        ## Get the wheel joint damping ratio, non-dimensional


when not defined(b2WheelJoint_EnableLimit):
    proc b2WheelJoint_EnableLimit*(jointId: b2JointId; enableLimit: bool): void {.cdecl, importc: "b2WheelJoint_EnableLimit".}
        ## Enable/disable the wheel joint limit


when not defined(b2WheelJoint_IsLimitEnabled):
    proc b2WheelJoint_IsLimitEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2WheelJoint_IsLimitEnabled".}
        ## Is the wheel joint limit enabled?


when not defined(b2WheelJoint_GetLowerLimit):
    proc b2WheelJoint_GetLowerLimit*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetLowerLimit".}
        ## Get the wheel joint lower limit


when not defined(b2WheelJoint_GetUpperLimit):
    proc b2WheelJoint_GetUpperLimit*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetUpperLimit".}
        ## Get the wheel joint upper limit


when not defined(b2WheelJoint_SetLimits):
    proc b2WheelJoint_SetLimits*(jointId: b2JointId; lower: cfloat; upper: cfloat): void {.cdecl, importc: "b2WheelJoint_SetLimits".}
        ## Set the wheel joint limits


when not defined(b2WheelJoint_EnableMotor):
    proc b2WheelJoint_EnableMotor*(jointId: b2JointId; enableMotor: bool): void {.cdecl, importc: "b2WheelJoint_EnableMotor".}
        ## Enable/disable the wheel joint motor


when not defined(b2WheelJoint_IsMotorEnabled):
    proc b2WheelJoint_IsMotorEnabled*(jointId: b2JointId): bool {.cdecl, importc: "b2WheelJoint_IsMotorEnabled".}
        ## Is the wheel joint motor enabled?


when not defined(b2WheelJoint_SetMotorSpeed):
    proc b2WheelJoint_SetMotorSpeed*(jointId: b2JointId; motorSpeed: cfloat): void {.cdecl, importc: "b2WheelJoint_SetMotorSpeed".}
        ## Set the wheel joint motor speed in radians per second


when not defined(b2WheelJoint_GetMotorSpeed):
    proc b2WheelJoint_GetMotorSpeed*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetMotorSpeed".}
        ## Get the wheel joint motor speed in radians per second


when not defined(b2WheelJoint_SetMaxMotorTorque):
    proc b2WheelJoint_SetMaxMotorTorque*(jointId: b2JointId; torque: cfloat): void {.cdecl, importc: "b2WheelJoint_SetMaxMotorTorque".}
        ## Set the wheel joint maximum motor torque, typically in newton-meters


when not defined(b2WheelJoint_GetMaxMotorTorque):
    proc b2WheelJoint_GetMaxMotorTorque*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetMaxMotorTorque".}
        ## Get the wheel joint maximum motor torque, typically in newton-meters


when not defined(b2WheelJoint_GetMotorTorque):
    proc b2WheelJoint_GetMotorTorque*(jointId: b2JointId): cfloat {.cdecl, importc: "b2WheelJoint_GetMotorTorque".}
        ## Get the wheel joint current motor torque, typically in newton-meters



import math



# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Dot):
    proc b2Dot*(a: b2Vec2, b: b2Vec2): cfloat {.inline.} = 
        a.x * b.x + a.y * b.y


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Cross):
    proc b2Cross*(a: b2Vec2, b: b2Vec2): cfloat {.inline.} = 
        a.x * b.y - a.y * b.x


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2CrossVS):
    proc b2CrossVS*(v: b2Vec2, s: cfloat): b2Vec2 {.inline.} = 
        b2Vec2(x: s * v.y, y: -s * v.x)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2CrossSV):
    proc b2CrossSV*(s: cfloat, v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: -s * v.y, y: s * v.x)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2LeftPerp):
    proc b2LeftPerp*(v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: -v.y, y: v.x)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2RightPerp):
    proc b2RightPerp*(v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: v.y, y: -v.x)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Add):
    proc b2Add*(a: b2Vec2, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: a.x + b.x, y: a.y + b.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Sub):
    proc b2Sub*(a: b2Vec2, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: a.x - b.x, y: a.y - b.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Neg):
    proc b2Neg*(a: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: -a.x, y: -a.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Lerp):
    proc b2Lerp*(a: b2Vec2, b: b2Vec2, t: cfloat): b2Vec2 {.inline.} = 
        b2Vec2(x: (1.0f - t) * a.x + t * b.x, y: (1.0f - t) * a.y + t * b.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Mul):
    proc b2Mul*(a: b2Vec2, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: a.x * b.x, y: a.y * b.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MulSV):
    proc b2MulSV*(s: cfloat, v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: s * v.x, y: s * v.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MulAdd):
    proc b2MulAdd*(a: b2Vec2, s: cfloat, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: a.x + s * b.x, y: a.y + s * b.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MulSub):
    proc b2MulSub*(a: b2Vec2, s: cfloat, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: a.x - s * b.x, y: a.y - s * b.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Abs):
    proc b2Abs*(a: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: a.x.abs, y: a.y.abs)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Min):
    proc b2Min*(a: b2Vec2, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: min(a.x, b.x), y: min(a.y, b.y))


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Max):
    proc b2Max*(a: b2Vec2, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: max(a.x, b.x), y: max(a.y, b.y))


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Clamp):
    proc b2Clamp*(v: b2Vec2, a: b2Vec2, b: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: v.x.clamp(a.x, b.x), y: v.y.clamp(a.y, b.y))


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Length):
    proc b2Length*(v: b2Vec2): cfloat {.inline.} = 
        sqrt(v.x * v.x + v.y * v.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2LengthSquared):
    proc b2LengthSquared*(v: b2Vec2): cfloat {.inline.} = 
        v.x * v.x + v.y * v.y


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Distance):
    proc b2Distance*(a: b2Vec2, b: b2Vec2): cfloat {.inline.} = 
        let dx = b.x - a.x
        let dy = b.y - a.y
        sqrt(dx * dx + dy * dy)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2DistanceSquared):
    proc b2DistanceSquared*(a: b2Vec2, b: b2Vec2): cfloat {.inline.} = 
        let dx = b.x - a.x
        let dy = b.y - a.y
        dx * dx + dy * dy


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MakeRot):
    proc b2MakeRot*(angle: cfloat): b2Rot {.inline.} = 
        b2Rot(c: cos(angle), s: sin(angle))


# Translated from box2c/include/box2d/math_functions.h
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


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2IsNormalized):
    proc b2IsNormalized*(q: b2Rot): bool {.inline.} = 
        let qq = q.s * q.s + q.c * q.c
        1.0f - 0.0006f < qq and qq < 1.0f + 0.0006f


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2NLerp):
    proc b2NLerp*(q1: b2Rot, q2: b2Rot, t: cfloat): b2Rot {.inline.} = 
        let omt = 1.0f - t

        let q = b2Rot(
            c: omt * q1.c + t * q2.c,
            s: omt * q1.s + t * q2.s)

        b2NormalizeRot(q)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2IntegrateRotation):
    proc b2IntegrateRotation*(q1: b2Rot, deltaAngle: cfloat): b2Rot {.inline.} = 
        let q2 = b2Rot(c: q1.c - deltaAngle * q1.s, s: q1.s + deltaAngle * q1.c)
        
        let mag = sqrt(q2.s * q2.s + q2.c * q2.c)
        let invMag = if mag > 0.0: 
            1.0f / mag 
        else: 
            0.0f

        b2Rot(c: q2.c * invMag, s: q2.s * invMag)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2ComputeAngularVelocity):
    proc b2ComputeAngularVelocity*(q1: b2Rot, q2: b2Rot, inv_h: cfloat): cfloat {.inline.} = 
        inv_h * (q2.s * q1.c - q2.c * q1.s)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Rot_GetAngle):
    proc b2Rot_GetAngle*(q: b2Rot): cfloat {.inline.} = 
        arctan2(q.s, q.c)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Rot_GetXAxis):
    proc b2Rot_GetXAxis*(q: b2Rot): b2Vec2 {.inline.} = 
        b2Vec2(x: q.c, y: q.s)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2Rot_GetYAxis):
    proc b2Rot_GetYAxis*(q: b2Rot): b2Vec2 {.inline.} = 
        b2Vec2(x: -q.s, y: q.c)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MulRot):
    proc b2MulRot*(q: b2Rot, r: b2Rot): b2Rot {.inline.} = 
        b2Rot(c: q.c * r.c - q.s * r.s, s: q.s * r.c + q.c * r.s)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2InvMulRot):
    proc b2InvMulRot*(q: b2Rot, r: b2Rot): b2Rot {.inline.} = 
        b2Rot(c: q.c * r.c + q.s * r.s, s: q.c * r.s - q.s * r.c)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2RelativeAngle):
    proc b2RelativeAngle*(a: b2Rot, b: b2Rot): cfloat {.inline.} = 
        let s = b.s * a.c - b.c * a.s
        let c = b.c * a.c + b.s * a.s
        arctan2(s, c)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2UnwindAngle):
    proc b2UnwindAngle*(angle: cfloat): cfloat {.inline.} = 
        if angle < -b2_pi:
            angle + 2.0f * b2_pi
        elif angle > b2_pi:
            angle - 2.0f * b2_pi
        else:
            angle


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2RotateVector):
    proc b2RotateVector*(q: b2Rot, v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: q.c * v.x - q.s * v.y, y: q.s * v.x + q.c * v.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2InvRotateVector):
    proc b2InvRotateVector*(q: b2Rot, v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(x: q.c * v.x + q.s * v.y, y: -q.s * v.x + q.c * v.y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2TransformPoint):
    proc b2TransformPoint*(t: b2Transform, p: b2Vec2): b2Vec2 {.inline.} = 
        let x = ((t.q.c * p.x) - (t.q.s * p.y)) + t.p.x
        let y = ((t.q.s * p.x) + (t.q.c * p.y)) + t.p.y
    
        b2Vec2(x: x, y: y)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2InvTransformPoint):
    proc b2InvTransformPoint*(t: b2Transform, p: b2Vec2): b2Vec2 {.inline.} = 
        let vx = p.x - t.p.x
        let vy = p.y - t.p.y

        b2Vec2(
            x: t.q.c * vx + t.q.s * vy, 
            y: -t.q.s * vx + t.q.c * vy
        )


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MulTransforms):
    proc b2MulTransforms*(A: b2Transform, B: b2Transform): b2Transform {.inline.} = 
        let q = b2MulRot(A.q, B.q)
        let p = b2Add(b2RotateVector(A.q, B.p), A.p)
        b2Transform(q: q, p: p)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2InvMulTransforms):
    proc b2InvMulTransforms*(A: b2Transform, B: b2Transform): b2Transform {.inline.} = 
        let q = b2InvMulRot(A.q, B.q)
        let p = b2InvRotateVector(A.q, b2Sub(B.p, A.p))
        b2Transform(q: q, p: p)


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2MulMV):
    proc b2MulMV*(A: b2Mat22, v: b2Vec2): b2Vec2 {.inline.} = 
        b2Vec2(
            x: A.cx.x * v.x + A.cy.x * v.y,
            y: A.cx.y * v.x + A.cy.y * v.y
        )


# Translated from box2c/include/box2d/math_functions.h
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


# Translated from box2c/include/box2d/math_functions.h
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


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2AABB_Contains):
    proc b2AABB_Contains*(a: b2AABB, b: b2AABB): bool {.inline.} = 
        var s = true
        s = s and a.lowerBound.x <= b.lowerBound.x
        s = s and a.lowerBound.y <= b.lowerBound.y
        s = s and b.upperBound.x <= a.upperBound.x
        s = s and b.upperBound.y <= a.upperBound.y
        s


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2AABB_Center):
    proc b2AABB_Center*(a: b2AABB): b2Vec2 {.inline.} = 
        b2Vec2(
            x: 0.5f * (a.lowerBound.x + a.upperBound.x), 
            y: 0.5f * (a.lowerBound.y + a.upperBound.y)
        )


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2AABB_Extents):
    proc b2AABB_Extents*(a: b2AABB): b2Vec2 {.inline.} = 
        b2Vec2(
            x: 0.5f * (a.upperBound.x - a.lowerBound.x), 
            y: 0.5f * (a.upperBound.y - a.lowerBound.y)
        )


# Translated from box2c/include/box2d/math_functions.h
when not defined(b2AABB_Union):
    proc b2AABB_Union*(a: b2AABB, b: b2AABB): b2AABB {.inline.} = 
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


type
  enumb2toistate* {.size: sizeof(cuint).} = enum
    b2toistateunknown = 0, b2toistatefailed = 1, b2toistateoverlapped = 2,
    b2toistatehit = 3, b2toistateseparated = 4
type
  enumb2bodytype* {.size: sizeof(cuint).} = enum
    b2staticbody = 0, b2kinematicbody = 1, b2dynamicbody = 2,
    b2bodytypecount = 3
type
  enumb2shapetype* {.size: sizeof(cuint).} = enum
    b2circleshape = 0, b2capsuleshape = 1, b2segmentshape = 2,
    b2polygonshape = 3, b2smoothsegmentshape = 4, b2shapetypecount = 5
type
  enumb2jointtype* {.size: sizeof(cuint).} = enum
    b2distancejoint = 0, b2motorjoint = 1, b2mousejoint = 2,
    b2prismaticjoint = 3, b2revolutejoint = 4, b2weldjoint = 5, b2wheeljoint = 6
type
  enumb2hexcolor* {.size: sizeof(cuint).} = enum
    b2colorblack = 0, b2colornavy = 128, b2colordarkblue = 139,
    b2colormediumblue = 205, b2colorblue = 255, b2colordarkgreen = 25600,
    b2colorteal = 32896, b2colordarkcyan = 35723, b2colordeepskyblue = 49151,
    b2colordarkturquoise = 52945, b2colormediumspringgreen = 64154,
    b2colorgreen = 65280, b2colorspringgreen = 65407, b2coloraqua = 65535,
    b2colormidnightblue = 1644912, b2colorgray1 = 1710618,
    b2colordodgerblue = 2003199, b2colorlightseagreen = 2142890,
    b2colorforestgreen = 2263842, b2colorseagreen = 3050327,
    b2colordarkslategray = 3100495, b2colorlimegreen = 3329330,
    b2colorgray2 = 3355443, b2colormediumseagreen = 3978097,
    b2colorturquoise = 4251856, b2colorroyalblue = 4286945,
    b2colorsteelblue = 4620980, b2colordarkslateblue = 4734347,
    b2colormediumturquoise = 4772300, b2colorindigo = 4915330,
    b2colorgray3 = 5066061, b2colordarkolivegreen = 5597999,
    b2colorcadetblue = 6266528, b2colorcornflowerblue = 6591981,
    b2colorrebeccapurple = 6697881, b2colorgray4 = 6710886,
    b2colormediumaquamarine = 6737322, b2colordimgray = 6908265,
    b2colorslateblue = 6970061, b2colorolivedrab = 7048739,
    b2colorslategray = 7372944, b2colorlightslategray = 7833753,
    b2colormediumslateblue = 8087790, b2colorlawngreen = 8190976,
    b2colorgray5 = 8355711, b2colorchartreuse = 8388352,
    b2coloraquamarine = 8388564, b2colorolive = 8421376,
    b2colorlightslateblue = 8679679, b2colorskyblue = 8900331,
    b2colorlightskyblue = 8900346, b2colorblueviolet = 9055202,
    b2colordarkred = 9109504, b2colordarkmagenta = 9109643,
    b2colorsaddlebrown = 9127187, b2colordarkseagreen = 9419919,
    b2colorlightgreen = 9498256, b2colormediumpurple = 9662683,
    b2colordarkviolet = 9699539, b2colorpalegreen = 10025880,
    b2colordarkorchid = 10040012, b2colorgray6 = 10066329,
    b2coloryellowgreen = 10145074, b2colorpurple = 10494192,
    b2colorsienna = 10506797, b2colorbrown = 10824234,
    b2colordarkgray = 11119017, b2colorlightblue = 11393254,
    b2colorgreenyellow = 11403055, b2colorpaleturquoise = 11529966,
    b2colormaroon = 11546720, b2colorlightsteelblue = 11584734,
    b2colorpowderblue = 11591910, b2colorfirebrick = 11674146,
    b2colorgray7 = 11776947, b2colordarkgoldenrod = 12092939,
    b2colormediumorchid = 12211667, b2colorrosybrown = 12357519,
    b2colordarkkhaki = 12433259, b2colorgray = 12500670,
    b2colorsilver = 12632256, b2colormediumvioletred = 13047173,
    b2colorgray8 = 13421772, b2colorindianred = 13458524,
    b2colorperu = 13468991, b2colorvioletred = 13639824,
    b2colorchocolate = 13789470, b2colortan = 13808780,
    b2colorlightgray = 13882323, b2colorthistle = 14204888,
    b2colororchid = 14315734, b2colorgoldenrod = 14329120,
    b2colorpalevioletred = 14381203, b2colorcrimson = 14423100,
    b2colorgainsboro = 14474460, b2colorplum = 14524637,
    b2colorburlywood = 14596231, b2colorlightcyan = 14745599,
    b2colorgray9 = 15066597, b2colorlavender = 15132410,
    b2colordarksalmon = 15308410, b2colorviolet = 15631086,
    b2colorlightgoldenrod = 15654274, b2colorpalegoldenrod = 15657130,
    b2colorlightcoral = 15761536, b2colorkhaki = 15787660,
    b2coloraliceblue = 15792383, b2colorhoneydew = 15794160,
    b2colorazure = 15794175, b2colorsandybrown = 16032864,
    b2colorwheat = 16113331, b2colorbeige = 16119260,
    b2colorwhitesmoke = 16119285, b2colormintcream = 16121850,
    b2colorghostwhite = 16316671, b2colorsalmon = 16416882,
    b2colorantiquewhite = 16444375, b2colorlinen = 16445670,
    b2colorlightgoldenrodyellow = 16448210, b2coloroldlace = 16643558,
    b2colorred = 16711680, b2colorfuchsia = 16711935,
    b2colordeeppink = 16716947, b2colororangered = 16729344,
    b2colortomato = 16737095, b2colorhotpink = 16738740,
    b2colorcoral = 16744272, b2colordarkorange = 16747520,
    b2colorlightsalmon = 16752762, b2colororange = 16753920,
    b2colorlightpink = 16758465, b2colorpink = 16761035, b2colorgold = 16766720,
    b2colorpeachpuff = 16767673, b2colornavajowhite = 16768685,
    b2colormoccasin = 16770229, b2colorbisque = 16770244,
    b2colormistyrose = 16770273, b2colorblanchedalmond = 16772045,
    b2colorpapayawhip = 16773077, b2colorlavenderblush = 16773365,
    b2colorseashell = 16774638, b2colorcornsilk = 16775388,
    b2colorlemonchiffon = 16775885, b2colorfloralwhite = 16775920,
    b2colorsnow = 16775930, b2coloryellow = 16776960,
    b2colorlightyellow = 16777184, b2colorivory = 16777200,
    b2colorwhite = 16777215
const
  b2colorcyan* = enumb2hexcolor.b2coloraqua
const
  b2colorlime* = enumb2hexcolor.b2colorgreen
const
  b2colormagenta* = enumb2hexcolor.b2colorfuchsia
const
  b2colornavyblue* = enumb2hexcolor.b2colornavy
type
  Box2dexport* = object
type
  b2allocfcn* = proc (a0: cuint; a1: cint): pointer {.cdecl.} ## Generated based on box2c/include/box2d/base.h:48:15
  b2freefcn* = proc (a0: pointer): void {.cdecl.} ## Generated based on box2c/include/box2d/base.h:52:14
  b2assertfcn* = proc (a0: cstring; a1: cstring; a2: cint): cint {.cdecl.} ## Generated based on box2c/include/box2d/base.h:55:13
  structb2version* {.pure, inheritable, bycopy.} = object
    major*: cint             ## Generated based on box2c/include/box2d/base.h:70:16
    minor*: cint
    revision*: cint

  b2version* = structb2version ## Generated based on box2c/include/box2d/base.h:80:3
  structb2timer* {.pure, inheritable, bycopy.} = object
    startsec*: culonglong    ## Generated based on box2c/include/box2d/base.h:89:16
    startusec*: culonglong

  b2timer* = structb2timer   ## Generated based on box2c/include/box2d/base.h:99:3
  structb2vec2* {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on box2c/include/box2d/math_functions.h:22:16
    y*: cfloat

  b2vec2* = structb2vec2     ## Generated based on box2c/include/box2d/math_functions.h:26:3
  structb2rot* {.pure, inheritable, bycopy.} = object
    c*: cfloat               ## Generated based on box2c/include/box2d/math_functions.h:30:16
    s*: cfloat

  b2rot* = structb2rot       ## Generated based on box2c/include/box2d/math_functions.h:34:3
  structb2transform* {.pure, inheritable, bycopy.} = object
    p*: b2vec2               ## Generated based on box2c/include/box2d/math_functions.h:37:16
    q*: b2rot

  b2transform* = structb2transform ## Generated based on box2c/include/box2d/math_functions.h:41:3
  structb2mat22* {.pure, inheritable, bycopy.} = object
    cx*: b2vec2              ## Generated based on box2c/include/box2d/math_functions.h:44:16
    cy*: b2vec2

  b2mat22* = structb2mat22   ## Generated based on box2c/include/box2d/math_functions.h:48:3
  structb2aabb* {.pure, inheritable, bycopy.} = object
    lowerbound*: b2vec2      ## Generated based on box2c/include/box2d/math_functions.h:51:16
    upperbound*: b2vec2

  b2aabb* = structb2aabb     ## Generated based on box2c/include/box2d/math_functions.h:55:3
  b2circle* = structb2circle ## Generated based on box2c/include/box2d/collision.h:106:3
  structb2circle* {.pure, inheritable, bycopy.} = object
    center*: b2vec2          ## Generated based on box2c/include/box2d/collision.h:99:16
    radius*: cfloat

  b2capsule* = structb2capsule ## Generated based on box2c/include/box2d/collision.h:120:3
  structb2capsule* {.pure, inheritable, bycopy.} = object
    center1*: b2vec2         ## Generated based on box2c/include/box2d/collision.h:110:16
    center2*: b2vec2
    radius*: cfloat

  b2distancecache* = structb2distancecache ## Generated based on box2c/include/box2d/collision.h:340:3
  structb2distancecache* {.pure, inheritable, bycopy.} = object
    metric*: cfloat          ## Generated based on box2c/include/box2d/collision.h:327:16
    count*: uint16
    indexa*: array[3'i64, uint8]
    indexb*: array[3'i64, uint8]

  b2polygon* = structb2polygon ## Generated based on box2c/include/box2d/collision.h:144:3
  structb2polygon* {.pure, inheritable, bycopy.} = object
    vertices*: array[8'i64, b2vec2] ## Generated based on box2c/include/box2d/collision.h:128:16
    normals*: array[8'i64, b2vec2]
    centroid*: b2vec2
    radius*: cfloat
    count*: int32

  b2segment* = structb2segment ## Generated based on box2c/include/box2d/collision.h:154:3
  structb2segment* {.pure, inheritable, bycopy.} = object
    point1*: b2vec2          ## Generated based on box2c/include/box2d/collision.h:147:16
    point2*: b2vec2

  b2smoothsegment* = structb2smoothsegment ## Generated based on box2c/include/box2d/collision.h:172:3
  structb2smoothsegment* {.pure, inheritable, bycopy.} = object
    ghost1*: b2vec2          ## Generated based on box2c/include/box2d/collision.h:159:16
    segment*: b2segment
    ghost2*: b2vec2
    chainid*: int32

  b2hull* = structb2hull     ## Generated based on box2c/include/box2d/collision.h:261:3
  structb2hull* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2vec2] ## Generated based on box2c/include/box2d/collision.h:254:16
    count*: int32

  structb2raycastinput* {.pure, inheritable, bycopy.} = object
    origin*: b2vec2          ## Generated based on box2c/include/box2d/collision.h:33:16
    translation*: b2vec2
    maxfraction*: cfloat

  b2raycastinput* = structb2raycastinput ## Generated based on box2c/include/box2d/collision.h:43:3
  structb2shapecastinput* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2vec2] ## Generated based on box2c/include/box2d/collision.h:48:16
    count*: int32
    radius*: cfloat
    translation*: b2vec2
    maxfraction*: cfloat

  b2shapecastinput* = structb2shapecastinput ## Generated based on box2c/include/box2d/collision.h:64:3
  structb2castoutput* {.pure, inheritable, bycopy.} = object
    normal*: b2vec2          ## Generated based on box2c/include/box2d/collision.h:67:16
    point*: b2vec2
    fraction*: cfloat
    iterations*: int32
    hit*: bool

  b2castoutput* = structb2castoutput ## Generated based on box2c/include/box2d/collision.h:83:3
  structb2massdata* {.pure, inheritable, bycopy.} = object
    mass*: cfloat            ## Generated based on box2c/include/box2d/collision.h:86:16
    center*: b2vec2
    I*: cfloat

  b2massdata* = structb2massdata ## Generated based on box2c/include/box2d/collision.h:96:3
  structb2segmentdistanceresult* {.pure, inheritable, bycopy.} = object
    closest1*: b2vec2        ## Generated based on box2c/include/box2d/collision.h:291:16
    closest2*: b2vec2
    fraction1*: cfloat
    fraction2*: cfloat
    distancesquared*: cfloat

  b2segmentdistanceresult* = structb2segmentdistanceresult ## Generated based on box2c/include/box2d/collision.h:307:3
  structb2distanceproxy* {.pure, inheritable, bycopy.} = object
    points*: array[8'i64, b2vec2] ## Generated based on box2c/include/box2d/collision.h:313:16
    count*: int32
    radius*: cfloat

  b2distanceproxy* = structb2distanceproxy ## Generated based on box2c/include/box2d/collision.h:323:3
  structb2distanceinput* {.pure, inheritable, bycopy.} = object
    proxya*: b2distanceproxy ## Generated based on box2c/include/box2d/collision.h:345:16
    proxyb*: b2distanceproxy
    transforma*: b2transform
    transformb*: b2transform
    useradii*: bool

  b2distanceinput* = structb2distanceinput ## Generated based on box2c/include/box2d/collision.h:361:3
  structb2distanceoutput* {.pure, inheritable, bycopy.} = object
    pointa*: b2vec2          ## Generated based on box2c/include/box2d/collision.h:364:16
    pointb*: b2vec2
    distance*: cfloat
    iterations*: int32

  b2distanceoutput* = structb2distanceoutput ## Generated based on box2c/include/box2d/collision.h:370:3
  structb2shapecastpairinput* {.pure, inheritable, bycopy.} = object
    proxya*: b2distanceproxy ## Generated based on box2c/include/box2d/collision.h:378:16
    proxyb*: b2distanceproxy
    transforma*: b2transform
    transformb*: b2transform
    translationb*: b2vec2
    maxfraction*: cfloat

  b2shapecastpairinput* = structb2shapecastpairinput ## Generated based on box2c/include/box2d/collision.h:386:3
  structb2sweep* {.pure, inheritable, bycopy.} = object
    localcenter*: b2vec2     ## Generated based on box2c/include/box2d/collision.h:397:16
    c1*: b2vec2
    c2*: b2vec2
    q1*: b2rot
    q2*: b2rot

  b2sweep* = structb2sweep   ## Generated based on box2c/include/box2d/collision.h:404:3
  structb2toiinput* {.pure, inheritable, bycopy.} = object
    proxya*: b2distanceproxy ## Generated based on box2c/include/box2d/collision.h:410:16
    proxyb*: b2distanceproxy
    sweepa*: b2sweep
    sweepb*: b2sweep
    tmax*: cfloat

  b2toiinput* = structb2toiinput ## Generated based on box2c/include/box2d/collision.h:417:3
  b2toistate* = enumb2toistate ## Generated based on box2c/include/box2d/collision.h:427:3
  structb2toioutput* {.pure, inheritable, bycopy.} = object
    state*: b2toistate       ## Generated based on box2c/include/box2d/collision.h:430:16
    t*: cfloat

  b2toioutput* = structb2toioutput ## Generated based on box2c/include/box2d/collision.h:434:3
  structb2manifoldpoint* {.pure, inheritable, bycopy.} = object
    point*: b2vec2           ## Generated based on box2c/include/box2d/collision.h:453:16
    anchora*: b2vec2
    anchorb*: b2vec2
    separation*: cfloat
    normalimpulse*: cfloat
    tangentimpulse*: cfloat
    maxnormalimpulse*: cfloat
    normalvelocity*: cfloat
    id*: uint16
    persisted*: bool

  b2manifoldpoint* = structb2manifoldpoint ## Generated based on box2c/include/box2d/collision.h:488:3
  structb2manifold* {.pure, inheritable, bycopy.} = object
    points*: array[2'i64, b2manifoldpoint] ## Generated based on box2c/include/box2d/collision.h:491:16
    normal*: b2vec2
    pointcount*: int32

  b2manifold* = structb2manifold ## Generated based on box2c/include/box2d/collision.h:501:3
  structb2treenode_anon0_t* {.union, bycopy.} = object
    parent*: int32
    next*: int32

  structb2treenode* {.pure, inheritable, bycopy.} = object
    aabb*: b2aabb            ## Generated based on box2c/include/box2d/collision.h:578:16
    categorybits*: uint32
    anon0*: structb2treenode_anon0_t
    child1*: int32
    child2*: int32
    userdata*: int32
    height*: int16
    enlarged*: bool
    pad*: array[9'i64, cschar]

  b2treenode* = structb2treenode ## Generated based on box2c/include/box2d/collision.h:613:3
  structb2dynamictree* {.pure, inheritable, bycopy.} = object
    nodes*: ptr b2treenode   ## Generated based on box2c/include/box2d/collision.h:617:16
    root*: int32
    nodecount*: int32
    nodecapacity*: int32
    freelist*: int32
    proxycount*: int32
    leafindices*: ptr int32
    leafboxes*: ptr b2aabb
    leafcenters*: ptr b2vec2
    binindices*: ptr int32
    rebuildcapacity*: int32

  b2dynamictree* = structb2dynamictree ## Generated based on box2c/include/box2d/collision.h:651:3
  b2treequerycallbackfcn* = proc (a0: int32; a1: int32; a2: pointer): bool {.
      cdecl.}                ## Generated based on box2c/include/box2d/collision.h:673:14
  b2treeraycastcallbackfcn* = proc (a0: ptr b2raycastinput; a1: int32;
                                    a2: int32; a3: pointer): cfloat {.cdecl.} ## Generated based on box2c/include/box2d/collision.h:685:15
  b2treeshapecastcallbackfcn* = proc (a0: ptr b2shapecastinput; a1: int32;
                                      a2: int32; a3: pointer): cfloat {.cdecl.} ## Generated based on box2c/include/box2d/collision.h:706:15
  structb2worldid* {.pure, inheritable, bycopy.} = object
    index1*: uint16          ## Generated based on box2c/include/box2d/id.h:36:16
    revision*: uint16

  b2worldid* = structb2worldid ## Generated based on box2c/include/box2d/id.h:40:3
  structb2bodyid* {.pure, inheritable, bycopy.} = object
    index1*: int32           ## Generated based on box2c/include/box2d/id.h:43:16
    world0*: uint16
    revision*: uint16

  b2bodyid* = structb2bodyid ## Generated based on box2c/include/box2d/id.h:48:3
  structb2shapeid* {.pure, inheritable, bycopy.} = object
    index1*: int32           ## Generated based on box2c/include/box2d/id.h:51:16
    world0*: uint16
    revision*: uint16

  b2shapeid* = structb2shapeid ## Generated based on box2c/include/box2d/id.h:56:3
  structb2jointid* {.pure, inheritable, bycopy.} = object
    index1*: int32           ## Generated based on box2c/include/box2d/id.h:59:16
    world0*: uint16
    revision*: uint16

  b2jointid* = structb2jointid ## Generated based on box2c/include/box2d/id.h:64:3
  structb2chainid* {.pure, inheritable, bycopy.} = object
    index1*: int32           ## Generated based on box2c/include/box2d/id.h:67:16
    world0*: uint16
    revision*: uint16

  b2chainid* = structb2chainid ## Generated based on box2c/include/box2d/id.h:72:3
  b2taskcallback* = proc (a0: int32; a1: int32; a2: uint32; a3: pointer): void {.
      cdecl.}                ## Generated based on box2c/include/box2d/types.h:30:14
  b2enqueuetaskcallback* = proc (a0: b2taskcallback; a1: int32; a2: int32;
                                 a3: pointer; a4: pointer): pointer {.cdecl.} ## Generated based on box2c/include/box2d/types.h:43:15
  b2finishtaskcallback* = proc (a0: pointer; a1: pointer): void {.cdecl.} ## Generated based on box2c/include/box2d/types.h:48:14
  structb2rayresult* {.pure, inheritable, bycopy.} = object
    shapeid*: b2shapeid      ## Generated based on box2c/include/box2d/types.h:52:16
    point*: b2vec2
    normal*: b2vec2
    fraction*: cfloat
    hit*: bool

  b2rayresult* = structb2rayresult ## Generated based on box2c/include/box2d/types.h:59:3
  structb2worlddef* {.pure, inheritable, bycopy.} = object
    gravity*: b2vec2         ## Generated based on box2c/include/box2d/types.h:64:16
    restitutionthreshold*: cfloat
    contactpushoutvelocity*: cfloat
    hiteventthreshold*: cfloat
    contacthertz*: cfloat
    contactdampingratio*: cfloat
    jointhertz*: cfloat
    jointdampingratio*: cfloat
    enablesleep*: bool
    enablecontinous*: bool
    workercount*: int32
    enqueuetask*: b2enqueuetaskcallback
    finishtask*: b2finishtaskcallback
    usertaskcontext*: pointer
    internalvalue*: int32

  b2worlddef* = structb2worlddef ## Generated based on box2c/include/box2d/types.h:113:3
  b2bodytype* = enumb2bodytype ## Generated based on box2c/include/box2d/types.h:135:3
  structb2bodydef* {.pure, inheritable, bycopy.} = object
    `type`*: b2bodytype   ## Generated based on box2c/include/box2d/types.h:142:16
    position*: b2vec2
    angle*: cfloat
    linearvelocity*: b2vec2
    angularvelocity*: cfloat
    lineardamping*: cfloat
    angulardamping*: cfloat
    gravityscale*: cfloat
    sleepthreshold*: cfloat
    userdata*: pointer
    enablesleep*: bool
    isawake*: bool
    fixedrotation*: bool
    isbullet*: bool
    isenabled*: bool
    automaticmass*: bool
    internalvalue*: int32

  b2bodydef* = structb2bodydef ## Generated based on box2c/include/box2d/types.h:207:3
  structb2filter* {.pure, inheritable, bycopy.} = object
    categorybits*: uint32    ## Generated based on box2c/include/box2d/types.h:216:16
    maskbits*: uint32
    groupindex*: int32

  b2filter* = structb2filter ## Generated based on box2c/include/box2d/types.h:248:3
  structb2queryfilter* {.pure, inheritable, bycopy.} = object
    categorybits*: uint32    ## Generated based on box2c/include/box2d/types.h:258:16
    maskbits*: uint32

  b2queryfilter* = structb2queryfilter ## Generated based on box2c/include/box2d/types.h:266:3
  b2shapetype* = enumb2shapetype ## Generated based on box2c/include/box2d/types.h:293:3
  structb2shapedef* {.pure, inheritable, bycopy.} = object
    userdata*: pointer       ## Generated based on box2c/include/box2d/types.h:300:16
    friction*: cfloat
    restitution*: cfloat
    density*: cfloat
    filter*: b2filter
    issensor*: bool
    enablesensorevents*: bool
    enablecontactevents*: bool
    enablehitevents*: bool
    enablepresolveevents*: bool
    forcecontactcreation*: bool
    internalvalue*: int32

  b2shapedef* = structb2shapedef ## Generated based on box2c/include/box2d/types.h:340:3
  structb2chaindef* {.pure, inheritable, bycopy.} = object
    userdata*: pointer       ## Generated based on box2c/include/box2d/types.h:361:16
    points*: ptr b2vec2
    count*: int32
    friction*: cfloat
    restitution*: cfloat
    filter*: b2filter
    isloop*: bool
    internalvalue*: int32

  b2chaindef* = structb2chaindef ## Generated based on box2c/include/box2d/types.h:386:3
  structb2profile* {.pure, inheritable, bycopy.} = object
    step*: cfloat            ## Generated based on box2c/include/box2d/types.h:394:16
    pairs*: cfloat
    collide*: cfloat
    solve*: cfloat
    buildislands*: cfloat
    solveconstraints*: cfloat
    preparetasks*: cfloat
    solvertasks*: cfloat
    prepareconstraints*: cfloat
    integratevelocities*: cfloat
    warmstart*: cfloat
    solvevelocities*: cfloat
    integratepositions*: cfloat
    relaxvelocities*: cfloat
    applyrestitution*: cfloat
    storeimpulses*: cfloat
    finalizebodies*: cfloat
    splitislands*: cfloat
    sleepislands*: cfloat
    hitevents*: cfloat
    broadphase*: cfloat
    continuous*: cfloat

  b2profile* = structb2profile ## Generated based on box2c/include/box2d/types.h:418:3
  structb2counters* {.pure, inheritable, bycopy.} = object
    staticbodycount*: int32  ## Generated based on box2c/include/box2d/types.h:421:16
    bodycount*: int32
    shapecount*: int32
    contactcount*: int32
    jointcount*: int32
    islandcount*: int32
    stackused*: int32
    statictreeheight*: int32
    treeheight*: int32
    bytecount*: int32
    taskcount*: int32
    colorcounts*: array[12'i64, int32]

  b2counters* = structb2counters ## Generated based on box2c/include/box2d/types.h:435:3
  b2jointtype* = enumb2jointtype ## Generated based on box2c/include/box2d/types.h:452:3
  structb2distancejointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:461:16
    bodyidb*: b2bodyid
    localanchora*: b2vec2
    localanchorb*: b2vec2
    length*: cfloat
    enablespring*: bool
    hertz*: cfloat
    dampingratio*: cfloat
    enablelimit*: bool
    minlength*: cfloat
    maxlength*: cfloat
    enablemotor*: bool
    maxmotorforce*: cfloat
    motorspeed*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2distancejointdef* = structb2distancejointdef ## Generated based on box2c/include/box2d/types.h:514:3
  structb2motorjointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:524:16
    bodyidb*: b2bodyid
    linearoffset*: b2vec2
    angularoffset*: cfloat
    maxforce*: cfloat
    maxtorque*: cfloat
    correctionfactor*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2motorjointdef* = structb2motorjointdef ## Generated based on box2c/include/box2d/types.h:555:3
  structb2mousejointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:566:16
    bodyidb*: b2bodyid
    target*: b2vec2
    hertz*: cfloat
    dampingratio*: cfloat
    maxforce*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2mousejointdef* = structb2mousejointdef ## Generated based on box2c/include/box2d/types.h:594:3
  structb2prismaticjointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:607:16
    bodyidb*: b2bodyid
    localanchora*: b2vec2
    localanchorb*: b2vec2
    localaxisa*: b2vec2
    referenceangle*: cfloat
    enablespring*: bool
    hertz*: cfloat
    dampingratio*: cfloat
    enablelimit*: bool
    lowertranslation*: cfloat
    uppertranslation*: cfloat
    enablemotor*: bool
    maxmotorforce*: cfloat
    motorspeed*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2prismaticjointdef* = structb2prismaticjointdef ## Generated based on box2c/include/box2d/types.h:662:3
  structb2revolutejointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:680:16
    bodyidb*: b2bodyid
    localanchora*: b2vec2
    localanchorb*: b2vec2
    referenceangle*: cfloat
    enablespring*: bool
    hertz*: cfloat
    dampingratio*: cfloat
    enablelimit*: bool
    lowerangle*: cfloat
    upperangle*: cfloat
    enablemotor*: bool
    maxmotortorque*: cfloat
    motorspeed*: cfloat
    drawsize*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2revolutejointdef* = structb2revolutejointdef ## Generated based on box2c/include/box2d/types.h:736:3
  structb2weldjointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:748:16
    bodyidb*: b2bodyid
    localanchora*: b2vec2
    localanchorb*: b2vec2
    referenceangle*: cfloat
    linearhertz*: cfloat
    angularhertz*: cfloat
    lineardampingratio*: cfloat
    angulardampingratio*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2weldjointdef* = structb2weldjointdef ## Generated based on box2c/include/box2d/types.h:785:3
  structb2wheeljointdef* {.pure, inheritable, bycopy.} = object
    bodyida*: b2bodyid       ## Generated based on box2c/include/box2d/types.h:798:16
    bodyidb*: b2bodyid
    localanchora*: b2vec2
    localanchorb*: b2vec2
    localaxisa*: b2vec2
    enablespring*: bool
    hertz*: cfloat
    dampingratio*: cfloat
    enablelimit*: bool
    lowertranslation*: cfloat
    uppertranslation*: cfloat
    enablemotor*: bool
    maxmotortorque*: cfloat
    motorspeed*: cfloat
    collideconnected*: bool
    userdata*: pointer
    internalvalue*: int32

  b2wheeljointdef* = structb2wheeljointdef ## Generated based on box2c/include/box2d/types.h:850:3
  structb2sensorbegintouchevent* {.pure, inheritable, bycopy.} = object
    sensorshapeid*: b2shapeid ## Generated based on box2c/include/box2d/types.h:874:16
    visitorshapeid*: b2shapeid

  b2sensorbegintouchevent* = structb2sensorbegintouchevent ## Generated based on box2c/include/box2d/types.h:881:3
  structb2sensorendtouchevent* {.pure, inheritable, bycopy.} = object
    sensorshapeid*: b2shapeid ## Generated based on box2c/include/box2d/types.h:884:16
    visitorshapeid*: b2shapeid

  b2sensorendtouchevent* = structb2sensorendtouchevent ## Generated based on box2c/include/box2d/types.h:891:3
  structb2sensorevents* {.pure, inheritable, bycopy.} = object
    beginevents*: ptr b2sensorbegintouchevent ## Generated based on box2c/include/box2d/types.h:896:16
    endevents*: ptr b2sensorendtouchevent
    begincount*: int32
    endcount*: int32

  b2sensorevents* = structb2sensorevents ## Generated based on box2c/include/box2d/types.h:909:3
  structb2contactbegintouchevent* {.pure, inheritable, bycopy.} = object
    shapeida*: b2shapeid     ## Generated based on box2c/include/box2d/types.h:912:16
    shapeidb*: b2shapeid

  b2contactbegintouchevent* = structb2contactbegintouchevent ## Generated based on box2c/include/box2d/types.h:919:3
  structb2contactendtouchevent* {.pure, inheritable, bycopy.} = object
    shapeida*: b2shapeid     ## Generated based on box2c/include/box2d/types.h:922:16
    shapeidb*: b2shapeid

  b2contactendtouchevent* = structb2contactendtouchevent ## Generated based on box2c/include/box2d/types.h:929:3
  structb2contacthitevent* {.pure, inheritable, bycopy.} = object
    shapeida*: b2shapeid     ## Generated based on box2c/include/box2d/types.h:932:16
    shapeidb*: b2shapeid
    point*: b2vec2
    normal*: b2vec2
    approachspeed*: cfloat

  b2contacthitevent* = structb2contacthitevent ## Generated based on box2c/include/box2d/types.h:948:3
  structb2contactevents* {.pure, inheritable, bycopy.} = object
    beginevents*: ptr b2contactbegintouchevent ## Generated based on box2c/include/box2d/types.h:953:16
    endevents*: ptr b2contactendtouchevent
    hitevents*: ptr b2contacthitevent
    begincount*: int32
    endcount*: int32
    hitcount*: int32

  b2contactevents* = structb2contactevents ## Generated based on box2c/include/box2d/types.h:972:3
  structb2bodymoveevent* {.pure, inheritable, bycopy.} = object
    transform*: b2transform  ## Generated based on box2c/include/box2d/types.h:984:16
    bodyid*: b2bodyid
    userdata*: pointer
    fellasleep*: bool

  b2bodymoveevent* = structb2bodymoveevent ## Generated based on box2c/include/box2d/types.h:990:3
  structb2bodyevents* {.pure, inheritable, bycopy.} = object
    moveevents*: ptr b2bodymoveevent ## Generated based on box2c/include/box2d/types.h:995:16
    movecount*: int32

  b2bodyevents* = structb2bodyevents ## Generated based on box2c/include/box2d/types.h:1002:3
  structb2contactdata* {.pure, inheritable, bycopy.} = object
    shapeida*: b2shapeid     ## Generated based on box2c/include/box2d/types.h:1007:16
    shapeidb*: b2shapeid
    manifold*: b2manifold

  b2contactdata* = structb2contactdata ## Generated based on box2c/include/box2d/types.h:1012:3
  b2customfilterfcn* = proc (a0: b2shapeid; a1: b2shapeid; a2: pointer): bool {.
      cdecl.}                ## Generated based on box2c/include/box2d/types.h:1027:14
  b2presolvefcn* = proc (a0: b2shapeid; a1: b2shapeid; a2: ptr b2manifold;
                         a3: pointer): bool {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1042:14
  b2overlapresultfcn* = proc (a0: b2shapeid; a1: pointer): bool {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1049:14
  b2castresultfcn* = proc (a0: b2shapeid; a1: b2vec2; a2: b2vec2; a3: cfloat;
                           a4: pointer): cfloat {.cdecl.} ## Generated based on box2c/include/box2d/types.h:1066:15
  b2hexcolor* = enumb2hexcolor ## Generated based on box2c/include/box2d/types.h:1225:3
  structb2debugdraw* {.pure, inheritable, bycopy.} = object
    Drawpolygon*: proc (a0: ptr b2vec2; a1: cint; a2: b2hexcolor; a3: pointer): void {.
        cdecl.}              ## Generated based on box2c/include/box2d/types.h:1229:16
    Drawsolidpolygon*: proc (a0: b2transform; a1: ptr b2vec2; a2: cint;
                             a3: cfloat; a4: b2hexcolor; a5: pointer): void {.
        cdecl.}
    Drawcircle*: proc (a0: b2vec2; a1: cfloat; a2: b2hexcolor; a3: pointer): void {.
        cdecl.}
    Drawsolidcircle*: proc (a0: b2transform; a1: cfloat; a2: b2hexcolor;
                            a3: pointer): void {.cdecl.}
    Drawcapsule*: proc (a0: b2vec2; a1: b2vec2; a2: cfloat; a3: b2hexcolor;
                        a4: pointer): void {.cdecl.}
    Drawsolidcapsule*: proc (a0: b2vec2; a1: b2vec2; a2: cfloat; a3: b2hexcolor;
                             a4: pointer): void {.cdecl.}
    Drawsegment*: proc (a0: b2vec2; a1: b2vec2; a2: b2hexcolor; a3: pointer): void {.
        cdecl.}
    Drawtransform*: proc (a0: b2transform; a1: pointer): void {.cdecl.}
    Drawpoint*: proc (a0: b2vec2; a1: cfloat; a2: b2hexcolor; a3: pointer): void {.
        cdecl.}
    Drawstring*: proc (a0: b2vec2; a1: cstring; a2: pointer): void {.cdecl.}
    drawingbounds*: b2aabb
    usedrawingbounds*: bool
    drawshapes*: bool
    drawjoints*: bool
    drawjointextras*: bool
    drawaabbs*: bool
    drawmass*: bool
    drawcontacts*: bool
    drawgraphcolors*: bool
    drawcontactnormals*: bool
    drawcontactimpulses*: bool
    drawfrictionimpulses*: bool
    context*: pointer

  b2debugdraw* = structb2debugdraw ## Generated based on box2c/include/box2d/types.h:1300:3
when 3.14159265359 is static:
  const
    b2pi* = 3.14159265359    ## Generated based on box2c/include/box2d/math_functions.h:18:9
else:
  let b2pi* = 3.14159265359  ## Generated based on box2c/include/box2d/math_functions.h:18:9
when 8 is static:
  const
    b2maxpolygonvertices* = 8 ## Generated based on box2c/include/box2d/collision.h:30:9
else:
  let b2maxpolygonvertices* = 8 ## Generated based on box2c/include/box2d/collision.h:30:9
when 1 is static:
  const
    b2defaultcategorybits* = 1 ## Generated based on box2c/include/box2d/collision.h:570:9
else:
  let b2defaultcategorybits* = 1 ## Generated based on box2c/include/box2d/collision.h:570:9
when 4294967295 is static:
  const
    b2defaultmaskbits* = 4294967295'i64 ## Generated based on box2c/include/box2d/collision.h:574:9
else:
  let b2defaultmaskbits* = 4294967295'i64 ## Generated based on box2c/include/box2d/collision.h:574:9
proc b2setallocator*(allocfcn: b2allocfcn; freefcn: b2freefcn): void {.cdecl,
    importc: "b2SetAllocator".}
proc b2getbytecount*(): cint {.cdecl, importc: "b2GetByteCount".}
proc b2setassertfcn*(assertfcn: b2assertfcn): void {.cdecl,
    importc: "b2SetAssertFcn".}
proc b2getversion*(): b2version {.cdecl, importc: "b2GetVersion".}
proc b2createtimer*(): b2timer {.cdecl, importc: "b2CreateTimer".}
proc b2getticks*(timer: ptr b2timer): int64 {.cdecl, importc: "b2GetTicks".}
proc b2getmilliseconds*(timer: ptr b2timer): cfloat {.cdecl,
    importc: "b2GetMilliseconds".}
proc b2getmillisecondsandreset*(timer: ptr b2timer): cfloat {.cdecl,
    importc: "b2GetMillisecondsAndReset".}
proc b2sleepmilliseconds*(milliseconds: cint): void {.cdecl,
    importc: "b2SleepMilliseconds".}
proc b2yield*(): void {.cdecl, importc: "b2Yield".}
var b2vec2zero*: b2vec2
var b2rotidentity*: b2rot
var b2transformidentity*: b2transform
var b2mat22zero*: b2mat22
proc b2isvalid*(a: cfloat): bool {.cdecl, importc: "b2IsValid".}
proc b2vec2isvalid*(v: b2vec2): bool {.cdecl, importc: "b2Vec2_IsValid".}
proc b2rotisvalid*(q: b2rot): bool {.cdecl, importc: "b2Rot_IsValid".}
proc b2aabbisvalid*(aabb: b2aabb): bool {.cdecl, importc: "b2AABB_IsValid".}
proc b2normalize*(v: b2vec2): b2vec2 {.cdecl, importc: "b2Normalize".}
proc b2normalizechecked*(v: b2vec2): b2vec2 {.cdecl,
    importc: "b2NormalizeChecked".}
proc b2getlengthandnormalize*(length: ptr cfloat; v: b2vec2): b2vec2 {.cdecl,
    importc: "b2GetLengthAndNormalize".}
proc b2setlengthunitspermeter*(lengthunits: cfloat): void {.cdecl,
    importc: "b2SetLengthUnitsPerMeter".}
proc b2getlengthunitspermeter*(): cfloat {.cdecl,
    importc: "b2GetLengthUnitsPerMeter".}
proc b2isvalidray*(input: ptr b2raycastinput): bool {.cdecl,
    importc: "b2IsValidRay".}
proc b2makepolygon*(hull: ptr b2hull; radius: cfloat): b2polygon {.cdecl,
    importc: "b2MakePolygon".}
proc b2makeoffsetpolygon*(hull: ptr b2hull; radius: cfloat;
                          transform: b2transform): b2polygon {.cdecl,
    importc: "b2MakeOffsetPolygon".}
proc b2makesquare*(h: cfloat): b2polygon {.cdecl, importc: "b2MakeSquare".}
proc b2makebox*(hx: cfloat; hy: cfloat): b2polygon {.cdecl, importc: "b2MakeBox".}
proc b2makeroundedbox*(hx: cfloat; hy: cfloat; radius: cfloat): b2polygon {.
    cdecl, importc: "b2MakeRoundedBox".}
proc b2makeoffsetbox*(hx: cfloat; hy: cfloat; center: b2vec2; angle: cfloat): b2polygon {.
    cdecl, importc: "b2MakeOffsetBox".}
proc b2transformpolygon*(transform: b2transform; polygon: ptr b2polygon): b2polygon {.
    cdecl, importc: "b2TransformPolygon".}
proc b2computecirclemass*(shape: ptr b2circle; density: cfloat): b2massdata {.
    cdecl, importc: "b2ComputeCircleMass".}
proc b2computecapsulemass*(shape: ptr b2capsule; density: cfloat): b2massdata {.
    cdecl, importc: "b2ComputeCapsuleMass".}
proc b2computepolygonmass*(shape: ptr b2polygon; density: cfloat): b2massdata {.
    cdecl, importc: "b2ComputePolygonMass".}
proc b2computecircleaabb*(shape: ptr b2circle; transform: b2transform): b2aabb {.
    cdecl, importc: "b2ComputeCircleAABB".}
proc b2computecapsuleaabb*(shape: ptr b2capsule; transform: b2transform): b2aabb {.
    cdecl, importc: "b2ComputeCapsuleAABB".}
proc b2computepolygonaabb*(shape: ptr b2polygon; transform: b2transform): b2aabb {.
    cdecl, importc: "b2ComputePolygonAABB".}
proc b2computesegmentaabb*(shape: ptr b2segment; transform: b2transform): b2aabb {.
    cdecl, importc: "b2ComputeSegmentAABB".}
proc b2pointincircle*(point: b2vec2; shape: ptr b2circle): bool {.cdecl,
    importc: "b2PointInCircle".}
proc b2pointincapsule*(point: b2vec2; shape: ptr b2capsule): bool {.cdecl,
    importc: "b2PointInCapsule".}
proc b2pointinpolygon*(point: b2vec2; shape: ptr b2polygon): bool {.cdecl,
    importc: "b2PointInPolygon".}
proc b2raycastcircle*(input: ptr b2raycastinput; shape: ptr b2circle): b2castoutput {.
    cdecl, importc: "b2RayCastCircle".}
proc b2raycastcapsule*(input: ptr b2raycastinput; shape: ptr b2capsule): b2castoutput {.
    cdecl, importc: "b2RayCastCapsule".}
proc b2raycastsegment*(input: ptr b2raycastinput; shape: ptr b2segment;
                       onesided: bool): b2castoutput {.cdecl,
    importc: "b2RayCastSegment".}
proc b2raycastpolygon*(input: ptr b2raycastinput; shape: ptr b2polygon): b2castoutput {.
    cdecl, importc: "b2RayCastPolygon".}
proc b2shapecastcircle*(input: ptr b2shapecastinput; shape: ptr b2circle): b2castoutput {.
    cdecl, importc: "b2ShapeCastCircle".}
proc b2shapecastcapsule*(input: ptr b2shapecastinput; shape: ptr b2capsule): b2castoutput {.
    cdecl, importc: "b2ShapeCastCapsule".}
proc b2shapecastsegment*(input: ptr b2shapecastinput; shape: ptr b2segment): b2castoutput {.
    cdecl, importc: "b2ShapeCastSegment".}
proc b2shapecastpolygon*(input: ptr b2shapecastinput; shape: ptr b2polygon): b2castoutput {.
    cdecl, importc: "b2ShapeCastPolygon".}
proc b2computehull*(points: ptr b2vec2; count: int32): b2hull {.cdecl,
    importc: "b2ComputeHull".}
proc b2validatehull*(hull: ptr b2hull): bool {.cdecl, importc: "b2ValidateHull".}
proc b2segmentdistance*(p1: b2vec2; q1: b2vec2; p2: b2vec2; q2: b2vec2): b2segmentdistanceresult {.
    cdecl, importc: "b2SegmentDistance".}
var b2emptydistancecache*: b2distancecache
proc b2shapedistance*(cache: ptr b2distancecache; input: ptr b2distanceinput): b2distanceoutput {.
    cdecl, importc: "b2ShapeDistance".}
proc b2shapecast*(input: ptr b2shapecastpairinput): b2castoutput {.cdecl,
    importc: "b2ShapeCast".}
proc b2makeproxy*(vertices: ptr b2vec2; count: int32; radius: cfloat): b2distanceproxy {.
    cdecl, importc: "b2MakeProxy".}
proc b2getsweeptransform*(sweep: ptr b2sweep; time: cfloat): b2transform {.
    cdecl, importc: "b2GetSweepTransform".}
proc b2timeofimpact*(input: ptr b2toiinput): b2toioutput {.cdecl,
    importc: "b2TimeOfImpact".}
proc b2collidecircles*(circlea: ptr b2circle; xfa: b2transform;
                       circleb: ptr b2circle; xfb: b2transform): b2manifold {.
    cdecl, importc: "b2CollideCircles".}
proc b2collidecapsuleandcircle*(capsulea: ptr b2capsule; xfa: b2transform;
                                circleb: ptr b2circle; xfb: b2transform): b2manifold {.
    cdecl, importc: "b2CollideCapsuleAndCircle".}
proc b2collidesegmentandcircle*(segmenta: ptr b2segment; xfa: b2transform;
                                circleb: ptr b2circle; xfb: b2transform): b2manifold {.
    cdecl, importc: "b2CollideSegmentAndCircle".}
proc b2collidepolygonandcircle*(polygona: ptr b2polygon; xfa: b2transform;
                                circleb: ptr b2circle; xfb: b2transform): b2manifold {.
    cdecl, importc: "b2CollidePolygonAndCircle".}
proc b2collidecapsules*(capsulea: ptr b2capsule; xfa: b2transform;
                        capsuleb: ptr b2capsule; xfb: b2transform;
                        cache: ptr b2distancecache): b2manifold {.cdecl,
    importc: "b2CollideCapsules".}
proc b2collidesegmentandcapsule*(segmenta: ptr b2segment; xfa: b2transform;
                                 capsuleb: ptr b2capsule; xfb: b2transform;
                                 cache: ptr b2distancecache): b2manifold {.
    cdecl, importc: "b2CollideSegmentAndCapsule".}
proc b2collidepolygonandcapsule*(polygona: ptr b2polygon; xfa: b2transform;
                                 capsuleb: ptr b2capsule; xfb: b2transform;
                                 cache: ptr b2distancecache): b2manifold {.
    cdecl, importc: "b2CollidePolygonAndCapsule".}
proc b2collidepolygons*(polya: ptr b2polygon; xfa: b2transform;
                        polyb: ptr b2polygon; xfb: b2transform;
                        cache: ptr b2distancecache): b2manifold {.cdecl,
    importc: "b2CollidePolygons".}
proc b2collidesegmentandpolygon*(segmenta: ptr b2segment; xfa: b2transform;
                                 polygonb: ptr b2polygon; xfb: b2transform;
                                 cache: ptr b2distancecache): b2manifold {.
    cdecl, importc: "b2CollideSegmentAndPolygon".}
proc b2collidesmoothsegmentandcircle*(smoothsegmenta: ptr b2smoothsegment;
                                      xfa: b2transform; circleb: ptr b2circle;
                                      xfb: b2transform): b2manifold {.cdecl,
    importc: "b2CollideSmoothSegmentAndCircle".}
proc b2collidesmoothsegmentandcapsule*(smoothsegmenta: ptr b2smoothsegment;
                                       xfa: b2transform;
                                       capsuleb: ptr b2capsule;
                                       xfb: b2transform;
                                       cache: ptr b2distancecache): b2manifold {.
    cdecl, importc: "b2CollideSmoothSegmentAndCapsule".}
proc b2collidesmoothsegmentandpolygon*(smoothsegmenta: ptr b2smoothsegment;
                                       xfa: b2transform;
                                       polygonb: ptr b2polygon;
                                       xfb: b2transform;
                                       cache: ptr b2distancecache): b2manifold {.
    cdecl, importc: "b2CollideSmoothSegmentAndPolygon".}
proc b2dynamictreecreate*(): b2dynamictree {.cdecl,
    importc: "b2DynamicTree_Create".}
proc b2dynamictreedestroy*(tree: ptr b2dynamictree): void {.cdecl,
    importc: "b2DynamicTree_Destroy".}
proc b2dynamictreecreateproxy*(tree: ptr b2dynamictree; aabb: b2aabb;
                               categorybits: uint32; userdata: int32): int32 {.
    cdecl, importc: "b2DynamicTree_CreateProxy".}
proc b2dynamictreedestroyproxy*(tree: ptr b2dynamictree; proxyid: int32): void {.
    cdecl, importc: "b2DynamicTree_DestroyProxy".}
proc b2dynamictreemoveproxy*(tree: ptr b2dynamictree; proxyid: int32;
                             aabb: b2aabb): void {.cdecl,
    importc: "b2DynamicTree_MoveProxy".}
proc b2dynamictreeenlargeproxy*(tree: ptr b2dynamictree; proxyid: int32;
                                aabb: b2aabb): void {.cdecl,
    importc: "b2DynamicTree_EnlargeProxy".}
proc b2dynamictreequery*(tree: ptr b2dynamictree; aabb: b2aabb;
                         maskbits: uint32; callback: b2treequerycallbackfcn;
                         context: pointer): void {.cdecl,
    importc: "b2DynamicTree_Query".}
proc b2dynamictreeraycast*(tree: ptr b2dynamictree; input: ptr b2raycastinput;
                           maskbits: uint32; callback: b2treeraycastcallbackfcn;
                           context: pointer): void {.cdecl,
    importc: "b2DynamicTree_RayCast".}
proc b2dynamictreeshapecast*(tree: ptr b2dynamictree;
                             input: ptr b2shapecastinput; maskbits: uint32;
                             callback: b2treeshapecastcallbackfcn;
                             context: pointer): void {.cdecl,
    importc: "b2DynamicTree_ShapeCast".}
proc b2dynamictreevalidate*(tree: ptr b2dynamictree): void {.cdecl,
    importc: "b2DynamicTree_Validate".}
proc b2dynamictreegetheight*(tree: ptr b2dynamictree): cint {.cdecl,
    importc: "b2DynamicTree_GetHeight".}
proc b2dynamictreegetmaxbalance*(tree: ptr b2dynamictree): cint {.cdecl,
    importc: "b2DynamicTree_GetMaxBalance".}
proc b2dynamictreegetarearatio*(tree: ptr b2dynamictree): cfloat {.cdecl,
    importc: "b2DynamicTree_GetAreaRatio".}
proc b2dynamictreerebuildbottomup*(tree: ptr b2dynamictree): void {.cdecl,
    importc: "b2DynamicTree_RebuildBottomUp".}
proc b2dynamictreegetproxycount*(tree: ptr b2dynamictree): cint {.cdecl,
    importc: "b2DynamicTree_GetProxyCount".}
proc b2dynamictreerebuild*(tree: ptr b2dynamictree; fullbuild: bool): cint {.
    cdecl, importc: "b2DynamicTree_Rebuild".}
proc b2dynamictreeshiftorigin*(tree: ptr b2dynamictree; neworigin: b2vec2): void {.
    cdecl, importc: "b2DynamicTree_ShiftOrigin".}
proc b2dynamictreegetbytecount*(tree: ptr b2dynamictree): cint {.cdecl,
    importc: "b2DynamicTree_GetByteCount".}
var b2nullworldid*: b2worldid
var b2nullbodyid*: b2bodyid
var b2nullshapeid*: b2shapeid
var b2nulljointid*: b2jointid
var b2nullchainid*: b2chainid
proc b2defaultworlddef*(): b2worlddef {.cdecl, importc: "b2DefaultWorldDef".}
proc b2defaultbodydef*(): b2bodydef {.cdecl, importc: "b2DefaultBodyDef".}
proc b2defaultfilter*(): b2filter {.cdecl, importc: "b2DefaultFilter".}
proc b2defaultqueryfilter*(): b2queryfilter {.cdecl,
    importc: "b2DefaultQueryFilter".}
proc b2defaultshapedef*(): b2shapedef {.cdecl, importc: "b2DefaultShapeDef".}
proc b2defaultchaindef*(): b2chaindef {.cdecl, importc: "b2DefaultChainDef".}
proc b2defaultdistancejointdef*(): b2distancejointdef {.cdecl,
    importc: "b2DefaultDistanceJointDef".}
proc b2defaultmotorjointdef*(): b2motorjointdef {.cdecl,
    importc: "b2DefaultMotorJointDef".}
proc b2defaultmousejointdef*(): b2mousejointdef {.cdecl,
    importc: "b2DefaultMouseJointDef".}
proc b2defaultprismaticjointdef*(): b2prismaticjointdef {.cdecl,
    importc: "b2DefaultPrismaticJointDef".}
proc b2defaultrevolutejointdef*(): b2revolutejointdef {.cdecl,
    importc: "b2DefaultRevoluteJointDef".}
proc b2defaultweldjointdef*(): b2weldjointdef {.cdecl,
    importc: "b2DefaultWeldJointDef".}
proc b2defaultwheeljointdef*(): b2wheeljointdef {.cdecl,
    importc: "b2DefaultWheelJointDef".}
proc b2createworld*(def: ptr b2worlddef): b2worldid {.cdecl,
    importc: "b2CreateWorld".}
proc b2destroyworld*(worldid: b2worldid): void {.cdecl,
    importc: "b2DestroyWorld".}
proc b2worldisvalid*(id: b2worldid): bool {.cdecl, importc: "b2World_IsValid".}
proc b2worldstep*(worldid: b2worldid; timestep: cfloat; substepcount: cint): void {.
    cdecl, importc: "b2World_Step".}
proc b2worlddraw*(worldid: b2worldid; draw: ptr b2debugdraw): void {.cdecl,
    importc: "b2World_Draw".}
proc b2worldgetbodyevents*(worldid: b2worldid): b2bodyevents {.cdecl,
    importc: "b2World_GetBodyEvents".}
proc b2worldgetsensorevents*(worldid: b2worldid): b2sensorevents {.cdecl,
    importc: "b2World_GetSensorEvents".}
proc b2worldgetcontactevents*(worldid: b2worldid): b2contactevents {.cdecl,
    importc: "b2World_GetContactEvents".}
proc b2worldoverlapaabb*(worldid: b2worldid; aabb: b2aabb;
                         filter: b2queryfilter; fcn: b2overlapresultfcn;
                         context: pointer): void {.cdecl,
    importc: "b2World_OverlapAABB".}
proc b2worldoverlapcircle*(worldid: b2worldid; circle: ptr b2circle;
                           transform: b2transform; filter: b2queryfilter;
                           fcn: b2overlapresultfcn; context: pointer): void {.
    cdecl, importc: "b2World_OverlapCircle".}
proc b2worldoverlapcapsule*(worldid: b2worldid; capsule: ptr b2capsule;
                            transform: b2transform; filter: b2queryfilter;
                            fcn: b2overlapresultfcn; context: pointer): void {.
    cdecl, importc: "b2World_OverlapCapsule".}
proc b2worldoverlappolygon*(worldid: b2worldid; polygon: ptr b2polygon;
                            transform: b2transform; filter: b2queryfilter;
                            fcn: b2overlapresultfcn; context: pointer): void {.
    cdecl, importc: "b2World_OverlapPolygon".}
proc b2worldcastray*(worldid: b2worldid; origin: b2vec2; translation: b2vec2;
                     filter: b2queryfilter; fcn: b2castresultfcn;
                     context: pointer): void {.cdecl, importc: "b2World_CastRay".}
proc b2worldcastrayclosest*(worldid: b2worldid; origin: b2vec2;
                            translation: b2vec2; filter: b2queryfilter): b2rayresult {.
    cdecl, importc: "b2World_CastRayClosest".}
proc b2worldcastcircle*(worldid: b2worldid; circle: ptr b2circle;
                        origintransform: b2transform; translation: b2vec2;
                        filter: b2queryfilter; fcn: b2castresultfcn;
                        context: pointer): void {.cdecl,
    importc: "b2World_CastCircle".}
proc b2worldcastcapsule*(worldid: b2worldid; capsule: ptr b2capsule;
                         origintransform: b2transform; translation: b2vec2;
                         filter: b2queryfilter; fcn: b2castresultfcn;
                         context: pointer): void {.cdecl,
    importc: "b2World_CastCapsule".}
proc b2worldcastpolygon*(worldid: b2worldid; polygon: ptr b2polygon;
                         origintransform: b2transform; translation: b2vec2;
                         filter: b2queryfilter; fcn: b2castresultfcn;
                         context: pointer): void {.cdecl,
    importc: "b2World_CastPolygon".}
proc b2worldenablesleeping*(worldid: b2worldid; flag: bool): void {.cdecl,
    importc: "b2World_EnableSleeping".}
proc b2worldenablecontinuous*(worldid: b2worldid; flag: bool): void {.cdecl,
    importc: "b2World_EnableContinuous".}
proc b2worldsetrestitutionthreshold*(worldid: b2worldid; value: cfloat): void {.
    cdecl, importc: "b2World_SetRestitutionThreshold".}
proc b2worldsethiteventthreshold*(worldid: b2worldid; value: cfloat): void {.
    cdecl, importc: "b2World_SetHitEventThreshold".}
proc b2worldsetcustomfiltercallback*(worldid: b2worldid; fcn: b2customfilterfcn;
                                     context: pointer): void {.cdecl,
    importc: "b2World_SetCustomFilterCallback".}
proc b2worldsetpresolvecallback*(worldid: b2worldid; fcn: b2presolvefcn;
                                 context: pointer): void {.cdecl,
    importc: "b2World_SetPreSolveCallback".}
proc b2worldsetgravity*(worldid: b2worldid; gravity: b2vec2): void {.cdecl,
    importc: "b2World_SetGravity".}
proc b2worldgetgravity*(worldid: b2worldid): b2vec2 {.cdecl,
    importc: "b2World_GetGravity".}
proc b2worldexplode*(worldid: b2worldid; position: b2vec2; radius: cfloat;
                     impulse: cfloat): void {.cdecl, importc: "b2World_Explode".}
proc b2worldsetcontacttuning*(worldid: b2worldid; hertz: cfloat;
                              dampingratio: cfloat; pushvelocity: cfloat): void {.
    cdecl, importc: "b2World_SetContactTuning".}
proc b2worldenablewarmstarting*(worldid: b2worldid; flag: bool): void {.cdecl,
    importc: "b2World_EnableWarmStarting".}
proc b2worldgetprofile*(worldid: b2worldid): b2profile {.cdecl,
    importc: "b2World_GetProfile".}
proc b2worldgetcounters*(worldid: b2worldid): b2counters {.cdecl,
    importc: "b2World_GetCounters".}
proc b2worlddumpmemorystats*(worldid: b2worldid): void {.cdecl,
    importc: "b2World_DumpMemoryStats".}
proc b2createbody*(worldid: b2worldid; def: ptr b2bodydef): b2bodyid {.cdecl,
    importc: "b2CreateBody".}
proc b2destroybody*(bodyid: b2bodyid): void {.cdecl, importc: "b2DestroyBody".}
proc b2bodyisvalid*(id: b2bodyid): bool {.cdecl, importc: "b2Body_IsValid".}
proc b2bodygettype*(bodyid: b2bodyid): b2bodytype {.cdecl,
    importc: "b2Body_GetType".}
proc b2bodysettype*(bodyid: b2bodyid; typearg: b2bodytype): void {.cdecl,
    importc: "b2Body_SetType".}
proc b2bodysetuserdata*(bodyid: b2bodyid; userdata: pointer): void {.cdecl,
    importc: "b2Body_SetUserData".}
proc b2bodygetuserdata*(bodyid: b2bodyid): pointer {.cdecl,
    importc: "b2Body_GetUserData".}
proc b2bodygetposition*(bodyid: b2bodyid): b2vec2 {.cdecl,
    importc: "b2Body_GetPosition".}
proc b2bodygetrotation*(bodyid: b2bodyid): b2rot {.cdecl,
    importc: "b2Body_GetRotation".}
proc b2bodygetangle*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetAngle".}
proc b2bodygettransform*(bodyid: b2bodyid): b2transform {.cdecl,
    importc: "b2Body_GetTransform".}
proc b2bodysettransform*(bodyid: b2bodyid; position: b2vec2; angle: cfloat): void {.
    cdecl, importc: "b2Body_SetTransform".}
proc b2bodygetlocalpoint*(bodyid: b2bodyid; worldpoint: b2vec2): b2vec2 {.cdecl,
    importc: "b2Body_GetLocalPoint".}
proc b2bodygetworldpoint*(bodyid: b2bodyid; localpoint: b2vec2): b2vec2 {.cdecl,
    importc: "b2Body_GetWorldPoint".}
proc b2bodygetlocalvector*(bodyid: b2bodyid; worldvector: b2vec2): b2vec2 {.
    cdecl, importc: "b2Body_GetLocalVector".}
proc b2bodygetworldvector*(bodyid: b2bodyid; localvector: b2vec2): b2vec2 {.
    cdecl, importc: "b2Body_GetWorldVector".}
proc b2bodygetlinearvelocity*(bodyid: b2bodyid): b2vec2 {.cdecl,
    importc: "b2Body_GetLinearVelocity".}
proc b2bodygetangularvelocity*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetAngularVelocity".}
proc b2bodysetlinearvelocity*(bodyid: b2bodyid; linearvelocity: b2vec2): void {.
    cdecl, importc: "b2Body_SetLinearVelocity".}
proc b2bodysetangularvelocity*(bodyid: b2bodyid; angularvelocity: cfloat): void {.
    cdecl, importc: "b2Body_SetAngularVelocity".}
proc b2bodyapplyforce*(bodyid: b2bodyid; force: b2vec2; point: b2vec2;
                       wake: bool): void {.cdecl, importc: "b2Body_ApplyForce".}
proc b2bodyapplyforcetocenter*(bodyid: b2bodyid; force: b2vec2; wake: bool): void {.
    cdecl, importc: "b2Body_ApplyForceToCenter".}
proc b2bodyapplytorque*(bodyid: b2bodyid; torque: cfloat; wake: bool): void {.
    cdecl, importc: "b2Body_ApplyTorque".}
proc b2bodyapplylinearimpulse*(bodyid: b2bodyid; impulse: b2vec2; point: b2vec2;
                               wake: bool): void {.cdecl,
    importc: "b2Body_ApplyLinearImpulse".}
proc b2bodyapplylinearimpulsetocenter*(bodyid: b2bodyid; impulse: b2vec2;
                                       wake: bool): void {.cdecl,
    importc: "b2Body_ApplyLinearImpulseToCenter".}
proc b2bodyapplyangularimpulse*(bodyid: b2bodyid; impulse: cfloat; wake: bool): void {.
    cdecl, importc: "b2Body_ApplyAngularImpulse".}
proc b2bodygetmass*(bodyid: b2bodyid): cfloat {.cdecl, importc: "b2Body_GetMass".}
proc b2bodygetinertiatensor*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetInertiaTensor".}
proc b2bodygetlocalcenterofmass*(bodyid: b2bodyid): b2vec2 {.cdecl,
    importc: "b2Body_GetLocalCenterOfMass".}
proc b2bodygetworldcenterofmass*(bodyid: b2bodyid): b2vec2 {.cdecl,
    importc: "b2Body_GetWorldCenterOfMass".}
proc b2bodysetmassdata*(bodyid: b2bodyid; massdata: b2massdata): void {.cdecl,
    importc: "b2Body_SetMassData".}
proc b2bodygetmassdata*(bodyid: b2bodyid): b2massdata {.cdecl,
    importc: "b2Body_GetMassData".}
proc b2bodyapplymassfromshapes*(bodyid: b2bodyid): void {.cdecl,
    importc: "b2Body_ApplyMassFromShapes".}
proc b2bodysetautomaticmass*(bodyid: b2bodyid; automaticmass: bool): void {.
    cdecl, importc: "b2Body_SetAutomaticMass".}
proc b2bodygetautomaticmass*(bodyid: b2bodyid): bool {.cdecl,
    importc: "b2Body_GetAutomaticMass".}
proc b2bodysetlineardamping*(bodyid: b2bodyid; lineardamping: cfloat): void {.
    cdecl, importc: "b2Body_SetLinearDamping".}
proc b2bodygetlineardamping*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetLinearDamping".}
proc b2bodysetangulardamping*(bodyid: b2bodyid; angulardamping: cfloat): void {.
    cdecl, importc: "b2Body_SetAngularDamping".}
proc b2bodygetangulardamping*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetAngularDamping".}
proc b2bodysetgravityscale*(bodyid: b2bodyid; gravityscale: cfloat): void {.
    cdecl, importc: "b2Body_SetGravityScale".}
proc b2bodygetgravityscale*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetGravityScale".}
proc b2bodyisawake*(bodyid: b2bodyid): bool {.cdecl, importc: "b2Body_IsAwake".}
proc b2bodysetawake*(bodyid: b2bodyid; awake: bool): void {.cdecl,
    importc: "b2Body_SetAwake".}
proc b2bodyenablesleep*(bodyid: b2bodyid; enablesleep: bool): void {.cdecl,
    importc: "b2Body_EnableSleep".}
proc b2bodyissleepenabled*(bodyid: b2bodyid): bool {.cdecl,
    importc: "b2Body_IsSleepEnabled".}
proc b2bodysetsleepthreshold*(bodyid: b2bodyid; sleepvelocity: cfloat): void {.
    cdecl, importc: "b2Body_SetSleepThreshold".}
proc b2bodygetsleepthreshold*(bodyid: b2bodyid): cfloat {.cdecl,
    importc: "b2Body_GetSleepThreshold".}
proc b2bodyisenabled*(bodyid: b2bodyid): bool {.cdecl,
    importc: "b2Body_IsEnabled".}
proc b2bodydisable*(bodyid: b2bodyid): void {.cdecl, importc: "b2Body_Disable".}
proc b2bodyenable*(bodyid: b2bodyid): void {.cdecl, importc: "b2Body_Enable".}
proc b2bodysetfixedrotation*(bodyid: b2bodyid; flag: bool): void {.cdecl,
    importc: "b2Body_SetFixedRotation".}
proc b2bodyisfixedrotation*(bodyid: b2bodyid): bool {.cdecl,
    importc: "b2Body_IsFixedRotation".}
proc b2bodysetbullet*(bodyid: b2bodyid; flag: bool): void {.cdecl,
    importc: "b2Body_SetBullet".}
proc b2bodyisbullet*(bodyid: b2bodyid): bool {.cdecl, importc: "b2Body_IsBullet".}
proc b2bodyenablehitevents*(bodyid: b2bodyid; enablehitevents: bool): void {.
    cdecl, importc: "b2Body_EnableHitEvents".}
proc b2bodygetshapecount*(bodyid: b2bodyid): cint {.cdecl,
    importc: "b2Body_GetShapeCount".}
proc b2bodygetshapes*(bodyid: b2bodyid; shapearray: ptr b2shapeid;
                      capacity: cint): cint {.cdecl, importc: "b2Body_GetShapes".}
proc b2bodygetjointcount*(bodyid: b2bodyid): cint {.cdecl,
    importc: "b2Body_GetJointCount".}
proc b2bodygetjoints*(bodyid: b2bodyid; jointarray: ptr b2jointid;
                      capacity: cint): cint {.cdecl, importc: "b2Body_GetJoints".}
proc b2bodygetcontactcapacity*(bodyid: b2bodyid): cint {.cdecl,
    importc: "b2Body_GetContactCapacity".}
proc b2bodygetcontactdata*(bodyid: b2bodyid; contactdata: ptr b2contactdata;
                           capacity: cint): cint {.cdecl,
    importc: "b2Body_GetContactData".}
proc b2bodycomputeaabb*(bodyid: b2bodyid): b2aabb {.cdecl,
    importc: "b2Body_ComputeAABB".}
proc b2createcircleshape*(bodyid: b2bodyid; def: ptr b2shapedef;
                          circle: ptr b2circle): b2shapeid {.cdecl,
    importc: "b2CreateCircleShape".}
proc b2createsegmentshape*(bodyid: b2bodyid; def: ptr b2shapedef;
                           segment: ptr b2segment): b2shapeid {.cdecl,
    importc: "b2CreateSegmentShape".}
proc b2createcapsuleshape*(bodyid: b2bodyid; def: ptr b2shapedef;
                           capsule: ptr b2capsule): b2shapeid {.cdecl,
    importc: "b2CreateCapsuleShape".}
proc b2createpolygonshape*(bodyid: b2bodyid; def: ptr b2shapedef;
                           polygon: ptr b2polygon): b2shapeid {.cdecl,
    importc: "b2CreatePolygonShape".}
proc b2destroyshape*(shapeid: b2shapeid): void {.cdecl,
    importc: "b2DestroyShape".}
proc b2shapeisvalid*(id: b2shapeid): bool {.cdecl, importc: "b2Shape_IsValid".}
proc b2shapegettype*(shapeid: b2shapeid): b2shapetype {.cdecl,
    importc: "b2Shape_GetType".}
proc b2shapegetbody*(shapeid: b2shapeid): b2bodyid {.cdecl,
    importc: "b2Shape_GetBody".}
proc b2shapeissensor*(shapeid: b2shapeid): bool {.cdecl,
    importc: "b2Shape_IsSensor".}
proc b2shapesetuserdata*(shapeid: b2shapeid; userdata: pointer): void {.cdecl,
    importc: "b2Shape_SetUserData".}
proc b2shapegetuserdata*(shapeid: b2shapeid): pointer {.cdecl,
    importc: "b2Shape_GetUserData".}
proc b2shapesetdensity*(shapeid: b2shapeid; density: cfloat): void {.cdecl,
    importc: "b2Shape_SetDensity".}
proc b2shapegetdensity*(shapeid: b2shapeid): cfloat {.cdecl,
    importc: "b2Shape_GetDensity".}
proc b2shapesetfriction*(shapeid: b2shapeid; friction: cfloat): void {.cdecl,
    importc: "b2Shape_SetFriction".}
proc b2shapegetfriction*(shapeid: b2shapeid): cfloat {.cdecl,
    importc: "b2Shape_GetFriction".}
proc b2shapesetrestitution*(shapeid: b2shapeid; restitution: cfloat): void {.
    cdecl, importc: "b2Shape_SetRestitution".}
proc b2shapegetrestitution*(shapeid: b2shapeid): cfloat {.cdecl,
    importc: "b2Shape_GetRestitution".}
proc b2shapegetfilter*(shapeid: b2shapeid): b2filter {.cdecl,
    importc: "b2Shape_GetFilter".}
proc b2shapesetfilter*(shapeid: b2shapeid; filter: b2filter): void {.cdecl,
    importc: "b2Shape_SetFilter".}
proc b2shapeenablesensorevents*(shapeid: b2shapeid; flag: bool): void {.cdecl,
    importc: "b2Shape_EnableSensorEvents".}
proc b2shapearesensoreventsenabled*(shapeid: b2shapeid): bool {.cdecl,
    importc: "b2Shape_AreSensorEventsEnabled".}
proc b2shapeenablecontactevents*(shapeid: b2shapeid; flag: bool): void {.cdecl,
    importc: "b2Shape_EnableContactEvents".}
proc b2shapearecontacteventsenabled*(shapeid: b2shapeid): bool {.cdecl,
    importc: "b2Shape_AreContactEventsEnabled".}
proc b2shapeenablepresolveevents*(shapeid: b2shapeid; flag: bool): void {.cdecl,
    importc: "b2Shape_EnablePreSolveEvents".}
proc b2shapearepresolveeventsenabled*(shapeid: b2shapeid): bool {.cdecl,
    importc: "b2Shape_ArePreSolveEventsEnabled".}
proc b2shapeenablehitevents*(shapeid: b2shapeid; flag: bool): void {.cdecl,
    importc: "b2Shape_EnableHitEvents".}
proc b2shapearehiteventsenabled*(shapeid: b2shapeid): bool {.cdecl,
    importc: "b2Shape_AreHitEventsEnabled".}
proc b2shapetestpoint*(shapeid: b2shapeid; point: b2vec2): bool {.cdecl,
    importc: "b2Shape_TestPoint".}
proc b2shaperaycast*(shapeid: b2shapeid; origin: b2vec2; translation: b2vec2): b2castoutput {.
    cdecl, importc: "b2Shape_RayCast".}
proc b2shapegetcircle*(shapeid: b2shapeid): b2circle {.cdecl,
    importc: "b2Shape_GetCircle".}
proc b2shapegetsegment*(shapeid: b2shapeid): b2segment {.cdecl,
    importc: "b2Shape_GetSegment".}
proc b2shapegetsmoothsegment*(shapeid: b2shapeid): b2smoothsegment {.cdecl,
    importc: "b2Shape_GetSmoothSegment".}
proc b2shapegetcapsule*(shapeid: b2shapeid): b2capsule {.cdecl,
    importc: "b2Shape_GetCapsule".}
proc b2shapegetpolygon*(shapeid: b2shapeid): b2polygon {.cdecl,
    importc: "b2Shape_GetPolygon".}
proc b2shapesetcircle*(shapeid: b2shapeid; circle: ptr b2circle): void {.cdecl,
    importc: "b2Shape_SetCircle".}
proc b2shapesetcapsule*(shapeid: b2shapeid; capsule: ptr b2capsule): void {.
    cdecl, importc: "b2Shape_SetCapsule".}
proc b2shapesetsegment*(shapeid: b2shapeid; segment: ptr b2segment): void {.
    cdecl, importc: "b2Shape_SetSegment".}
proc b2shapesetpolygon*(shapeid: b2shapeid; polygon: ptr b2polygon): void {.
    cdecl, importc: "b2Shape_SetPolygon".}
proc b2shapegetparentchain*(shapeid: b2shapeid): b2chainid {.cdecl,
    importc: "b2Shape_GetParentChain".}
proc b2shapegetcontactcapacity*(shapeid: b2shapeid): cint {.cdecl,
    importc: "b2Shape_GetContactCapacity".}
proc b2shapegetcontactdata*(shapeid: b2shapeid; contactdata: ptr b2contactdata;
                            capacity: cint): cint {.cdecl,
    importc: "b2Shape_GetContactData".}
proc b2shapegetaabb*(shapeid: b2shapeid): b2aabb {.cdecl,
    importc: "b2Shape_GetAABB".}
proc b2shapegetclosestpoint*(shapeid: b2shapeid; target: b2vec2): b2vec2 {.
    cdecl, importc: "b2Shape_GetClosestPoint".}
proc b2createchain*(bodyid: b2bodyid; def: ptr b2chaindef): b2chainid {.cdecl,
    importc: "b2CreateChain".}
proc b2destroychain*(chainid: b2chainid): void {.cdecl,
    importc: "b2DestroyChain".}
proc b2chainsetfriction*(chainid: b2chainid; friction: cfloat): void {.cdecl,
    importc: "b2Chain_SetFriction".}
proc b2chainsetrestitution*(chainid: b2chainid; restitution: cfloat): void {.
    cdecl, importc: "b2Chain_SetRestitution".}
proc b2chainisvalid*(id: b2chainid): bool {.cdecl, importc: "b2Chain_IsValid".}
proc b2destroyjoint*(jointid: b2jointid): void {.cdecl,
    importc: "b2DestroyJoint".}
proc b2jointisvalid*(id: b2jointid): bool {.cdecl, importc: "b2Joint_IsValid".}
proc b2jointgettype*(jointid: b2jointid): b2jointtype {.cdecl,
    importc: "b2Joint_GetType".}
proc b2jointgetbodya*(jointid: b2jointid): b2bodyid {.cdecl,
    importc: "b2Joint_GetBodyA".}
proc b2jointgetbodyb*(jointid: b2jointid): b2bodyid {.cdecl,
    importc: "b2Joint_GetBodyB".}
proc b2jointgetlocalanchora*(jointid: b2jointid): b2vec2 {.cdecl,
    importc: "b2Joint_GetLocalAnchorA".}
proc b2jointgetlocalanchorb*(jointid: b2jointid): b2vec2 {.cdecl,
    importc: "b2Joint_GetLocalAnchorB".}
proc b2jointsetcollideconnected*(jointid: b2jointid; shouldcollide: bool): void {.
    cdecl, importc: "b2Joint_SetCollideConnected".}
proc b2jointgetcollideconnected*(jointid: b2jointid): bool {.cdecl,
    importc: "b2Joint_GetCollideConnected".}
proc b2jointsetuserdata*(jointid: b2jointid; userdata: pointer): void {.cdecl,
    importc: "b2Joint_SetUserData".}
proc b2jointgetuserdata*(jointid: b2jointid): pointer {.cdecl,
    importc: "b2Joint_GetUserData".}
proc b2jointwakebodies*(jointid: b2jointid): void {.cdecl,
    importc: "b2Joint_WakeBodies".}
proc b2jointgetconstraintforce*(jointid: b2jointid): b2vec2 {.cdecl,
    importc: "b2Joint_GetConstraintForce".}
proc b2jointgetconstrainttorque*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2Joint_GetConstraintTorque".}
proc b2createdistancejoint*(worldid: b2worldid; def: ptr b2distancejointdef): b2jointid {.
    cdecl, importc: "b2CreateDistanceJoint".}
proc b2distancejointsetlength*(jointid: b2jointid; length: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetLength".}
proc b2distancejointgetlength*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetLength".}
proc b2distancejointenablespring*(jointid: b2jointid; enablespring: bool): void {.
    cdecl, importc: "b2DistanceJoint_EnableSpring".}
proc b2distancejointisspringenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2DistanceJoint_IsSpringEnabled".}
proc b2distancejointsetspringhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetSpringHertz".}
proc b2distancejointsetspringdampingratio*(jointid: b2jointid;
    dampingratio: cfloat): void {.cdecl, importc: "b2DistanceJoint_SetSpringDampingRatio".}
proc b2distancejointgethertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetHertz".}
proc b2distancejointgetdampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetDampingRatio".}
proc b2distancejointenablelimit*(jointid: b2jointid; enablelimit: bool): void {.
    cdecl, importc: "b2DistanceJoint_EnableLimit".}
proc b2distancejointislimitenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2DistanceJoint_IsLimitEnabled".}
proc b2distancejointsetlengthrange*(jointid: b2jointid; minlength: cfloat;
                                    maxlength: cfloat): void {.cdecl,
    importc: "b2DistanceJoint_SetLengthRange".}
proc b2distancejointgetminlength*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMinLength".}
proc b2distancejointgetmaxlength*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMaxLength".}
proc b2distancejointgetcurrentlength*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetCurrentLength".}
proc b2distancejointenablemotor*(jointid: b2jointid; enablemotor: bool): void {.
    cdecl, importc: "b2DistanceJoint_EnableMotor".}
proc b2distancejointismotorenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2DistanceJoint_IsMotorEnabled".}
proc b2distancejointsetmotorspeed*(jointid: b2jointid; motorspeed: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetMotorSpeed".}
proc b2distancejointgetmotorspeed*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMotorSpeed".}
proc b2distancejointsetmaxmotorforce*(jointid: b2jointid; force: cfloat): void {.
    cdecl, importc: "b2DistanceJoint_SetMaxMotorForce".}
proc b2distancejointgetmaxmotorforce*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMaxMotorForce".}
proc b2distancejointgetmotorforce*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2DistanceJoint_GetMotorForce".}
proc b2createmotorjoint*(worldid: b2worldid; def: ptr b2motorjointdef): b2jointid {.
    cdecl, importc: "b2CreateMotorJoint".}
proc b2motorjointsetlinearoffset*(jointid: b2jointid; linearoffset: b2vec2): void {.
    cdecl, importc: "b2MotorJoint_SetLinearOffset".}
proc b2motorjointgetlinearoffset*(jointid: b2jointid): b2vec2 {.cdecl,
    importc: "b2MotorJoint_GetLinearOffset".}
proc b2motorjointsetangularoffset*(jointid: b2jointid; angularoffset: cfloat): void {.
    cdecl, importc: "b2MotorJoint_SetAngularOffset".}
proc b2motorjointgetangularoffset*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MotorJoint_GetAngularOffset".}
proc b2motorjointsetmaxforce*(jointid: b2jointid; maxforce: cfloat): void {.
    cdecl, importc: "b2MotorJoint_SetMaxForce".}
proc b2motorjointgetmaxforce*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MotorJoint_GetMaxForce".}
proc b2motorjointsetmaxtorque*(jointid: b2jointid; maxtorque: cfloat): void {.
    cdecl, importc: "b2MotorJoint_SetMaxTorque".}
proc b2motorjointgetmaxtorque*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MotorJoint_GetMaxTorque".}
proc b2motorjointsetcorrectionfactor*(jointid: b2jointid;
                                      correctionfactor: cfloat): void {.cdecl,
    importc: "b2MotorJoint_SetCorrectionFactor".}
proc b2motorjointgetcorrectionfactor*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MotorJoint_GetCorrectionFactor".}
proc b2createmousejoint*(worldid: b2worldid; def: ptr b2mousejointdef): b2jointid {.
    cdecl, importc: "b2CreateMouseJoint".}
proc b2mousejointsettarget*(jointid: b2jointid; target: b2vec2): void {.cdecl,
    importc: "b2MouseJoint_SetTarget".}
proc b2mousejointgettarget*(jointid: b2jointid): b2vec2 {.cdecl,
    importc: "b2MouseJoint_GetTarget".}
proc b2mousejointsetspringhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2MouseJoint_SetSpringHertz".}
proc b2mousejointgetspringhertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MouseJoint_GetSpringHertz".}
proc b2mousejointsetspringdampingratio*(jointid: b2jointid; dampingratio: cfloat): void {.
    cdecl, importc: "b2MouseJoint_SetSpringDampingRatio".}
proc b2mousejointgetspringdampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MouseJoint_GetSpringDampingRatio".}
proc b2mousejointsetmaxforce*(jointid: b2jointid; maxforce: cfloat): void {.
    cdecl, importc: "b2MouseJoint_SetMaxForce".}
proc b2mousejointgetmaxforce*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2MouseJoint_GetMaxForce".}
proc b2createprismaticjoint*(worldid: b2worldid; def: ptr b2prismaticjointdef): b2jointid {.
    cdecl, importc: "b2CreatePrismaticJoint".}
proc b2prismaticjointenablespring*(jointid: b2jointid; enablespring: bool): void {.
    cdecl, importc: "b2PrismaticJoint_EnableSpring".}
proc b2prismaticjointisspringenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2PrismaticJoint_IsSpringEnabled".}
proc b2prismaticjointsetspringhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetSpringHertz".}
proc b2prismaticjointgetspringhertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetSpringHertz".}
proc b2prismaticjointsetspringdampingratio*(jointid: b2jointid;
    dampingratio: cfloat): void {.cdecl, importc: "b2PrismaticJoint_SetSpringDampingRatio".}
proc b2prismaticjointgetspringdampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetSpringDampingRatio".}
proc b2prismaticjointenablelimit*(jointid: b2jointid; enablelimit: bool): void {.
    cdecl, importc: "b2PrismaticJoint_EnableLimit".}
proc b2prismaticjointislimitenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2PrismaticJoint_IsLimitEnabled".}
proc b2prismaticjointgetlowerlimit*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetLowerLimit".}
proc b2prismaticjointgetupperlimit*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetUpperLimit".}
proc b2prismaticjointsetlimits*(jointid: b2jointid; lower: cfloat; upper: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetLimits".}
proc b2prismaticjointenablemotor*(jointid: b2jointid; enablemotor: bool): void {.
    cdecl, importc: "b2PrismaticJoint_EnableMotor".}
proc b2prismaticjointismotorenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2PrismaticJoint_IsMotorEnabled".}
proc b2prismaticjointsetmotorspeed*(jointid: b2jointid; motorspeed: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetMotorSpeed".}
proc b2prismaticjointgetmotorspeed*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetMotorSpeed".}
proc b2prismaticjointsetmaxmotorforce*(jointid: b2jointid; force: cfloat): void {.
    cdecl, importc: "b2PrismaticJoint_SetMaxMotorForce".}
proc b2prismaticjointgetmaxmotorforce*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetMaxMotorForce".}
proc b2prismaticjointgetmotorforce*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2PrismaticJoint_GetMotorForce".}
proc b2createrevolutejoint*(worldid: b2worldid; def: ptr b2revolutejointdef): b2jointid {.
    cdecl, importc: "b2CreateRevoluteJoint".}
proc b2revolutejointenablespring*(jointid: b2jointid; enablespring: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableSpring".}
proc b2revolutejointislimitenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2RevoluteJoint_IsLimitEnabled".}
proc b2revolutejointsetspringhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetSpringHertz".}
proc b2revolutejointgetspringhertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetSpringHertz".}
proc b2revolutejointsetspringdampingratio*(jointid: b2jointid;
    dampingratio: cfloat): void {.cdecl, importc: "b2RevoluteJoint_SetSpringDampingRatio".}
proc b2revolutejointgetspringdampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetSpringDampingRatio".}
proc b2revolutejointgetangle*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetAngle".}
proc b2revolutejointenablelimit*(jointid: b2jointid; enablelimit: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableLimit".}
proc b2revolutejointgetlowerlimit*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetLowerLimit".}
proc b2revolutejointgetupperlimit*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetUpperLimit".}
proc b2revolutejointsetlimits*(jointid: b2jointid; lower: cfloat; upper: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetLimits".}
proc b2revolutejointenablemotor*(jointid: b2jointid; enablemotor: bool): void {.
    cdecl, importc: "b2RevoluteJoint_EnableMotor".}
proc b2revolutejointismotorenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2RevoluteJoint_IsMotorEnabled".}
proc b2revolutejointsetmotorspeed*(jointid: b2jointid; motorspeed: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetMotorSpeed".}
proc b2revolutejointgetmotorspeed*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetMotorSpeed".}
proc b2revolutejointgetmotortorque*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetMotorTorque".}
proc b2revolutejointsetmaxmotortorque*(jointid: b2jointid; torque: cfloat): void {.
    cdecl, importc: "b2RevoluteJoint_SetMaxMotorTorque".}
proc b2revolutejointgetmaxmotortorque*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2RevoluteJoint_GetMaxMotorTorque".}
proc b2createweldjoint*(worldid: b2worldid; def: ptr b2weldjointdef): b2jointid {.
    cdecl, importc: "b2CreateWeldJoint".}
proc b2weldjointsetlinearhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetLinearHertz".}
proc b2weldjointgetlinearhertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WeldJoint_GetLinearHertz".}
proc b2weldjointsetlineardampingratio*(jointid: b2jointid; dampingratio: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetLinearDampingRatio".}
proc b2weldjointgetlineardampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WeldJoint_GetLinearDampingRatio".}
proc b2weldjointsetangularhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetAngularHertz".}
proc b2weldjointgetangularhertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WeldJoint_GetAngularHertz".}
proc b2weldjointsetangulardampingratio*(jointid: b2jointid; dampingratio: cfloat): void {.
    cdecl, importc: "b2WeldJoint_SetAngularDampingRatio".}
proc b2weldjointgetangulardampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WeldJoint_GetAngularDampingRatio".}
proc b2createwheeljoint*(worldid: b2worldid; def: ptr b2wheeljointdef): b2jointid {.
    cdecl, importc: "b2CreateWheelJoint".}
proc b2wheeljointenablespring*(jointid: b2jointid; enablespring: bool): void {.
    cdecl, importc: "b2WheelJoint_EnableSpring".}
proc b2wheeljointisspringenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2WheelJoint_IsSpringEnabled".}
proc b2wheeljointsetspringhertz*(jointid: b2jointid; hertz: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetSpringHertz".}
proc b2wheeljointgetspringhertz*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetSpringHertz".}
proc b2wheeljointsetspringdampingratio*(jointid: b2jointid; dampingratio: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetSpringDampingRatio".}
proc b2wheeljointgetspringdampingratio*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetSpringDampingRatio".}
proc b2wheeljointenablelimit*(jointid: b2jointid; enablelimit: bool): void {.
    cdecl, importc: "b2WheelJoint_EnableLimit".}
proc b2wheeljointislimitenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2WheelJoint_IsLimitEnabled".}
proc b2wheeljointgetlowerlimit*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetLowerLimit".}
proc b2wheeljointgetupperlimit*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetUpperLimit".}
proc b2wheeljointsetlimits*(jointid: b2jointid; lower: cfloat; upper: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetLimits".}
proc b2wheeljointenablemotor*(jointid: b2jointid; enablemotor: bool): void {.
    cdecl, importc: "b2WheelJoint_EnableMotor".}
proc b2wheeljointismotorenabled*(jointid: b2jointid): bool {.cdecl,
    importc: "b2WheelJoint_IsMotorEnabled".}
proc b2wheeljointsetmotorspeed*(jointid: b2jointid; motorspeed: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetMotorSpeed".}
proc b2wheeljointgetmotorspeed*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetMotorSpeed".}
proc b2wheeljointsetmaxmotortorque*(jointid: b2jointid; torque: cfloat): void {.
    cdecl, importc: "b2WheelJoint_SetMaxMotorTorque".}
proc b2wheeljointgetmaxmotortorque*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetMaxMotorTorque".}
proc b2wheeljointgetmotortorque*(jointid: b2jointid): cfloat {.cdecl,
    importc: "b2WheelJoint_GetMotorTorque".}
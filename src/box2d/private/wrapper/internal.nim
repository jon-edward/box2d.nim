# These are translated C inlined functions and other internal structs, constants, and functions from header 
# files in box2c/src. Do not use these outside of tests.

import bitops

import box2d

import ../compile
ensureCompiled()

type  
  b2BitSet* {.pure, inheritable, bycopy.} = object
    bits*: ptr uint64        ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/bitset.h:12:16
    blockCapacity*: uint32
    blockCount*: uint32

  b2SetItem* {.pure, inheritable, bycopy.} = object
    key*: uint64             ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/table.h:11:16
    hash*: uint32

  b2HashSet* {.pure, inheritable, bycopy.} = object
    items*: ptr b2SetItem    ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/table.h:17:16
    capacity*: uint32
    count*: uint32

const B2_NULL_INDEX* = -1    ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/core.h:8:9
const b2_maxWorkers* = 64    ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/core.h:117:9
const b2_graphColorCount* = 12 ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/core.h:121:9
const b2_maxWorlds* = 128    ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/core.h:129:9
const b2_timeToSleep* = 0.5  ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/core.h:151:9
const B2_SECRET_COOKIE* = 1152023 ## Generated based on /home/jont/jon-edward/box2d.nim/src/box2d/private/box2c/src/core.h:160:9

proc b2AABB_RayCast*(a: b2AABB; p1: b2Vec2; p2: b2Vec2): b2CastOutput {.cdecl,
    importc: "b2AABB_RayCast".}

proc b2CreateBitSet*(bitCapacity: uint32): b2BitSet {.cdecl,
    importc: "b2CreateBitSet".}

proc b2DestroyBitSet*(bitSet: ptr b2BitSet): void {.cdecl,
    importc: "b2DestroyBitSet".}

proc b2SetBitCountAndClear*(bitSet: ptr b2BitSet; bitCount: uint32): void {.
    cdecl, importc: "b2SetBitCountAndClear".}

proc b2InPlaceUnion*(setA: ptr b2BitSet; setB: ptr b2BitSet): void {.cdecl,
    importc: "b2InPlaceUnion".}

proc b2GrowBitSet*(bitSet: ptr b2BitSet; blockCount: uint32): void {.cdecl,
    importc: "b2GrowBitSet".}

proc b2CreateSet*(capacity: int32): b2HashSet {.cdecl, importc: "b2CreateSet".}

proc b2DestroySet*(set: ptr b2HashSet): void {.cdecl, importc: "b2DestroySet".}

proc b2ClearSet*(set: ptr b2HashSet): void {.cdecl, importc: "b2ClearSet".}

proc b2AddKey*(set: ptr b2HashSet; key: uint64): bool {.cdecl,
    importc: "b2AddKey".}

proc b2RemoveKey*(set: ptr b2HashSet; key: uint64): bool {.cdecl,
    importc: "b2RemoveKey".}

proc b2ContainsKey*(set: ptr b2HashSet; key: uint64): bool {.cdecl,
    importc: "b2ContainsKey".}

proc b2GetHashSetBytes*(set: ptr b2HashSet): cint {.cdecl,
    importc: "b2GetHashSetBytes".}

# Translated from box2c/src/bitset.h
proc b2SetBit*(bitSet: ptr b2BitSet, bitIndex: uint32) {.inline.} = 
    let blockIndex = bitIndex div 64
    assert blockIndex < bitSet.blockCount
    cast[ptr UncheckedArray[uint64]](bitSet.bits)[blockIndex].setBit(bitIndex mod 64)

# Translated from box2c/src/bitset.h
proc b2GetBit*(bitSet: b2BitSet, bitIndex: uint32): bool {.inline.} = 
    let blockIndex = bitIndex div 64
    if blockIndex >= bitSet.blockCount:
        return false
    cast[ptr UncheckedArray[uint64]](bitSet.bits)[blockIndex].testBit(bitIndex mod 64)

# Translated from box2c/src/aabb.h
proc b2Perimeter*(a: b2AABB): cfloat {.inline.} = 
    let wx = a.upperBound.x - a.lowerBound.x
    let wy = a.upperBound.y - a.lowerBound.y
    2.0f * (wx + wy)

# Translated from box2c/src/aabb.h
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

# Translated from box2c/src/aabb.h
proc b2AABB_ContainsWithMargin*(a: b2AABB, b: b2AABB, margin: cfloat): bool {.inline.} = 
    (
        (a.lowerBound.x <= (b.lowerBound.x - margin)) and
        (a.lowerBound.y <= (b.lowerBound.y - margin)) and 
        ((b.upperBound.x + margin) <= a.upperBound.x) and
        ((b.upperBound.y + margin) <= a.upperBound.y)
    )

# Translated from box2c/src/aabb.h
proc b2AABB_Overlaps*(a: b2AABB, b: b2AABB): bool {.inline.} = 
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

# Translated from box2c/src/ctz.h
proc b2IsPowerOf2*(x: cint): bool {.inline.} = 
    x.bitand(x - 1) == 0

# Translated from box2c/src/ctz.h
proc b2BoundingPowerOf2*(x: cint): cint {.inline.} = 
    if x <= 1:
        1
    else:
        (32 - countLeadingZeroBits(x - 1)).int32

# Translated from box2c/src/ctz.h
proc b2RoundUpPowerOf2*(x: cint): cint {.inline.} = 
    if x <= 1:
        1
    else:
        (1 shl (32 - countLeadingZeroBits(x - 1))).int32

# Translated from box2c/src/table.h
proc b2ShapePairKey*(k1: uint64, k2: uint64): uint64 {.inline.} = 
    if k1 < k2:
        (k1 shl 32).bitor(k2)
    else:
        (k2 shl 32).bitor(k1)
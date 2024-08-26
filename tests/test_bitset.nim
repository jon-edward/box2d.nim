import unittest
import bitops

import box2d

include box2d/private/internal


# Translated from box2d/src/bitset.h
proc b2SetBit*(bitSet: ptr b2BitSet, bitIndex: uint32) {.inline.} = 
    let blockIndex = bitIndex div 64
    assert blockIndex < bitSet.blockCount
    cast[ptr UncheckedArray[uint64]](bitSet.bits)[blockIndex].setBit(bitIndex mod 64)

# Translated from box2d/src/bitset.h
proc b2GetBit*(bitSet: b2BitSet, bitIndex: uint32): bool {.inline.} = 
    let blockIndex = bitIndex div 64
    if blockIndex >= bitSet.blockCount:
        return false
    cast[ptr UncheckedArray[uint64]](bitSet.bits)[blockIndex].testBit(bitIndex mod 64)


const count: uint32 = 169


test "bit_set_test":
    let bitSet = b2CreateBitSet(count)

    b2SetBitCountAndClear(bitSet.addr, count)
    var values: array[count, bool]

    var 
        i1: uint32 = 0
        i2: uint32 = 1

    b2SetBit(bitSet.addr, i1)
    values[i1] = true

    while i2 < count:
        b2SetBit(bitSet.addr, i2)
        values[i2] = true
        let next = (i1 + i2).uint32
        i1 = i2
        i2 = next
    
    for i in (0.uint32)..<count:
        let value = b2GetBit(bitSet, i)
        check value == values[i]
    
    b2DestroyBitSet(bitSet.addr)

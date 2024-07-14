import unittest

import box2d/private/internal


const setSpan = 317
const itemCount = ((setSpan * setSpan - setSpan) / 2).uint32


test "table_test":
    let power = b2BoundingPowerOf2(3008)
    check power == 12

    let nextPowerOf2 = b2RoundUpPowerOf2(3008)
    check nextPowerOf2 == (1 shl power)

    const n = setSpan
    var removed: array[itemCount, bool]

    var tSet = b2CreateSet(16)

    for i in 0..<n:
        for j in (i+1)..<n:
            let key = b2shapePairKey(i.uint64, j.uint64)
            discard b2AddKey(tSet.addr, key)
    
    check tSet.count == itemCount

    var k: uint32 = 0
    var removeCount: uint32 = 0

    for i in 0..<n:
        for j in (i+1)..<n:
            if j == (i + 1):
                let key = b2ShapePairKey(i.uint64, j.uint64)
                discard b2RemoveKey(tSet.addr, key)
                removed[k] = true
                k += 1
                removeCount += 1
            else:
                removed[k] = false
                k += 1
    
    check tSet.count == (itemCount - removeCount)








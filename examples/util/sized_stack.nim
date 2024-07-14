## Implementation of a SizedStack, where the oldest values are overwritten when the stack 
## is at capacity.

from math import floorMod


type SizedStack*[N : static[int], T] = object
    arr: array[N, T]
    length: int32
    insertionPoint: int32


## Clear SizedStack and initialize with value, no callback
proc clear*[N : static[int], T](stack: var SizedStack[N, T], withValue: T) = 
    for i in 0..<N:
        stack.arr[i] = withValue
    stack.insertionPoint = 0
    stack.length = 0


## Clear SizedStack and initialize with value, use callback
## 
## Note: destroyCallback is called on every item, no matter if this is some empty value.
## Handling this is a responsibility of the callback.
proc clear*[N : static[int], T](stack: var SizedStack[N, T], withValue: T, destroyCallback: proc (toDestroy: T)) = 
    for i in 0..<N:
        destroyCallback(stack.arr[i])
        stack.arr[i] = withValue
    stack.insertionPoint = 0
    stack.length = 0


## Insert into SizedStack at insertionPoint, no callback
proc insert*[N : static[int], T](stack: var SizedStack[N, T], value: T): T = 
    if stack.length < N:
        stack.arr[stack.insertionPoint] = value
        stack.length += 1
        stack.insertionPoint = floorMod((stack.insertionPoint + 1), N)
        return
    stack.arr[stack.insertionPoint] = value
    stack.insertionPoint = floorMod((stack.insertionPoint + 1), N)


## Insert into SizedStack at insertionPoint, use callback if destruction needed
proc insert*[N : static[int], T](stack: var SizedStack[N, T], value: T, destroyCallback: proc (toDestroy: T)) = 
    if stack.length < N:
        stack.arr[stack.insertionPoint] = value
        stack.length += 1
        stack.insertionPoint = floorMod((stack.insertionPoint + 1), N)
        return
    destroyCallback(stack.arr[stack.insertionPoint])
    stack.arr[stack.insertionPoint] = value
    stack.insertionPoint = floorMod((stack.insertionPoint + 1), N)


## Iterate over all elements in SizedStack
iterator iter*[N : static[int], T](stack: SizedStack[N, T]): T = 
    for i in 1..stack.length:
        yield stack.arr[floorMod((stack.insertionPoint - i), N)]


## Current length of SizedStack
proc length*[N : static[int], T](stack: SizedStack[N, T]): int32 = 
    stack.length
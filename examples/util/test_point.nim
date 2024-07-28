## Get the bodyId of a shape under a position vector, if any.

import box2d/wrapper


## Passed to queryCallback as a pointer
type QueryContext = object 
    point: b2Vec2
    bodyId: b2BodyId


## Queries over potential shape overlaps
## 
## Note: These are not definite overlaps, and this callback needs to 
## determine if there's an actual overlap.
proc queryCallback(shapeId: b2ShapeId, context: pointer): bool {.cdecl.} = 
    let queryContext: ptr QueryContext = cast[ptr QueryContext](context)

    let bodyId = b2Shape_GetBody(shapeId)
    let bodyType = b2Body_GetType(bodyId)

    if bodyType != b2_dynamicBody:
        return true  # Continue query, miss kinematic/static objects

    let overlap = b2Shape_TestPoint(shapeId, queryContext.point)

    if overlap:
        queryContext.bodyId = bodyId
        return false  # Stop query, found body

    return true  # Continue query, missed


## Set a size for the position's hitbox.
const hitBoxHalfLen = b2Vec2(x: 0.001f, y: 0.001f)


## Query over potential overlaps with a position, and return the bodyId of 
## the first result.
proc testPoint*(worldId: b2WorldId, position: b2Vec2): b2BodyId = 
    let hitBox = b2AABB(
        lowerBound: b2Sub(position, hitBoxHalfLen),
        upperBound: b2Add(position, hitBoxHalfLen)
    )

    let context = QueryContext(point: position, bodyId: b2_nullBodyId)

    b2World_OverlapAABB(worldId, hitBox, b2DefaultQueryFilter(), queryCallback, context.addr)

    context.bodyId

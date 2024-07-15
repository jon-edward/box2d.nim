import unittest

import box2d/wrapper


test "hello_world":
  var worldDef = b2DefaultWorldDef()
  worldDef.gravity = b2Vec2(x: 0.0f, y: -10.0f)

  let worldId = b2CreateWorld(worldDef.addr)
  check b2World_IsValid(worldId)

  var groundBodyDef = b2DefaultBodyDef()
  groundBodyDef.position = b2Vec2(x: 0.0f, y: -10f)

  let groundId = b2CreateBody(worldId, groundBodyDef.addr)
  check b2Body_IsValid(groundId)

  let groundBox = b2MakeBox(50.0f, 10.0f)

  let groundShapeDef = b2DefaultShapeDef()
  discard b2CreatePolygonShape(groundId, groundShapeDef.addr, groundBox.addr)

  var bodyDef = b2DefaultBodyDef()
  bodyDef.bodyType = b2_dynamicBody
  bodyDef.position = b2Vec2(x: 0.0f, y: 4.0f)

  let bodyId = b2CreateBody(worldId, bodyDef.addr)

  let dynamicBox = b2MakeBox(1.0f, 1.0f)

  var shapeDef = b2DefaultShapeDef()
  shapeDef.density = 1.0f
  shapeDef.friction = 0.3f

  discard b2CreatePolygonShape(bodyId, shapeDef.addr, dynamicBox.addr)

  let timeStep: cfloat = 1.0f / 60.0f
  let subStepCount: cint = 4

  var position = b2Body_GetPosition(bodyId)
  var angle = b2Body_GetAngle(bodyId)

  for i in 0..<90:
    b2World_Step(worldId, timeStep, subStepCount)

    position = b2Body_GetPosition(bodyId)
    angle = b2Body_GetAngle(bodyId)
  
  b2DestroyWorld(worldId)

  check position.x.abs < 0.01f
  check (position.y - 1.0f).abs < 0.01f
  check angle.abs < 0.01f


test "empty_world":
  let worldDef = b2DefaultWorldDef()
  let worldId = b2CreateWorld(worldDef.addr)

  check b2World_IsValid(worldId)

  let timeStep = 1.0f / 60.0f
  let subStepCount: int32 = 1

  for i in 0..<60:
    b2World_Step(worldId, timeStep, subStepCount)
  
  b2DestroyWorld(worldId)

  check not b2World_IsValid(worldId)


const bodyCount = 10


test "destroy_all_bodies_world":
  let worldDef = b2DefaultWorldDef()
  let worldId = b2CreateWorld(worldDef.addr)

  check b2World_IsValid(worldId)

  var count = 0
  var creating = true

  var bodyIds: array[bodyCount, b2BodyId]
  var bodyDef = b2DefaultBodyDef()
  bodyDef.bodyType = b2_dynamicBody
  let square = b2MakeSquare(0.5f)

  for i in 0..<(2*bodyCount + 10):
    if creating:
      if count < bodyCount:
        bodyIds[count] = b2CreateBody(worldId, bodyDef.addr)
        let shapeDef = b2DefaultShapeDef()
        discard b2CreatePolygonShape(bodyIds[count], shapeDef.addr, square.addr)
        count += 1
      else:
        creating = false
    
    elif count > 0:
      b2DestroyBody(bodyIds[count - 1])
      bodyIds[count - 1] = b2_nullBodyId
      count -= 1
    
    b2World_Step(worldId, 1.0f / 60.0f, 3)
  
  let counters = b2World_GetCounters(worldId)

  check counters.bodyCount == 0

  b2DestroyWorld(worldId)

  check not b2World_IsValid(worldId)


test "test_is_valid":
  let worldDef = b2DefaultWorldDef()
  let worldId = b2CreateWorld(worldDef.addr)
  check b2World_IsValid(worldId)

  let bodyDef = b2DefaultBodyDef()

  let bodyId1 = b2CreateBody(worldId, bodyDef.addr)
  check b2Body_IsValid(bodyId1)

  let bodyId2 = b2CreateBody(worldId, bodyDef.addr)
  check b2Body_IsValid(bodyId2)

  b2DestroyBody(bodyId1)
  check not b2Body_IsValid(bodyId1)

  b2DestroyBody(bodyId2)
  check not b2Body_IsValid(bodyId2)

  b2DestroyWorld(worldId)

  check not b2World_IsValid(worldId)
  check not b2Body_IsValid(bodyId1)
  check not b2Body_IsValid(bodyId2)

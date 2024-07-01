# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import box2d/wrapper


test "hello_world":
  var worldDef = b2defaultworlddef()
  worldDef.gravity = b2vec2(x: 0.0f, y: -10.0f)

  let worldId = b2createworld(worldDef.addr)
  check b2worldisvalid(worldId)

  var groundBodyDef = b2defaultbodydef()
  groundBodyDef.position = b2vec2(x: 0.0f, y: -10f)

  let groundId = b2createbody(worldId, groundBodyDef.addr)
  check b2bodyisvalid(groundId)

  let groundBox = b2makebox(50.0f, 10.0f)

  let groundShapeDef = b2defaultshapedef()
  discard b2createpolygonshape(groundId, groundShapeDef.addr, groundBox.addr)

  var bodyDef = b2defaultbodydef()
  bodyDef.`type` = b2dynamicbody
  bodyDef.position = b2vec2(x: 0.0f, y: 4.0f)

  let bodyId = b2createbody(worldId, bodyDef.addr)

  let dynamicBox = b2makebox(1.0f, 1.0f)

  var shapeDef = b2defaultshapedef()
  shapeDef.density = 1.0f
  shapeDef.friction = 0.3f

  discard b2createpolygonshape(bodyId, shapeDef.addr, dynamicBox.addr)

  let timeStep: cfloat = 1.0f / 60.0f
  let subStepCount: cint = 4

  var position = b2bodygetposition(bodyId)
  var angle = b2bodygetangle(bodyId)

  for i in 0..<90:
    b2worldstep(worldId, timeStep, subStepCount)

    position = b2bodygetposition(bodyId)
    angle = b2bodygetangle(bodyId)
  
  b2destroyworld(worldId)

  check position.x.abs < 0.01f
  check (position.y - 1.0f).abs < 0.01f
  check angle.abs < 0.01f

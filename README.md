# box2d.nim
Nim bindings for Erin Catto's [Box2D](https://github.com/erincatto/box2c) physics engine.

## Installation 

```
nimble install box2d
```

## Documentation

See library documentation [here](https://jon-edward.github.io/box2d.nim/). Also, 
because the library's naming is largely consistent with that of Box2D, you can use the 
[Box2D v3 documentation](https://box2d.org/documentation_v3/) directly.

The only exception to the naming consistency is `b2BodyDef.type` being translated to `b2BodyDef.bodyType`
because of the reserved `type` keyword in Nim.

## Testing 

There are most of Box2D's unit tests translated to Nim in the 
[tests](https://github.com/jon-edward/box2d.nim/tree/main/tests) directory. In addition, there are larger examples 
using [naylib](https://github.com/planetis-m/naylib) for rendering in the [examples](https://github.com/jon-edward/box2d.nim/tree/main/examples) 
directory.

Building and testing is done for `ubuntu-latest`, `windows-latest`, and `macos-latest` GitHub runners per release.

## Simple example

Box2D passes the user IDs for creating, manipulating, and reading world members such as shapes and bodies. The properties 
of these members are stored in various -`Def` types, such as [`b2BodyDef`](https://jon-edward.github.io/box2d.nim/box2d.html#b2BodyDef). 

Making a dynamic body with a box shape is as simple as defining a world with a given gravity vector, creating a dynamic body in that world, 
attaching it to a shape, and stepping the simulation forward. 

Notice that -`Def` types are used only for passing to `b2Create`- functions, 
and opaque -`Id` objects (`worldId`, `bodyId`) are retained.

```nim
import box2d

# Create world definition
var worldDef = b2DefaultWorldDef()
worldDef.gravity = b2Vec2(x: 0.0f, y: -10.0f)

# Create world from definition
let worldId = b2CreateWorld(worldDef.addr)

# worldDef no longer needed

# Create body definition
var bodyDef = b2DefaultBodyDef()
bodyDef.bodyType = b2_dynamicBody
bodyDef.position = b2Vec2(x: 0.0f, y: 4.0f)

# Create body from definition
let bodyId = b2CreateBody(worldId, bodyDef.addr)

# bodyDef no longer needed

# Create polygon (indirectly through b2MakeSquare)
let dynamicBox = b2MakeSquare(1.0f)

# Create shape definition
var shapeDef = b2DefaultShapeDef()
shapeDef.density = 1.0f
shapeDef.friction = 0.3f

# Add polygon to simulation using body, shape definition, and box 
discard b2CreatePolygonShape(bodyId, shapeDef.addr, dynamicBox.addr)

# shapeDef and dynamicBox no longer needed

# C wrappers need C types, such as cfloats and cints
let timeStep: cfloat = 1/60
let subStepCount: cint = 4

# Step simulation 60 times
for _ in 0..<60:
    b2World_Step(worldId, timeStep, subStepCount)

# Check that the box fell
echo "Dynamic box y-position: ", b2Body_GetPosition(bodyId).y

# Cleanup
b2DestroyBody(bodyId)
b2DestroyWorld(worldId)
```

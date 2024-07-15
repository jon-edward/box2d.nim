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

# box2d.nim
Nim bindings for Erin Catto's [Box2D](https://github.com/erincatto/box2c) physics engine.

## Installation 

```
nimble install box2d
```

## Documentation

I've kept the names of external library members consistent with that of Box2D v3 to help in searching its
[documentation](https://box2d.org/documentation_v3/). In cases when the identifiers conflict with 
reserved Nim keywords (ie. `b2BodyDef.type`), I've escaped the names with backticks (\`type\`). 

## Testing 

I've translated most of Box2D's tests to Nim to demonstrate how the wrapped definitions should be used in a 
Nim environment. In addition, I've included larger examples using [naylib](https://github.com/planetis-m/naylib) 
for rendering in the [examples](https://github.com/jon-edward/box2d.nim/tree/main/examples) 
directory.

## Notes

I was motivated to wrap Box2D v3 instead of (the currently more widely known) v2 because wrapping C is more 
straightforward than wrapping C++ in Nim, which was v2's implementation language. My hope is that having 
Erin Catto's work available to Nim developers will have a meaningful impact on the game development community 
within the Nim ecosystem.

I used [futhark](https://github.com/PMunch/futhark) to create the initial wrapping script to automate much of 
the work generating declarations, and I've included what I used to generate the starting point in the 
[scripts](https://github.com/jon-edward/box2d.nim/tree/main/scripts) directory.

## Next steps

- [ ] Add automated unit testing 
- [ ] Add build tests 
- [ ] Improve in-library documentation
- [ ] Add more examples 
- [ ] Implement a higher level API that includes more idiomatic Nim patterns
- [ ] Add procedures to make vector math easier 
- [ ] Make generated WASM faster
- [ ] Create utilities for performing physics calculations in a secondary thread

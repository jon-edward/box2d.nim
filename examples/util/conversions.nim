## Converts objects between their raylib and box2d variants, applying a scaling 
## for vectors and scalars.

import bitops

from raylib import Vector2, Color
from box2d/wrapper import b2Vec2, b2HexColor


const physicsScaling* = 50.0f


proc toB2*(vec: Vector2): b2Vec2 = 
    b2Vec2(x: vec.x / physicsScaling, y: vec.y / physicsScaling)


proc toB2*(scalar: float32): float32 = 
    scalar / physicsScaling


proc toRaylib*(vec: b2Vec2): Vector2 = 
    Vector2(x: vec.x * physicsScaling, y: vec.y * physicsScaling)


proc toRaylib*(scalar: float32): float32 = 
    scalar * physicsScaling


proc toRaylib*(color: b2HexColor): Color = 
    let val = ord color

    let r = ((val shr 16).bitand 255).uint8
    let g = ((val shr 8).bitand 255).uint8
    let b = (val.bitand 255).uint8

    Color(r: r, g: g, b: b, a: 255)
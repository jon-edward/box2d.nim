from raylib import Vector2
from box2d/wrapper import b2Vec2


const physicsScaling* = 10.0f


proc toB2*(vec: Vector2): b2Vec2 = 
    b2Vec2(x: vec.x / physicsScaling, y: vec.y / physicsScaling)


proc toB2*(scalar: float32): float32 = 
    scalar / physicsScaling


proc toRaylib*(vec: b2Vec2): Vector2 = 
    Vector2(x: vec.x * physicsScaling, y: vec.y * physicsScaling)


proc toRaylib*(scalar: float32): float32 = 
    scalar * physicsScaling
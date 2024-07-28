## Implements useful debugging callbacks.

import math

import box2d/wrapper
import raylib

import conversions


const transformPointColor = Red
const transformSegmentColor = Green
const transformLineThick = 1.0f
const transformPointRadius = 2.0f

const pointSizeMult = 0.5f


proc drawTransform(transform: b2Transform, context: pointer) {.cdecl.} = 
    let point = transform.p.toRaylib
    let segment = b2Add(transform.p, 2.0f.b2MulSV(b2Vec2(x: transform.q.c, y: transform.q.s))).toRaylib

    drawLine(point, segment, transformLineThick, transformSegmentColor)
    drawCircle(point, transformPointRadius, transformPointColor)


proc drawPoint(p: b2Vec2, size: cfloat, color: b2HexColor, context: pointer) {.cdecl.} = 
    drawCircle(p.toRaylib, pointSizeMult * size, color.toRaylib)


proc drawSegment(p1: b2Vec2, p2: b2Vec2, color: b2HexColor, context: pointer) {.cdecl.} = 
    drawLine(p1.toRaylib, p2.toRaylib, 2.0f, color.toRaylib)


proc drawCircle(center: b2Vec2, radius: cfloat, color: b2HexColor, context: pointer) {.cdecl.} = 
    drawCircleLines(center.toRaylib, radius.toRaylib, color.toRaylib)


proc drawSolidCircle(transform: b2Transform, radius: cfloat, color: b2HexColor, context: pointer) {.cdecl.} = 
    drawCircle(transform.p.toRaylib, radius.toRaylib, color.toRaylib)


proc drawPolygon(vertices: ptr b2Vec2, vertexCount: cint, color: b2HexColor, context: pointer) {.cdecl.} = 
    let arr = cast[ptr UncheckedArray[b2Vec2]](vertices)
    var vectors: seq[Vector2] = newSeqOfCap[Vector2](vertexCount+1)

    for i in 0..<vertexCount:
        vectors.add(arr[i].toRaylib)
    vectors.add(arr[0].toRaylib)

    drawLineStrip(vectors, color.toRaylib)


proc drawSolidPolygon(transform: b2Transform, vertices: ptr b2Vec2, vertexCount: cint, radius: cfloat, color: b2HexColor, context: pointer) {.cdecl.} = 
    let arr = cast[ptr UncheckedArray[b2Vec2]](vertices)
    var vectors: seq[Vector2] = newSeqOfCap[Vector2](vertexCount+2)

    vectors.add(transform.p.toRaylib)
    vectors.add(transform.b2TransformPoint(arr[0]).toRaylib)

    for i in 0..<vertexCount:
        vectors.add(transform.b2TransformPoint(arr[vertexCount - 1 - i]).toRaylib)

    drawTriangleFan(vectors, color.toRaylib)


proc drawCapsule(p1: b2Vec2, p2: b2Vec2, radius: cfloat, color: b2HexColor, context: pointer) {.cdecl.} = 
    discard


proc drawSolidCapsule(p1: b2Vec2, p2: b2Vec2, radius: cfloat, color: b2HexColor, context: pointer) {.cdecl.} = 
    drawCircle(p1.toRaylib, radius.toRaylib, color.toRaylib)
    drawCircle(p2.toRaylib, radius.toRaylib, color.toRaylib)

    let width = radius.toRaylib * 2.0f
    let heightB2 = b2Distance(p1, p2)

    let normalizedDir = (1/heightB2).b2MulSV(b2Sub(p1, p2))
    let perp = radius.b2MulSV(b2Vec2(x: normalizedDir.y, y: -normalizedDir.x))

    let drawPoint = b2Add(p1, perp).toRaylib

    let rect = Rectangle(
        width: width,
        height: heightB2.toRaylib,
        x: drawPoint.x,
        y: drawPoint.y
    )

    let angle = arctan2(normalizedDir.y, normalizedDir.x).radToDeg + 90.0f

    drawRectangle(rect, Vector2(x: 0.0f, y: 0.0f), angle, color.toRaylib)


proc drawString(p: b2Vec2, s: cstring, context: pointer): void {.cdecl.} = 
    drawText(s, p.x.toRaylib.int32, p.y.toRaylib.int32, 12, Red)


## Create a debugDraw object with useful default callbacks
proc defaultDebugDraw*(): b2DebugDraw = 
    var debugDraw: b2DebugDraw

    debugDraw.DrawCircle = drawCircle
    debugDraw.DrawCapsule = drawCapsule
    debugDraw.DrawPoint = drawPoint
    debugDraw.DrawPolygon = drawPolygon
    debugDraw.DrawSegment = drawSegment
    debugDraw.DrawSolidCapsule = drawSolidCapsule
    debugDraw.DrawSolidCircle = drawSolidCircle
    debugDraw.DrawSolidPolygon = drawSolidPolygon
    debugDraw.DrawTransform = drawTransform
    debugDraw.DrawString = drawString

    debugDraw


## Create a debugDraw object with noop callbacks
## 
## Implement these to define your own debug functionality
proc noopDebugDraw*(): b2DebugDraw = 
    var debugDraw: b2DebugDraw

    {.push cdecl.}
    debugDraw.DrawCircle = proc (center: b2Vec2, radius: cfloat, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawCapsule = proc (p1: b2Vec2, p2: b2Vec2, radius: cfloat, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawPoint = proc (p: b2Vec2, size: cfloat, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawPolygon = proc (vertices: ptr b2Vec2, vertexCount: cint, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawSegment = proc (p1: b2Vec2, p2: b2Vec2, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawSolidCapsule = proc (p1: b2Vec2, p2: b2Vec2, radius: cfloat, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawSolidCircle = proc (transform: b2Transform, radius: cfloat, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawSolidPolygon = proc (transform: b2Transform, vertices: ptr b2Vec2, vertexCount: cint, radius: cfloat, color: b2HexColor, context: pointer) = discard
    debugDraw.DrawTransform = proc (transform: b2Transform, context: pointer) = discard
    debugDraw.DrawString = proc (p: b2Vec2, s: cstring, context: pointer) = discard
    {.pop.}

    debugDraw
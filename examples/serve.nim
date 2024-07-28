## This script is for starting a simple HTTP server to test the WASM target in the browser.

import mimetypes
import os
import parseopt

import std/asyncdispatch
import std/asynchttpserver
import std/strformat
import std/strutils

const mimes = newMimetypes()
const port = 8080


proc mimeType(path: string): string = 
    var ext = path.splitFile.ext
    if ext == "": ext = ".txt" else: ext = ext[1 .. ^1]
    mimes.getMimetype(ext.toLowerAscii)


proc main(rootDir: string) {.async.} =
  var server = newAsyncHttpServer()
  
  proc cb(req: Request) {.async.} =
    var localPath: string

    if req.url.path == "/":
        localPath = rootDir / "index.html"
    else:
        localPath = rootDir / req.url.path

    if not localPath.isRelativeTo(rootDir) or not localPath.fileExists:
        await req.respond(Http404, fmt"<p>Resource not found: {localPath}</p>", {"Content-type": "text/html; charset=utf-8"}.newHttpHeaders())
        return

    await req.respond(Http200, localPath.readFile, 
        {
            "Content-type": localPath.mimeType,
            "Cross-Origin-Opener-Policy": "same-origin",
            "Cross-Origin-Embedder-Policy": "require-corp"
        }.newHttpHeaders()
    )

  server.listen(Port(port))

  echo fmt"Serving directory {rootDir} to http://localhost:{port}"
  
  while true:
    if server.shouldAcceptRequest():
      await server.acceptRequest(cb)
    else:
      # too many concurrent connections, `maxFDs` exceeded
      # wait 500ms for FDs to be closed
      await sleepAsync(500)


when isMainModule:
    var rootDir: string = "./dist"

    for kind, key, value in getOpt():
        case kind
        of cmdLongOption, cmdShortOption:
            case key
            of "d", "dir":
                rootDir = value
            else:
                echo fmt"Unknown option: {key} {value}"
        else:
            discard
    
    waitFor main(rootDir)
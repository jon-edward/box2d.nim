## Utility for handling raylib windows.

import raylib


proc noop {.cdecl.} = discard


## Initiates a window, properly handling the wasm target
proc windowMain*(width: int32, height: int32, title: string, updateDrawFrame: proc() {.cdecl.}, postInit: proc() {.cdecl.} = noop) = 
    initWindow(width, height, title)
    postInit()
    
    defer: closeWindow()

    when defined(emscripten):
        emscriptenSetMainLoop(updateDrawFrame, 0, 1)
    else:
        while not windowShouldClose():
            updateDrawFrame()

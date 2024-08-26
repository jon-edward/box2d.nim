## This links and compiles the box2d source files.

import os, macros, strutils

const box2dRoot = currentSourcePath.parentDir / "box2d"


{.passC: "-I " & (box2dRoot / "include")}
{.passC: "-I " & (box2dRoot / "src")}

{.passC: "-I " & (box2dRoot / "extern" / "glad" / "include")}
{.passC: "-I " & (box2dRoot / "extern" / "simde")}
{.passC: "-I " & (box2dRoot / "extern" / "jsmn")}


when defined(emscripten):
  {.passC: "-D NDEBUG"}


macro compileCFiles(sourceDir: static[string]): untyped = 
  ## List {.compile: "<C>".} for every C source file in sourceDir. 
  result = newStmtList()

  for file in walkDir(sourceDir):
    let filePath = file.path

    if not filePath.endsWith(".c"):
      continue

    var pragma = newNimNode(nnkPragma)
    pragma.add newColonExpr(newIdentNode("compile"), newStrLitNode(file.path))

    result.add pragma
  
  result = quote do:
    block: `result`


compileCFiles(box2dRoot / "src")

template ensureCompiled*() = 
  ## a noop to prevent unused import warnings 
  ## in files that depend on this compilation step.
  discard

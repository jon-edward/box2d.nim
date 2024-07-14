## This links and compiles the box2c source files.

import os, macros, strutils

const box2cRoot = currentSourcePath.parentDir / "box2c"


{.passC: "-I " & (box2cRoot / "include")}
{.passC: "-I " & (box2cRoot / "src")}

{.passC: "-I " & (box2cRoot / "extern" / "glad" / "include")}
{.passC: "-I " & (box2cRoot / "extern" / "simde")}
{.passC: "-I " & (box2cRoot / "extern" / "jsmn")}


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


compileCFiles(box2cRoot / "src")

template ensureCompiled*() = 
  ## a noop to prevent unused import warnings 
  ## in files that depend on this compilation step.
  discard

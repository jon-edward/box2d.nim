{.passC: "-I ../box2c/include"}
{.passC: "-I ../box2c/src"}

{.passC: "-I ../box2c/extern/glad/include"}
{.passC: "-I ../box2c/extern/jsmn"}
{.passC: "-I ../box2c/extern/simde"}

import os, macros, strutils


macro compileCFiles(sourceDir: static[string]): untyped = 
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


compileCFiles("../box2c/src")

include box2d/wrapper
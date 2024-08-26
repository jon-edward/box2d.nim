## This generates bindings for Box2D source files

import os, macros
import futhark
import paths, process


const outputPath = libraryRoot / "private" / "internal.nim"


const futharkCompilerArg {.define: "futharkCompilerArg".} = getClangIncludePath()


# Included in tests
importc:
    compilerArg futharkCompilerArg
    path box2dRoot / "src"
    sysPath box2dRoot / "jsmn"
    sysPath box2dRoot / "include"
    sysPath box2dRoot / "extern" / "simde"
    sysPath box2dRoot / "extern" / "glad" / "include"
    outputPath outputPath
    renameCallback wrapperRenameCallback
    "aabb.h"
    "bitset.h"
    "ctz.h"
    "table.h"


processWrapperFile(outputPath)
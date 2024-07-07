## This is a helper script to generate bindings for Box2D

import os, macros

import futhark

const box2cRoot* = (
    currentSourcePath.parentDir.parentDir / 
    "src" / 
    "box2d" / 
    "private" / 
    "box2c"
)

const outputDir = currentSourcePath.parentDir

const futharkCompilerArg {.define: "futharkCompilerArg".} = getClangIncludePath()


when defined(createBox2dApiWrapper) or not (defined(createBox2dSrcWrapper) or defined(createBox2dInlineWrapper)):
    # Box2D API
    importc:
        compilerArg futharkCompilerArg
        path box2cRoot / "include" / "box2d"
        outputPath outputDir / "generated_include.nim"
        "base.h"
        "box2d.h"
        "collision.h"
        "id.h"
        "math_functions.h"
        "types.h"


when defined(createBox2dSrcWrapper):
    # Included in tests
    importc:
        compilerArg futharkCompilerArg
        path box2cRoot / "src"
        sysPath box2cRoot / "jsmn"
        sysPath box2cRoot / "include"
        sysPath box2cRoot / "extern" / "simde"
        sysPath box2cRoot / "extern" / "glad" / "include"
        outputPath outputDir / "generated_src.nim"
        "aabb.h"
        "bitset.h"
        "ctz.h"
        "table.h"


when defined(createBox2dInlineWrapper):
    # Inline functions
    importc:
        compilerArg futharkCompilerArg
        path box2cRoot.parentDir / "inline"
        outputPath outputDir / "generated_inline.nim"
        "math_functions.h"
        "aabb.h"
        "bitset.h"
        "ctz.h"
        "table.h"

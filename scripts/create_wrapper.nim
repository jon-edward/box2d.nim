## This is a helper script to generate bindings for Box2D

import os, macros, strutils, sequtils

import futhark

const box2cRoot* = (
    currentSourcePath.parentDir.parentDir / 
    "src" / 
    "box2d" / 
    "private" / 
    "box2c"
)

const outputDir = currentSourcePath.parentDir

const futharkSysPath {.define: "futharkSysPath".} = getClangIncludePath()
const compilerArg = futharkSysPath.split(":").map(proc (s: string): string = "-I" & s).join(" ")


# Box2D API
importc:
    compilerArg compilerArg
    path box2cRoot / "include" / "box2d"
    outputPath outputDir / "generated_include.nim"
    "base.h"
    "box2d.h"
    "collision.h"
    "id.h"
    "math_functions.h"
    "types.h"


# Included in tests
importc:
    compilerArg compilerArg
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

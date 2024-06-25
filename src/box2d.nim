when defined(useFutharkForBox2D):
  import futhark, os

  const box2dRoot = currentSourcePath.parentDir.parentDir / "box2c/include/box2d"
  echo box2dRoot

  importc:
    path box2dRoot
    "box2d.h"

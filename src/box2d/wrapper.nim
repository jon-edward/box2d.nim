## This is the entrypoint for the Box2D wrapper. All names should 
## be imported through this script to ensure that the Box2D source 
## files get compiled.

import private/wrapper/[constants, inlines, procedures, types]

import private/compile
ensureCompiled()

export constants, inlines, procedures, types
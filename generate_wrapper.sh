rm ./src/box2d/wrapper.nim
rm ./src/box2d/private/internal.nim

nim c -r ./scripts/create_wrapper.nim
nim c -r ./scripts/create_internal.nim

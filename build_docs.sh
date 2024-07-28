nim doc --index:only --project --d:nimPreviewSlimSystem --outdir:"./docs/htmldocs" ./src/box2d.nim
nim doc --index:only --project --d:nimPreviewSlimSystem --outdir:"./docs/htmldocs" ./src/box2d/wrapper.nim
nim md2html --index:only --project --d:nimPreviewSlimSystem --outdir:"./docs/htmldocs" ./docs/index.md

nim doc --project --d:nimPreviewSlimSystem --outdir:"./docs/htmldocs" ./src/box2d.nim
nim doc --project --d:nimPreviewSlimSystem --outdir:"./docs/htmldocs" ./src/box2d/wrapper.nim
nim md2html --project --d:nimPreviewSlimSystem --outdir:"./docs/htmldocs" ./docs/index.md
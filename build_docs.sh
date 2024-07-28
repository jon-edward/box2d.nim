cd ./src

nim doc --index:only --project --d:nimPreviewSlimSystem --outdir:"../docs/htmldocs" box2d.nim
nim md2html --index:only --project --d:nimPreviewSlimSystem --outdir:"../docs/htmldocs" ./docs/index.md

nim doc --project --d:nimPreviewSlimSystem --outdir:"../docs/htmldocs" box2d.nim
nim md2html --project --d:nimPreviewSlimSystem --outdir:"../docs/htmldocs" ../docs/index.md
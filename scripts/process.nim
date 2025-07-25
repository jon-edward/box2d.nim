import regex
from futhark import SymbolKind

const default_prefix = """
# This was generated by futhark, and should not be edited directly.

"""


const commentRe = re2(r"\s*## Generated based on .+$", {regexMultiline}) 


proc processWrapperFile*(path: string, prefix: string = default_prefix) = 
    var content = readFile(path)
    content = content.replace(commentRe, "")

    let outF = open(path, fmWrite)
    defer: outF.close

    outF.write(prefix & content)


proc wrapperRenameCallback*(name: string, kind: SymbolKind, partof = "", overloading: var bool): string = 
    result = name
    if name == "type": 
        result = "bodyType"
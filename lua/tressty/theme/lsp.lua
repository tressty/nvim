local colors = require("tressty.colors")

return {
    LspReferenceText = { bg = colors.main.highlight }, -- used for highlighting "text" references
	LspReferenceRead = { link = "LspReferenceText" }, -- used for highlighting "read" references
	LspReferenceWrite = { link = "LspReferenceText" }, -- used for highlighting "write" references
}


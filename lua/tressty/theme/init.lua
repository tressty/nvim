local theme = {}

theme.main = require("tressty.theme.main")
theme.editor = require("tressty.theme.editor")
theme.treeSitter = require("tressty.theme.treesitter")
theme.diagnostic = require("tressty.theme.diagnostic")
theme.lsp = require("tressty.theme.lsp")

return theme
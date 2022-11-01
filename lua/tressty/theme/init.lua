local theme = {}

theme.main = require("tressty.theme.main")
theme.editor = require("tressty.theme.editor")
theme.treeSitter = require("tressty.theme.treesitter")
theme.diagnostic = require("tressty.theme.diagnostic")
theme.lsp = require("tressty.theme.lsp")
theme.diff = require("tressty.theme.diff")
theme.gitsigns = require("tressty.theme.gitsigns")
theme.checkhealth = require("tressty.theme.checkhealth")

return theme

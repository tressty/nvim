local theme = {}

theme.main = require("tressty.theme.main")
theme.editor = require("tressty.theme.editor")
theme.treesitter = require("tressty.theme.treesitter")
theme.diagnostic = require("tressty.theme.diagnostic")
theme.lsp = require("tressty.theme.lsp")
theme.diff = require("tressty.theme.diff")
theme.gitsigns = require("tressty.theme.gitsigns")
theme.checkhealth = require("tressty.theme.checkhealth")
theme.packer = require("tressty.theme.packer")

return theme

local colors = require("tressty.colors")

-- https://github.com/neovim/neovim/blob/master/runtime/syntax/diff.vim
return {
    DiffAdded   = { fg = colors.general.green },
    DiffChanged = { fg = colors.general.blue },
    DiffRemoved = { fg = colors.general.red }
}

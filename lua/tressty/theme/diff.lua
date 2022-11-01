local colors = require("tressty.colors")

-- https://github.com/neovim/neovim/blob/master/runtime/syntax/diff.vim
return {
    DiffAdded   = { bg = colors.general.green },
    DiffChanged = { bg = colors.general.blue },
    DiffRemoved = { bg = colors.general.red }
}

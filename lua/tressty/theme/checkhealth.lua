local colors = require("tressty.colors")

-- https://github.com/neovim/neovim/blob/master/runtime/syntax/checkhealth.vim
return {
    healthError   = { link = "Error" },
    healthWarning = { link = "WarningMsg" },
    healthSuccess = { fg = colors.general.green },
    healthHelp    = { link = "htmlLink" }
}

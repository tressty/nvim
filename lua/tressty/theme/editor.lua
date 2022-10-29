local colors = require("tressty.colors")

-- Editor highlight groups
-- https://neovim.io/doc/user/syntax.html#highlight-groups
return {
	ColorColumn = { fg = colors.none, bg = colors.active },
    Conceal = { fg = colors.main.disabled },
    CurSearch = { fg = colors.general.magenta },
    Cursor = { fg = colors.additional.trident_gold },


    DiffAdd    = { fg = colors.general.green },
    DiffChange = { fg = colors.general.blue },
    DiffText   = { fg = colors.additional.moon_light },
    DiffDelete = { fg = colors.general.red }
}

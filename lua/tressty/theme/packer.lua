local colors = require("tressty.colors")
local merge_tables = require("tressty.util").merge_tables

-- https://github.com/wbthomason/packer.nvim/blob/6afb67460283f0e990d35d229fd38fdc04063e0a/lua/packer/display.lua#L904 
local main = {
    packerWorking  = { fg = colors.general.blue },
    packerSuccess  = { fg = colors.general.green },
    packerFail     = { link = "Error" },
    packerHash     = { link = "Special" },
    packerRelDate  = { link = "Comment" },
    packerProgress = { fg = colors.main.accent, bg = colors.main.accent },
    packerOutput   = { fg = colors.general.yellow },
}

-- https://github.com/wbthomason/packer.nvim/blob/537669b8b4df4eb1b4fc3d13bf47b994ca0c9cb7/lua/packer/display.lua#L339
local statuses = {
    packerStatusSuccess = { fg = colors.additional.moon_light },
    packerStatusFail = { link = "Error" }
}

return merge_tables(main, statuses)

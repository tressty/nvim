local util = {}
local colors = require("tressty.colors")

-- apply highlights for a given table
-- @param highlights table highlight group names and their values
local apply_highlights = function(highlights)
	for name, values in pairs(highlights) do
		vim.api.nvim_set_hl(0, name, values)
	end
end

local function prepare_environment()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.background = "dark"

	vim.opt.termguicolors = true
	vim.g.colors_name = "tressty"
end

-- see colors in https://github.com/tressty/windows-terminal
local function loadTerminal()
	vim.g.terminal_color_0 = colors.general.black
	vim.g.terminal_color_1 = colors.general.red
	vim.g.terminal_color_2 = colors.general.green
	vim.g.terminal_color_3 = colors.general.yellow
	vim.g.terminal_color_4 = colors.general.blue
	vim.g.terminal_color_5 = colors.general.purple
	vim.g.terminal_color_6 = colors.general.cyan
	vim.g.terminal_color_7 = colors.general.white

	vim.g.terminal_color_8 = colors.general.gray
	vim.g.terminal_color_9 = colors.general.red
	vim.g.terminal_color_10 = colors.general.green
	vim.g.terminal_color_11 = colors.general.yellow
	vim.g.terminal_color_12 = colors.general.blue
	vim.g.terminal_color_13 = colors.general.purple
	vim.g.terminal_color_14 = colors.general.cyan
	vim.g.terminal_color_15 = colors.general.white
end

function util.merge_tables(...)
    local tables = {...}

    local first_table = table.remove(tables, 1)

    for _, current_table in pairs(tables) do
        for k,v in pairs(current_table) do first_table[k] = v end
    end

    return first_table
end

-- Load the theme
function util.load()
    local theme = require("tressty.theme")

    prepare_environment()
	loadTerminal()

	for _, highlights in pairs(theme) do
		apply_highlights(highlights)
	end
end

return util

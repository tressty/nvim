local util = {}
local theme = require("tressty.theme")
local colors = require("tressty.colors")

-- apply highlights for a given table
-- @param highlights table highlight group names and their values
local apply_highlights = function(highlights)
	for name, values in pairs(highlights) do
		vim.api.nvim_set_hl(0, name, values)
	end
end

-- see colors in https://github.com/tressty/windows-terminal
local function loadTerminal()
	vim.g.terminal_color_0 = colors.black
	vim.g.terminal_color_1 = colors.darkred
	vim.g.terminal_color_2 = colors.darkgreen
	vim.g.terminal_color_3 = colors.darkyellow
	vim.g.terminal_color_4 = colors.darkblue
	vim.g.terminal_color_5 = colors.darkpurple
	vim.g.terminal_color_6 = colors.darkcyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = colors.disabled
	vim.g.terminal_color_9 = colors.red
	vim.g.terminal_color_10 = colors.green
	vim.g.terminal_color_11 = colors.yellow
	vim.g.terminal_color_12 = colors.blue
	vim.g.terminal_color_13 = colors.purple
	vim.g.terminal_color_14 = colors.cyan
	vim.g.terminal_color_15 = colors.white
end

-- Load the theme
function util.load()
	-- Set the theme environment
	vim.cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.background = "dark"

	vim.opt.termguicolors = true
	vim.g.colors_name = "tressty"

	-- vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"

	-- local exit_group = vim.api.nvim_create_augroup("tresstyExit", { clear = true })
	-- vim.api.nvim_create_autocmd("ExitPre", {
		-- command = "autocmd ExitPre * set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
		-- group = exit_group,
	-- })

	--TODO loadTerminal()

	for _, highlight in pairs(theme) do
		apply_highlights(highlight)
	end
end

return util

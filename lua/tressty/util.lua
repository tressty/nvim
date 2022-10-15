local util = {}
local tressty = require('tressty.theme')
local config = require('tressty.config').options

-- Only define tressty if it's the active colorshceme
function util.onColorScheme()
  if vim.g.colors_name ~= "tressty" then
    vim.cmd [[autocmd! tressty]]
    vim.cmd [[augroup! tressty]]
	-- vim.api.nvim_del_augroup_by_name("tressty")
  end
end

-- Change the background for the terminal and packer windows
util.contrast = function ()
	local group = vim.api.nvim_create_augroup("tressty", { clear = true })
	vim.api.nvim_create_autocmd("ColorScheme", { callback = function ()
		require("tressty.util").onColorScheme()
	end, group = group })

	for _, sidebar in ipairs(config.contrast_filetypes) do
		if sidebar == "terminal" then
			vim.api.nvim_create_autocmd("TermOpen", {
				command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:NormalContrast",
				group = group,
			})
		else
			vim.api.nvim_create_autocmd("FileType", {
				pattern = sidebar,
				command = "setlocal winhighlight=Normal:NormalContrast,SignColumn:SignColumnFloat",
				group = group,
			})
		end
	end
end

-- Load the theme
function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.g.colors_name = "tressty"

	if config.disable.colored_cursor == false then
		vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,a:Cursor/Cursor"
		local exit_group = vim.api.nvim_create_augroup("tresstyExit", { clear = true })
		vim.api.nvim_create_autocmd("ExitPre", {
			command = "autocmd ExitPre * set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
			group = exit_group
		})
	end

  -- Load plugins and custom highlights
    local async

	local function async_loader()
		-- Import the table for plugins
		local plugins = tressty.loadPlugins()

		-- Apply the terminal colors
		if config.disable.term_colors == false then
			tressty.loadTerminal()
		end

		-- Apply the plugin colors
		for group, colors in pairs(plugins) do
			-- util.highlight(group, colors)
			vim.api.nvim_set_hl(0, group, colors)
		end

		-- Apply user defined highlights if they exist
		if type(config.custom_highlights) == 'table' then
			for group, colors in pairs(config.custom_highlights) do
				-- util.highlight(group, colors)
				vim.api.nvim_set_hl(0, group, colors)
			end
		end

		-- Apply window contrast
		util.contrast()

		-- If this function gets called asyncronously, this closure is needed
		if (async) then
			async:close()
		end
	end

	-- If async loading is enabled,
	-- execute async_loader() asyncronously, if not, load it now
	if (config.async_loading == true) then
		async = vim.loop.new_async(vim.schedule_wrap(async_loader))
	else
		async_loader()
	end

    -- Import tables for the base, syntax, treesitter and lsp
    local editor = tressty.loadEditor()
    local syntax = tressty.loadSyntax()
    local treesitter = tressty.loadTreeSitter()
	local lsp = tressty.loadLSP()

	-- Apply base colors
    for group, colors in pairs(editor) do
		vim.api.nvim_set_hl(0, group, colors)
    end

	-- Apply basic syntax colors
    for group, colors in pairs(syntax) do
		vim.api.nvim_set_hl(0, group, colors)
    end

	-- Apply treesitter colors
    for group, colors in pairs(treesitter) do
		vim.api.nvim_set_hl(0, group, colors)
    end

	-- Apply lsp colors
	for group, colors in pairs(lsp) do
		vim.api.nvim_set_hl(0, group, colors)
	end

	-- If async loading is enabled, send it
    if (config.async_loading == true) then async:send() end
end

return util

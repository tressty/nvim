local colors = require('tressty.colors')

local tressty = {}

tressty.normal = {
	a = {fg = colors.bg, bg = colors.accent, gui = 'bold'},
	b = {fg = colors.title, bg = colors.bg_alt},
	c = {fg = colors.fg, bg = colors.selection},
}

tressty.insert = {
	a = {fg = colors.bg, bg = colors.green, gui = 'bold'},
	b = {fg = colors.title, bg = colors.bg_alt},
}

tressty.visual = {
	a = {fg = colors.bg, bg = colors.purple, gui = 'bold'},
	b = {fg = colors.title, bg = colors.bg_alt},
}

tressty.replace = {
	a = {fg = colors.bg, bg = colors.red, gui = 'bold'},
	b = {fg = colors.title, bg = colors.bg_alt},
}

tressty.command = {
	a = {fg = colors.bg, bg = colors.yellow, gui = 'bold'},
	b = {fg = colors.title, bg = colors.bg_alt},
}

tressty.inactive = {
  a = {fg = colors.disabled, bg = colors.bg},
  b = {fg = colors.disabled, bg = colors.bg},
  c = {fg = colors.disabled, bg = colors.bg}
}

return tressty

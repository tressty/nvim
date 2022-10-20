-- This file is used to define
-- the basic colors of the theme
-- and the style specific colors

local colors = {
	-- Common colors
	white = "#EEFFFF",
	gray = "#717CB4",
	black = "#000000",
	red = "#F07178",
	green = "#C3E88D",
	yellow = "#FFCB6B",
	blue = "#82AAFF",
	paleblue = "#B0C9FF",
	cyan = "#89DDFF",
	purple = "#C792EA",
	orange = "#F78C6C",
	pink = "#FF9CAC",

	-- Dark colors
	darkred = "#DC6068",
	darkgreen = "#ABCF76",
	darkyellow = "#E6B455",
	darkblue = "#6E98EB",
	darkcyan = "#71C6E7",
	darkpurple = "#B480D6",
	-- darkorange =			'#E2795B',

	error = "#FF5370",
	link = "#80CBC4",
	cursor = "#FFCC00",
	title = "#E2E2E2",
	-- visual_alt = 			'#3B3D0E',

	none = "NONE",
}

-- Style specific colors

colors.bg = "#0F111A"
colors.bg_alt = "#090B10"
colors.fg = "#A6ACCD"
colors.text = "#717CB4"
colors.comments = "#464B5D"
colors.selection = "#1F2233"
colors.contrast = "#090B10"
colors.active = "#1A1C25"
colors.border = "#232637"
colors.line_numbers = "#3B3F51"
colors.highlight = "#1F2233"
colors.disabled = "#464B5D"
colors.accent = "#84FFFF"
colors.vsp = colors.border

colors.sidebar = colors.bg

colors.bg_cur = colors.active

return colors

local wezterm = require("wezterm")
local config = {}

config.default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe", "-nologo" }
config.font = wezterm.font("JetBrains Mono", { weight = "DemiBold" })
config.cell_width = 0.9
config.tab_bar_at_bottom = false
config.window_decorations = "RESIZE"
config.colors = {

	foreground = "#ebdbb2",
	background = "#282828",
	cursor_bg = "#ebdbb2",
	cursor_border = "#ebdbb2",
	cursor_fg = "#282828",
	selection_bg = "#3c3836",
	selection_fg = "#ebdbb2",

	ansi = {
		"#282828", -- black
		"#cc241d", -- red
		"#98971a", -- green
		"#d79921", -- yellow
		"#458588", -- blue
		"#b16286", -- magenta
		"#689d6a", -- cyan
		"#a89984", -- white
	},

	brights = {
		"#928374", -- bright black
		"#fb4934", -- bright red
		"#b8bb26", -- bright green
		"#fabd2f", -- bright yellow
		"#83a598", -- bright blue
		"#d3869b", -- bright magenta
		"#8ec07c", -- bright cyan
		"#ebdbb2", -- bright white
	},
}

-- my keybindings
config.keys = {
	{
		key = "n",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "j",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL|ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "b",
		mods = "CTRL|ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

-- tmux like multiplexing with persistent sessions
config.default_domain = "unix"

config.window_padding = {
	left = 8,
	right = 8,
	top = 8,
	bottom = 0,
}

config.show_update_window = false
config.check_for_updates = false
return config

local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'GruvboxDarkHard'
config.font = wezterm.font "Monaspace Neon"
config.font_size = 13
config.hide_tab_bar_if_only_one_tab = true
config.harfbuzz_features = {
	--'ss01',
	--'ss02',
	--'ss03',
	--'ss04',
	--'ss05',
	--'ss06',
	--'ss07',
	--'ss08',
	'calt'
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0
}

config.force_reverse_video_cursor = true
config.window_background_opacity = 0.8

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false
config.audible_bell = "Disabled"

--config.background = {
--	{ source = { Color = "black" }, opacity = 0.9 }
--}

return config

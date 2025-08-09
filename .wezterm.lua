local wezterm = require("wezterm")

wezterm.font_with_fallback({
	{ family = "JetBrainsMono NF", style = "Normal", scale = 1 },
	{ family = "Cambria Math", scale = 1.0 },
	"FiraCode Nerd Font",
})
-- This will hold the configuration.
local config = wezterm.config_builder()
config.color_scheme = "rose-pine"
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 19

-- window
config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.5
config.kde_window_background_blur = true

config.colors = {
	background = "black",
}

return config

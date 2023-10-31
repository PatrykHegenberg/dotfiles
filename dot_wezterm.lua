local wezterm = require("wezterm")
local mux = wezterm.mux
local act = wezterm.action

local config = {}

--config.default_prog = {'/bin/bash'}
config.default_prog = { "/bin/bash", "-l" }
config.enable_wayland = false
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12.0
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9

return config

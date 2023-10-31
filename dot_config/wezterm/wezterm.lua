-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action

wezterm.on('gui-startup', function()
  local tab, pane, window = mux.spawn_window({})
  window:gui_window():maximize()
end)

inactive_pane_hsb = {
  saturation = 0.8,
  brightness = 0.7,
}

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'nord'
config.color_scheme = 'Catppuccin Frappe'
--config.font = wezterm.font_with_fallback({
--  "JetBrainsMono Nerd Font",
--  { family = "Symbols Nerd Font", scale = 0.75 }
--})
--config.font = wezterm.font('JetBrainsMono Nerd Font')
--config.font = wezterm.font('3270 Nerd Font')
--config.font = wezterm.font_with_fallback( { 'JetBrains Mono', 'Awesome' } )
config.font_size = 12
config.line_height = 1.0
--config.window_background_opacity = 0.5
config.adjust_window_size_when_changing_font_size = false
config.hide_tab_bar_if_only_one_tab = true
config.default_prog = { "/usr/bin/bash", "-l" }
config.use_cap_height_to_scale_fallback_fonts=true
config.audible_bell="SystemBeep"
config.window_background_opacity = 0.8
window_frame = {
 font = wezterm.font { family = 'Noto Sans', weight = 'Regular' },
}

-- disable_default_key_bindings = true
-- leader = { key = 'b', mods = 'CMD', timeout_milliseconds = 2000 }


-- and finally, return the configuration to wezterm
return config

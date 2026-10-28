local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "rose-pine-moon"
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 15.0
config.window_background_opacity = 0.8

if wezterm.target_triple:find("windows") then
  -- Integrated buttons live in the tab bar; hiding that bar with one tab open
  -- left Windows with no minimize/maximize/close, so use the native title bar.
  config.window_decorations = "TITLE|RESIZE"
else
  config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
  config.hide_tab_bar_if_only_one_tab = true
end

config.keys = {
  { key = "F11", action = wezterm.action.ToggleFullScreen },
}

return config

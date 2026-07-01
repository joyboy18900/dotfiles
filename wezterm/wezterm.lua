local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Tokyo Night'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 13.0
config.window_decorations = "TITLE | RESIZE"
config.enable_tab_bar = false
config.window_padding = {
  left = 1,
  right = 1,
  top = 1,
  bottom = 1,
}

return config

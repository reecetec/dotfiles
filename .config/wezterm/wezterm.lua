local wezterm = require 'wezterm'
local config = {}

-- Use the config_builder for clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.keys = {
  -- Ctrl+B followed by C to create new tab
  { key = 'c', mods = 'LEADER', action = wezterm.action.SpawnTab 'CurrentPaneDomain' },
  -- Ctrl+B followed by X to close current tab
  { key = 'x', mods = 'LEADER', action = wezterm.action.CloseCurrentTab { confirm = true } },
  -- Ctrl+B followed by 0-9 to switch to tab
  { key = '0', mods = 'LEADER', action = wezterm.action.ActivateTab(0) },
  { key = '1', mods = 'LEADER', action = wezterm.action.ActivateTab(1) },
  { key = '2', mods = 'LEADER', action = wezterm.action.ActivateTab(2) },
  { key = '3', mods = 'LEADER', action = wezterm.action.ActivateTab(3) },
  { key = '4', mods = 'LEADER', action = wezterm.action.ActivateTab(4) },
  { key = '5', mods = 'LEADER', action = wezterm.action.ActivateTab(5) },
  { key = '6', mods = 'LEADER', action = wezterm.action.ActivateTab(6) },
  { key = '7', mods = 'LEADER', action = wezterm.action.ActivateTab(7) },
  { key = '8', mods = 'LEADER', action = wezterm.action.ActivateTab(8) },
  { key = '9', mods = 'LEADER', action = wezterm.action.ActivateTab(9) },
}

-- Set Ctrl+B as the leader 
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }

config.colors = {
  foreground = '#1d1d1f',
  background = '#f5f5f7',
  
  -- Cursor colors
  cursor_bg = '#007aff',
  cursor_fg = '#ffffff',
  cursor_border = '#007aff',
  
  -- Selection colors
  selection_fg = '#1d1d1f',
  selection_bg = '#d1d1d6',
  
  -- Scrollbar and splits
  scrollbar_thumb = '#d2d2d7',
  split = '#d2d2d7',
  
  ansi = {
    '#1d1d1f', -- black
    '#ff3b30', -- red
    '#30d158', -- green
    '#ff9500', -- yellow
    '#007aff', -- blue
    '#af52de', -- magenta
    '#5ac8fa', -- cyan
    '#f2f2f7', -- white
  },
  brights = {
    '#6e6e73', -- bright black
    '#ff453a', -- bright red
    '#32d74b', -- bright green
    '#ffb340', -- bright yellow
    '#0a84ff', -- bright blue
    '#bf5af2', -- bright magenta
    '#64d2ff', -- bright cyan
    '#ffffff', -- bright white
  },
  
  -- Tab bar colors
  tab_bar = {
    background = '#ffffff',
    active_tab = {
      bg_color = '#007aff',
      fg_color = '#ffffff',
    },
    inactive_tab = {
      bg_color = '#f2f2f7',
      fg_color = '#6e6e73',
    },
    inactive_tab_hover = {
      bg_color = '#e5e5ea',
      fg_color = '#1d1d1f',
    },
    new_tab = {
      bg_color = '#f2f2f7',
      fg_color = '#6e6e73',
    },
    new_tab_hover = {
      bg_color = '#e5e5ea',
      fg_color = '#1d1d1f',
    },
  },
}

-- Font configuration
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 11.0

-- Window appearance with transparency
config.window_background_opacity = 0.75
config.text_background_opacity = 0.9
-- config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 3,
  right = 3,
  top = 3,
  bottom = 3,
}

-- Tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_max_width = 64

-- Scrollback
config.scrollback_lines = 10000

return config

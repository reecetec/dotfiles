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


-- Nord Color Scheme
config.colors = {
  -- The default text color
  foreground = '#D8DEE9',
  -- The default background color
  background = '#2E3440',

  -- Overrides the cell background color when the current cell is occupied by the cursor
  cursor_bg = '#D8DEE9',
  cursor_fg = '#2E3440',
  cursor_border = '#D8DEE9',

  -- the foreground color of selected text
  selection_fg = '#2E3440',
  -- the background color of selected text
  selection_bg = '#D8DEE9',

  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
  scrollbar_thumb = '#434C5E',

  -- The color of the split lines between panes
  split = '#434C5E',

  ansi = {
    '#3B4252', -- black
    '#BF616A', -- red
    '#A3BE8C', -- green
    '#EBCB8B', -- yellow
    '#81A1C1', -- blue
    '#B48EAD', -- magenta
    '#88C0D0', -- cyan
    '#E5E9F0', -- white
  },
  brights = {
    '#4C566A', -- bright black
    '#BF616A', -- bright red
    '#A3BE8C', -- bright green
    '#EBCB8B', -- bright yellow
    '#81A1C1', -- bright blue
    '#B48EAD', -- bright magenta
    '#8FBCBB', -- bright cyan
    '#ECEFF4', -- bright white
  },

  -- Tab bar colors
  tab_bar = {
    background = '#2E3440',
    active_tab = {
      bg_color = '#81A1C1',
      fg_color = '#2E3440',
    },
    inactive_tab = {
      bg_color = '#4C566A',
      fg_color = '#D8DEE9',
    },
    inactive_tab_hover = {
      bg_color = '#5E81AC',
      fg_color = '#D8DEE9',
    },
    new_tab = {
      bg_color = '#434C5E',
      fg_color = '#D8DEE9',
    },
    new_tab_hover = {
      bg_color = '#5E81AC',
      fg_color = '#D8DEE9',
    },
  },
}

-- Font configuration
config.font = wezterm.font('JetBrains Mono', { weight = 'Medium' })
config.font_size = 11.0

-- Window appearance
config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

-- Tab bar
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_max_width = 32

-- Scrollback
config.scrollback_lines = 10000

return config


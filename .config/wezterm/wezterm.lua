local wezterm = require 'wezterm'
local config = {}

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

return config

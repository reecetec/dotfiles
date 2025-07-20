-- leader key 
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Bootstrap lazy.nvim (package manager)
-- This checks if lazy.nvim exists, if not, it downloads it
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  print("Installing lazy.nvim...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none", 
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
  print("Lazy.nvim installed!")
end

-- Add lazy.nvim to runtime path so we can require it
vim.opt.rtp:prepend(lazypath)

-- Load core vim settings BEFORE plugins
require('core.options')
require('core.keymaps')

-- Setup lazy.nvim and load plugins
require("lazy").setup({
  spec = {
    -- This tells lazy to look for plugins in lua/plugins/
    -- Each .lua file in that directory will be loaded as a plugin spec
    { import = "plugins" },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
  },
  -- UI configuration
  ui = {
    icons = vim.g.have_nerd_font and {}
  },

})

-- Load additional core settings that might depend on plugins
require('core.autocmds')


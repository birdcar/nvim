--[[
  File: github.lua
  Description: Github nvim theme configuration
  See: https://github.com/projekt0n/github-nvim-theme
]]
local ghTheme = require("github-theme")
local auto_dark_mode = require("auto-dark-mode")

ghTheme.setup({
  options = {
    terminal_colors = true,
    dim_interactive = true,
    module_default = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    },
    palettes = {},
    specs = {},
    groups = {},
  }
})

auto_dark_mode.setup({
  update_interval = 1000,
  set_dark_mode = function()
    Cmd("colorscheme github_dark")
  end,
  set_light_mode = function()
    Cmd("colorscheme github_light")
  end
})


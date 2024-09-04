--[[
  File: init.lua
  Description: Entry point file for neovim
]]

-- Bootsraping plugin manager
require "lazy-bootstrap"

-- System stuff
require "settings"

-- Plugin management
local lazy = require("lazy")
lazy.setup("plugins")

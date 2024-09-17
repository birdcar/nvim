--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/folke/lazy.nvim
]]

require("helpers")
require("languages.markdown")
require("languages.ruby")
require("keybindings")

return {
  -- GitHub Nvim Theme {{{
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup
    priority = 1000, -- make sure to load this before all other plugins
    dependencies = {
      "f-person/auto-dark-mode.nvim",
    },
    config = function ()
      require "extensions.colorscheme"
    end
  },
  -- }}}

  -- Devicons {{{
  "nvim-tree/nvim-web-devicons",
  -- }}}

  -- Mini {{{
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("extensions.mini")
    end
  },
  -- }}}

  -- Mason {{{
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require "extensions.mason"
    end
  },
  -- }}}

  -- Git Signs{{{
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
      require "extensions.gitsigns"
    end
  },
  -- }}}

  -- Telescope {{{
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function ()
      require("extensions.telescope")
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
  },
  -- }}}

  -- Trouble {{{
  {
    "folke/trouble.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("extensions.trouble")
    end,
  },
  -- }}}

  -- TreeSitter {{{
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require "extensions.treesitter"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-refactor",
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    }
  },
  -- }}}

  -- {{{ Octo.nvim
  {
    "pwntester/octo.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require("octo").setup({
        default_to_projects_v2 = true,
      })
    end,
  },
  -- {{{ Copilot
  "github/copilot.vim",
 -- }}}
}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0

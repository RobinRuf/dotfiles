local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Your plugins go here
  use { 
          'svrana/neosolarized.nvim',
          requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'neovim/nvim-lspconfig' -- LSP

use 'onsails/lspkind.nvim' -- VSCode-Like Pictograms
use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"}) -- Snippet
use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
use 'hrsh7th/nvim-cmp' -- Completion
use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
use 'williamboman/mason.nvim'
use 'williamboman/mason-lspconfig.nvim'
use 'glepnir/lspsaga.nvim' -- LSP UIs
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
use 'nvim-tree/nvim-web-devicons' -- Icons for Telescope
use "nvim-lua/plenary.nvim" -- Common utilities
use 'nvim-telescope/telescope.nvim' -- Telescope
use 'nvim-telescope/telescope-file-browser.nvim' -- Telescope File Browser
use 'windwp/nvim-autopairs' -- Automatically close Brackets
use 'windwp/nvim-ts-autotag' -- Automatically close Tags
use 'norcalli/nvim-colorizer.lua' -- Shows Color of RGB etc in CSS files directly
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'} -- Tabs
use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
}
use 'dinhhuy258/git.nvim' -- For git blame & Browse

-- Lua
use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)

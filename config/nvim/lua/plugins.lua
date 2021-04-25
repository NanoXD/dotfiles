local cmd = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  cmd 'packadd packer.nvim'
end

cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- Better syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  -- LSP and completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'nvim-lua/completion-nvim'
  use 'onsails/lspkind-nvim'
  use { 'wantyapps/nlua.nvim', branch = 'wanty' } -- Add Lua LSP. Use unmerged PR for now

  -- Snippets
  use { 'hrsh7th/vim-vsnip', requires = { "rafamadriz/friendly-snippets" } }
  use 'hrsh7th/vim-vsnip-integ'

  -- UI
  use 'jacoborus/tender.vim'

  use { 
    'Th3Whit3Wolf/onebuddy', 
    requires = {
      'tjdevries/colorbuddy.vim'
    },
    config = function()
      require('colorbuddy').colorscheme('onebuddy')
    end
  }

  use {
    'glepnir/galaxyline.nvim', -- Status line written in Lua
    branch = 'main',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    },
    config = function()
      require('statusline')
    end
  }

  use {
    'lewis6991/gitsigns.nvim', -- Adds Git highlighting
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Tools
  use 'ojroques/vim-oscyank' -- Copy to Clipboard using ANSI OCS52
  use { 'norcalli/nvim-colorizer.lua' }
  use 'b3nj5m1n/kommentary' -- Comment mapings
  use 'kevinhwang91/nvim-bqf' -- Make QuickFix better
  use {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup({
        disable_on_zoom = true
      })
    end
  }
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require "surround".setup {}
    end
  }
end)

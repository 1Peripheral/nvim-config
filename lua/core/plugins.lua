local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Colorscheme 
  use 'ellisonleao/gruvbox.nvim'
  use 'nanotech/jellybeans.vim'
  use 'lunarvim/darkplus.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  -------
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  -- use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'terrortylor/nvim-comment'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'akinsho/toggleterm.nvim'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'neovim/nvim-lspconfig'
  use "williamboman/mason-lspconfig.nvim"
  use {"williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls"
      }
    }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)


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

-- autocommand that reloads neovim whenever your save this file 
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, 'packer')
if not status then
    return
end

return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- lua functions that many plugins use
    use 'nvim-lua/plenary.nvim'

    -- colorscheme
    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- tmux & split window navigation
    use 'christoomey/vim-tmux-navigator'

    -- maximizes and restores current window
    use 'szw/vim-maximizer'

    -- essential plugins
    use 'kylechui/nvim-surround'

    -- commenting lines
    use 'numToStr/Comment.nvim'

    -- file explorer
    use 'nvim-tree/nvim-tree.lua'

    -- icons 
    use 'nvim-tree/nvim-web-devicons'

    -- statusline
    use 'nvim-lualine/lualine.nvim'

    -- tabline
    use 'romgrk/barbar.nvim'

    -- fuzzy finding
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' }

    -- autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -- managing & installing lsp servers
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- configuring lsp servers
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use {
        'glepnir/lspsaga.nvim',
        branch = 'main',
    }
    use 'jose-elias-alvarez/typescript.nvim'
    use 'onsails/lspkind.nvim'

    -- has to be after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

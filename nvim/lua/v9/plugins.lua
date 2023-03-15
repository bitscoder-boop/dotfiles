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

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use '/home/bitscoder/Desktop/nvim-task-plugin/'
    -- completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind.nvim'
    use 'L3MON4D3/LuaSnip'

    use 'rafamadriz/friendly-snippets'

    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'preservim/nerdtree'
    use "williamboman/mason.nvim"
    use {"akinsho/toggleterm.nvim", tag = '*', config = function() end}
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {{
            'nvim-lua/plenary.nvim'
        }}
    }
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup()end
    }
    -- Dart/Flutter
    use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
    use 'Nash0x7E2/awesome-flutter-snippets'
end)

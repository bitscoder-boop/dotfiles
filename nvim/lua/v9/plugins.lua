local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
    -- debugging tools
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'rcarriga/nvim-dap-ui'
    use 'theHamsta/nvim-dap-virtual-text'
    use '/nvim-telescope/telescope-dap.nvim'

	-- lsp/cmp/
    use 'aca/emmet-ls'
    use {'rafamadriz/friendly-snippets',
}
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use{"saadparwaiz1/cmp_luasnip",
}
	use("onsails/lspkind.nvim")
	use{"L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
}
	use({
		"neovim/nvim-lspconfig",
		config = function()
			require("v9.config.lsp")
		end,
	})
	use({
		"hrsh7th/nvim-cmp",
		config = function()
			require("v9.config.auto-cmp")
		end,
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("v9.config.nullls")
		end,
	})
	use("preservim/tagbar")
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("v9.config.gitsigns")
		end,
	})
	use({
		"junegunn/fzf.vim",
		requires = { "junegunn/fzf", run = ":call fzf#install()" },
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		config = function()
			require("lualine").setup({
				theme = "nord",
			})
		end,
	})
	use("lewis6991/impatient.nvim")
	use("ggandor/lightspeed.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("ryanoasis/vim-devicons")

	use("wbthomason/packer.nvim")
	use({
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("v9.config.mason.installer")
		end,
	})

	use("tpope/vim-fugitive")
	-- completion

	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = "all",
				auto_install = true,
				highlight = {
					enable = true,
				},
				indent = {
					enable = false,
				},
				additional_vim_regex_highlighting = false,
			})
		end,
	})
	use({ "preservim/nerdtree" })
	use({
		"williamboman/mason.nvim",
		config = function()
			require("v9.config.mason")
		end,
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("v9.config.toggleterm")
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = {
			"nvim-lua/plenary.nvim",
		},
        config = function ()
            require("v9.config.telescope")
        end
	})
	-- bracket matcher
	use("jiangmiao/auto-pairs")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("nvim-lua/plenary.nvim")
	use("shaunsingh/nord.nvim")
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)

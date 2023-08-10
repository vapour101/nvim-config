return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "folke/tokyonight.nvim"

    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        requires = { {"nvim-lua/plenary.nvim"} },
    }

	use ( "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use "nvim-treesitter/playground"

	use "theprimeagen/harpoon"
	use "mbbill/undotree"
	use "tpope/vim-fugitive"

    use {
        "hiphish/rainbow-delimiters.nvim",
        requires = "nvim-treesitter",
    }

	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{
				'williamboman/mason.nvim',
				run = ":MasonUpdate"
			},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
end)


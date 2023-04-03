local packer = require("packer")
local use = packer.use

packer.startup(function()
    use "wbthomason/packer.nvim"
    use "folke/tokyonight.nvim"

    use {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { {"nvim-lua/plenary.nvim"} },
    }

    use "neovim/nvim-lspconfig"
    use {
        "williamboman/mason.nvim",
        config = function() require("mason").setup() end,
    }
    use "williamboman/mason-lspconfig.nvim"

    use "lukas-reineke/indent-blankline.nvim"

    use "simrat39/rust-tools.nvim"
    use {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    }

    use "digitaltoad/vim-pug"
end)


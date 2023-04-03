local nnoremap = require("vapour101.keymap").nnoremap

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    -- silent=true,
    local bufopts = { buffer=bufnr }
    nnoremap('gD', vim.lsp.buf.declaration, bufopts)
    nnoremap('gd', vim.lsp.buf.definition, bufopts)
    nnoremap('K', vim.lsp.buf.hover, bufopts)
    nnoremap('gi', vim.lsp.buf.implementation, bufopts)
    nnoremap('<C-k>', vim.lsp.buf.signature_help, bufopts)
    nnoremap('<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    nnoremap('<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    nnoremap('<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    nnoremap('<leader>D', vim.lsp.buf.type_definition, bufopts)
    nnoremap('<leader>rn', vim.lsp.buf.rename, bufopts)
    nnoremap('<leader>ca', vim.lsp.buf.code_action, bufopts)
    nnoremap('gr', vim.lsp.buf.references, bufopts)
    nnoremap('<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

require("rust-tools").setup {
    server = {
        on_attach = on_attach,
        cmd = {"rustup", "run", "stable", "rust-analyzer"},
        settings = {
            ["rust-analyzer"] = {
                checkOnSave = {
                    command = "clippy"
                },
            }
        },
    },
}

require("lspconfig").volar.setup {
    on_attach = on_attach
}

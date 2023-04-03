local Remap = require("vapour101.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

nnoremap('<leader>e', vim.diagnostic.open_float)
nnoremap('[d', vim.diagnostic.goto_prev)
nnoremap(']d', vim.diagnostic.goto_next)
nnoremap('<leader>q', vim.diagnostic.setloclist)

nnoremap('<leader>', '<Nop>')

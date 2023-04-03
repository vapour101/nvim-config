local nnoremap = require("vapour101.keymap").nnoremap
local lsp_lines = require("lsp_lines")

nnoremap("<Leader>l", lsp_lines.toggle)


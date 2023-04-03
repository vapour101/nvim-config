local Remap = require("vapour101.keymap")
local nnoremap = Remap.nnoremap

local Telescope = require("telescope.builtin")

nnoremap("<C-p>", ":Telescope<CR>")
nnoremap("<Leader>pf", function()
    Telescope.find_files()
end)
nnoremap("<Leader>pb", function()
    Telescope.buffers()
end)

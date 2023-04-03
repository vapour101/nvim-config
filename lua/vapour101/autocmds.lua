local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local my_group = augroup("Vapour101", {})

autocmd({"BufWritePre"}, {
    group = my_group,
    pattern = "*",
    command = "%s/\\s\\+$//e",
    desc = "Remove trailing whitespace on save",
})


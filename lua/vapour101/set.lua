local g = vim.g
local o = vim.opt

o.nu = true
o.relativenumber = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.hlsearch = false
o.incsearch = true

o.smartindent = true

o.wrap = false

o.swapfile = false
o.backup = false

o.scrolloff = 8
o.signcolumn = "yes"

o.pumblend = 30
o.winblend = 30

o.cmdheight = 1

o.updatetime = 50

o.colorcolumn = "80"

g.mapleader = " "
g.netrw_keepdir = 0

vim.diagnostic.config({
    virtual_text = false,
})

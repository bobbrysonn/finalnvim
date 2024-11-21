local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Clipboard
opt.clipboard = "unnamedplus"

-- Editing
opt.history = 1000

-- Indentation
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

-- Search
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true

-- UI
opt.number = true
opt.tgc = true

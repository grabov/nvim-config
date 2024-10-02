vim.cmd("language en_US")
vim.cmd("set encoding=utf-8")
vim.cmd("set number")
vim.cmd("set noswapfile")
vim.cmd("set scrolloff=7")
vim.cmd("set colorcolumn=119")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "tn", ":bn<CR>", {})
vim.keymap.set("n", "tp", ":bp<CR>", {})
vim.keymap.set("n", "tc", ":bd<CR>", {})


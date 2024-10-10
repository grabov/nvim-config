-----------------------------------------------------------
-- Common
-----------------------------------------------------------
vim.cmd("language en_US")
vim.cmd("set encoding=utf-8")
vim.cmd("set number")
vim.cmd("set noswapfile")
vim.cmd([[
filetype indent plugin on
syntax enable
]])

-----------------------------------------------------------
-- Visual
-----------------------------------------------------------
vim.cmd("set scrolloff=7")
vim.cmd("set colorcolumn=119")

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- 2 spaces for selected filetypes
vim.cmd([[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]])
vim.opt.termguicolors = true

-- highlight selected text
vim.api.nvim_exec(
	[[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]],
	false
)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Tabs management
vim.keymap.set("n", "tn", ":bn<CR>", {})
vim.keymap.set("n", "tp", ":bp<CR>", {})
vim.keymap.set("n", "tc", ":bd<CR>", {})

-- Pane navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")


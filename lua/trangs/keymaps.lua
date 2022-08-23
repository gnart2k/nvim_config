local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
--normal mode
keymap("n", "<C-q>", ":wq!<CR>", opts) --quit
keymap("n", "<C-s>", ":w!<CR>", opts) --save

--insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "<C-s>", "<ESC>:w!<CR>", opts) --save


--visual mode

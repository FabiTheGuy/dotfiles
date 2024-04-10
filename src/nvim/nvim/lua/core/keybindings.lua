local g = vim.g
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

g.mapleader = ' '

keymap('n', '<leader>w', '<cmd>w!<cr>', opts)
keymap('n', '<leader>q', '<cmd>q!<cr>', opts)
keymap('n', '<leader>x', '<cmd>x!<cr>', opts)

keymap('n', '<C-w>', '<cmd>bd<cr>', opts)
keymap('n', '<C-ü>', '<cmd>bnext<cr>', opts)
keymap('n', '<C-p>', '<cmd>bprev<cr>', opts)

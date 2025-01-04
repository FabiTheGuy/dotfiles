local g = vim.g
local keymap = vim.keymap
local options = { noremap = true, silent = true }


g.mapleader = ' '   -- Sets map leader

keymap.set('n', '<leader>w', '<cmd>w<cr>', options)     -- <leader>w = save file
keymap.set('n', '<leader>x', '<cmd>x<cr>', options)     -- <leader>x = writes and exits file
keymap.set('n', '<leader>q', '<cmd>q<cr>', options)     -- <leader>q = quits file


----- Lazy -----
keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', options)                  -- <leader>l = Opens Lazy Pckg Manager Interface

----- Mason -----
keymap.set('n', '<leader>m', '<cmd>Mason<cr>', options)                 -- <leader>m = Opens Mason LSP Pckg Manager Interface 

----- NvimTreesitter -----
keymap.set('n', '<leader>ff', '<cmd>NvimTreeFocus<cr>', options)        -- <leader>ff = Open/Focus NvimTree (File explorer) 
keymap.set('n', '<leader>fc', '<cmd>NvimTreeClose<cr>', options)        -- <leader>fc = Closes NvimTree (File explorer)

----- Telescope -----
keymap.set('n', '<leader>tb', '<cmd>Telescope buffers<cr>', options)    -- <leader>tb = Telescope show buffers
keymap.set('n', '<leader>tf', '<cmd>Telescope find_files<cr>', options) -- <leader>tf = Telescope find files

local opt = vim.opt
local g = vim.g


-----------------------------------------------------------
-- Appearcance
-----------------------------------------------------------
opt.number = true
opt.syntax = 'on'
opt.termguicolors = true
opt.showmode = false
opt.guicursor = ''

-----------------------------------------------------------
-- Tabbing
-----------------------------------------------------------
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.autoindent = true
opt.cursorline = true

-----------------------------------------------------------
-- Searching
-----------------------------------------------------------
opt.showmatch = true
opt.ignorecase = true
opt.hlsearch = true
opt.incsearch = true

-----------------------------------------------------------
-- Misc
-----------------------------------------------------------
opt.wildmode = 'longest,list'
opt.clipboard = 'unnamedplus'
opt.ttyfast = true

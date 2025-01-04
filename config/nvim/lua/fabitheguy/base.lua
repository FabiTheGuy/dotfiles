local opt = vim.opt
local g = vim,g


----- Editor -----
opt.syntax = 'on'					-- Sets syntax highlighting
opt.tabstop = 4						-- Indent with n-Tabs
opt.expandtab = true				-- Converts Tabs into Spaces
opt.smarttab = true					-- Insert "tabstop"-Spaces when Tab is pressed
opt.shiftwidth = 4					-- When shifting, indent with n-Spaces
opt.autoindent = true				-- New lines inherit from previous lines


----- UI -----
opt.number = true					-- Set line numbers
opt.cursorline = true				-- Marks line where the cursor is at
opt.visualbell = true               -- Flash Screen (no acustic bell)


----- Searching -----
opt.hlsearch = true					-- Search Highlighting
opt.smartcase = true				-- Automatically switches to case-sensitive, when search querry


----- Misc -----
opt.encoding = 'utf-8'				-- Text encoding UTF-8
opt.clipboard = 'unnamedplus'		-- System Wide Clipboard
opt.scrolloff = 4					-- Amount of screen lines to keep above/below cursor
opt.mouse = 'a'
g.loaded_ntrw = 1
g.loaded_ntrwPlugin = 1

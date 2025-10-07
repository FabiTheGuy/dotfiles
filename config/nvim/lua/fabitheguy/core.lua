local option = vim.opt
local global = vim.g


---- Numbers ----
option.number = true				    -- Set line numbers
option.relativenumber = true            -- Show lines numbers relative to cursor


---- Indentation ----
option.tabstop = 4						-- Indent with n-Tabs
option.expandtab = true				    -- Converts Tabs into Spaces
option.smarttab = true					-- Insert "tabstop"-Spaces when Tab is pressed
option.shiftwidth = 4					-- When shifting, indent with n-Spaces
option.autoindent = true				-- New lines inherit from previous lines
option.smartindent = true               -- Indentation which reacts to code-base/syntax


----- UI -----
option.syntax = 'on'					-- Sets syntax highlighting
option.termguicolors = true             -- Enables 24-Bit color
option.cursorline = true				-- Marks line where the cursor is at
option.visualbell = true                -- Flash Screen (no acustic bell)
option.scrolloff = 8                    -- Scrolls up/down if cursor is defined lines before top/bottom
option.signcolumn = 'yes'               -- Enables extra sign column at the side
option.wrap = false                     -- Prevents lines from wrapping and displaying in the next line


----- Searching -----
option.ignorecase = true                -- Ignores case-sensitive when searching
option.smartcase = true				    -- Automatically switches to case-sensitive, when search querry
option.hlsearch = true					-- Search Highlighting
option.incsearch = true                 -- Show results while the user types


---- Mouse -----
option.mouse = 'a'


----- Misc -----
option.encoding = 'utf-8'				-- Text encoding UTF-8
option.clipboard = 'unnamedplus'		-- System Wide Clipboard
global.loaded_ntrw = 1
global.loaded_ntrwPlugin = 1

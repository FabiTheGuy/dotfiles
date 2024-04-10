local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  require('plugins.packages.gruvbox'),
  require('plugins.packages.dressing'),
  require('plugins.packages.lualine'),
  require('plugins.packages.bufferline'),
  require('plugins.packages.nvim-tree'),
  require('plugins.packages.telescope'),
  require('plugins.packages.nvim-cmp'),
  require('plugins.packages.vimtex'),

  -- LSP
  require('plugins.packages.lsp.mason'),
  require('plugins.packages.lsp.lspconfig')
}
local opts = {}

require('lazy').setup(plugins, opts)

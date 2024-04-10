return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim'
  },
  config = function()
    local mason = require('mason')
    local lsp_config = require('mason-lspconfig')

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    lsp_config.setup({
      ensure_installed = {
        'clangd',
        'texlab',
        'markdown_oxide',
        'lua_ls',
        'bashls',
        'pyright',
        'html',
        'cssls',
        'tsserver'
      },
      auto_installed = true
    })
  end
}

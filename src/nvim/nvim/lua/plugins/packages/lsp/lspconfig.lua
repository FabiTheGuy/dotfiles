return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    { 'antosha417/nvim-lsp-file-operations', config = true }
  },
  config = function()
    local lspconfig = require('lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    local capabilities = cmp_nvim_lsp.default_capabilities()
    local lsps = { 'clangd', 'texlab', 'lua_ls', 'pyright', 'html', 'cssls', 'tsserver' }


    local on_attach = function(client, bufnr)
      opts.buffer = bufnr

      opts.desc = 'Show LSP reference'
      keymap('n', '<leader>gr', '<cmd>Telescope lsp_references<cr>', opts)
      opts.desc = 'Go to declaration'
      keymap('n', '<leader>gD', vim.lsp.buf.declaration, opts)
      opts.desc = 'Go to definition'
      keymap('n', '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', opts)
      opts.desc = 'Go to implementation'
      keymap('n', '<leader>gi', '<cmd>Telescope lsp_implementation<cr>', opts)
      opts.desc = 'Restart LSP'
      keymap('n', '<leader>rs', '<cmd>LspRestart<cr>', opts)
    end
   
    lspconfig['clangd'].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { 'c', 'cpp', 'cc', 'cxx', 'objc', 'objcpp', 'cuda', 'proto', 'h', 'hpp' }
    })

    lspconfig['texlab'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

    lspconfig['markdown_oxide'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

    lspconfig['lua_ls'].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            global = { 'vim' }
          },
          workspace = {
            library = {
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.stdpath('config') .. '/lua'] = true
            }
          }
        }
      }
    })

    lspconfig['bashls'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

    lspconfig['pyright'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

    lspconfig['html'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    }) 

    lspconfig['cssls'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

    lspconfig['tsserver'].setup({
      capabilities = capabilities,
      on_attach = on_attach
    })

  end
}

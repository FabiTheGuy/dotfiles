return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        { 'antosha417/nvim-lsp-file-operations', config = true },
    },
    config = function()
        local lspconfig = require('lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')
        local keymap = vim.keymap.set
        local opts = { noremap = true, silent = true }

        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            opts.desc = 'Show LSP Reference'
            keymap('n', '<leader>gr', '<cmd>Telescope lsp_reference', opts)

            opts.desc = 'Go to declaration'
            keymap('n', '<leader>gd', vim.lsp.buf.declaration, opts)

            opts.desc = 'Show LSP Definitions'
            keymap('n', '<leader>gD', '<cmd>Telescope lsp_definitions<cr>', opts)

            opts.desc = 'Show LSP implementation'
            keymap('n', '<leader>gi', '<cmd>Telescope lsp_implementations<cr>', opts)

            opts.desc = 'Show Doc under Cursor'
            keymap('n', '<leader>gdd', vim.lsp.buf.hover, opts)

            opts.desc = 'Restart LSP'
            keymap('n', '<leader>rs', '<cmd>LspRestart<cr>', opts)
        end
        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig['lua_ls'].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig['clangd'].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end
}

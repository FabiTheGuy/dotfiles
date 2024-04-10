return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require('nvim-tree').setup({
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      }
    })

    -- Keymaps
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    keymap('n', '<leader>ff', '<cmd>NvimTreeFocus<cr>', opts)
    keymap('n', '<leader>ft', '<cmd>NvimTreeToggle<cr>', opts)
    keymap('n', '<leader>fo', '<cmd>NvimTreeOpen<cr>', opts)
    keymap('n', '<leader>fc', '<cmd>NvimTreeClose<cr>', opts)
    keymap('n', '<C-ä>', '<cmd>NvimTreeResize +5<cr>', opts)
    keymap('n', '<C-ö>', '<cmd>NvimTreeResize -5<cr>', opts)
  end
}

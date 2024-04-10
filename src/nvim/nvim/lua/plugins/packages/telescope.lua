return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.6',
  dependencies = { 
    'nvim-lua/plenary.nvim' 
  },
  config = function()
    require('telescope').setup({}) 

    -- Keymaps
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }

    keymap('n', '<leader>tf', '<cmd>Telescope find_files<cr>', opts)
    keymap('n', '<leader>tg', '<cmd>Telescope live_grep<cr>', opts)
    keymap('n', '<leader>tb', '<cmd>Telescope buffers<cr>', opts)
  end
}

return {
  'lervag/vimtex',
  init = function()
    local g = vim.g

    g.vimtex_view_general_viewer = 'okular'
    g.vimtex_compiler_method = 'latexrun'
  end
}

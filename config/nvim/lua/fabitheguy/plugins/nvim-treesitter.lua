return {
    'nvim-treesitter/nvim-treesitter',
    opts = {
        -- parsers which should be installed
        ensure_installed = {
            'c', 'cpp', 'java', 'rust', 'asm', 'bash', 'python', 'lua', 'html', 'css', 'javascript', 'typescript',
            'typst', 'latex',
            'vim', 'vimdoc',
            'json', 'yaml', 'toml'
        },
        -- synchron installation of 'ensure_installed' defined parsers
        sync_install = false,
        -- automatically install missing parsers
        auto_install = true,
        -- parsers which should not be installed
        ignore_install = { 'javascript' },
        -- highlighting options
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    },
}

require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "javascript", "typescript", "lua" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-space>',
            node_incremental = '<c-space>',
            node_decremental = '<c-backspace',
        }
    }
}

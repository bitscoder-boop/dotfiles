local set = vim.opt
local configs = require'nvim-treesitter.configs'


set.number = true
set.clipboard = unnamedplus
set.relativenumber = true
set.tabstop = 4
set.shiftwidth = 4
set.softtabstop = 0
set.expandtab = true
set.swapfile = false
set.cursorline = true
set.completeopt = {"menu", "menuone", "noselect"}
-- set.mouse = ''
vim.cmd [[silent! colorscheme desert]]


configs.setup {
    ensure_installed = "all",
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = false,
    },
    additional_vim_regex_highlighting = false,
}

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

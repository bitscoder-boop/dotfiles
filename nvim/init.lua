--lua
require('impatient')
vim.g.mapleader = ','
vim.g.NERDTreeWinPos = 'right'
vim.notify = require("notify")
-- vim.notify = require("notify").setup({
--     backgroundcolor = #000000,
-- })
require("v9.keymaps") 
require("v9.plugins")
require("v9.lsp")
require("v9.auto-cmp")
require("v9.auto-lsp")
require("v9.toggleterm")
require("v9.fl_tools")
require("v9.web-devi")


require('lualine').setup {}
require("v9.vars")
require("v9.catppuccin")

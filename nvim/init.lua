--lua

require("impatient")
vim.g.mapleader = ","
vim.g.NERDTreeWinPos = "right"

require("v9.keymaps")
require("v9.plugins")
require("v9.dap")
-- require("v9.auto-cmp")

require("v9.vars")
vim.cmd.colorscheme("nord")

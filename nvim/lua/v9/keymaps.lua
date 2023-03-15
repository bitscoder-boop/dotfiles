function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', 'jk', '<esc>')
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q!<CR>')
map('n', '<leader>s', ':so %<CR>')
map('n', '<leader>ev', ':w<cr>:tabedit $MYVIMRC<cr>')
map('n', '<leader>sv', ':w<cr>:source $MYVIMRC<cr>')
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>")
map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').git_files()<cr>")
map('n', '<leader>lg', "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>")
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>")
map('n', '<leader>fe', "<cmd>Telescope diagnostics<cr>")
map('n', '<leader>fr', "<cmd>Telescope lsp_references<cr>")
map('n', '<C-n>', "<cmd>NERDTreeToggle<cr>")

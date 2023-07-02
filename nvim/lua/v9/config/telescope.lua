function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "]f", "<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n", "]g", "<cmd>lua require('telescope.builtin').git_files()<cr>")
map("n", "]lg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
map("n", "]lb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n", "]gs", "<cmd>lua require('telescope.builtin').grep_string()<cr>")
map("n", "]d", "<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<cr>")
map("n", "]k", "<Esc>")

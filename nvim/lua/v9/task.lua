local task = require 'nvim-task-plugin'

-- define a mapping to add a new task
vim.api.nvim_set_keymap("n", "<leader>tn", "lua task.add_task(vim.fn.input('Description: '))<CR>", { noremap = true, silent = true })

-- define a mapping to mark a task as working
vim.api.nvim_set_keymap("n", "<leader>tw", ":lua task.mark_working(vim.fn.input('Task ID: '))<CR>", { noremap = true, silent = true })

-- define a mapping to mark a task as complete
vim.api.nvim_set_keymap("n", "<leader>tc", ":lua task.mark_complete(vim.fn.input('Task ID: '))<CR>", { noremap = true, silent = true })

-- define a mapping to delete a task
vim.api.nvim_set_keymap("n", "<leader>td", ":lua task.delete_task(vim.fn.input('Task ID: '))<CR>", { noremap = true, silent = true })

-- define a mapping to display the task list
vim.api.nvim_set_keymap("n", "<leader>tl", ":lua task.display_tasks()<CR>", { noremap = true, silent = true })

-- define a mapping to hide the task list
vim.api.nvim_set_keymap("n", "<leader>th", ":lua task.hide_tasks()<CR>", { noremap = true, silent = true })

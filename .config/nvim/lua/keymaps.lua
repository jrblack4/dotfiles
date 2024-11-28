-- Navigate windows with Ctrl-h/j/k/l
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-p>',
	':Telescope find_files find_command=rg,--files,--hidden,--glob,!.git,--glob,!node_modules<CR>',
	{ noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>e',
	':Telescope find_files find_command=rg,--files,--hidden,--glob,!.git,--glob,!node_modules<CR>',
	{ noremap = true, silent = true })

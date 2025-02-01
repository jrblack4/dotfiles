-- nvim/lua/settings.lua

vim.loader.enable()
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.clipboard = 'unnamedplus'
vim.o.guicursor = ""
vim.o.signcolumn = 'yes'

vim.o.mouse = 'a'
vim.o.splitright = true
vim.o.autoindent = true

vim.o.number = true
vim.o.relativenumber = false

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.opt.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
-- vim.o.isfname:append("@-@")

vim.o.updatetime = 50

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
    if vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
      vim.cmd('cd ' .. vim.fn.argv(0))
      require('telescope.builtin').find_files()
    end
	end,
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
  end,
})

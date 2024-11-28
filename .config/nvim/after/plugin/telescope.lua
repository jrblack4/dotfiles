
local telescope = require("telescope")

telescope.setup {
  defaults = {
    find_command = { 'rg', '--files', '--hidden', '--glob=!.git/**', '--glob=!**/node_modules/**' },
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
      '--glob=!**/node_modules/**',
      '--glob=!**/dist/*',
      '--glob=!**/build/*',
      '--glob=!**/.git/*',
    },
    path_display = { "truncate" }
  },
}

telescope.load_extension('fzf')

-- Telescope border color
local borderColor = "#5AB57D"
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = borderColor })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = borderColor })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = borderColor })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = borderColor })

-- Keybinds
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':Telescope live_grep<CR>', { noremap = true, silent = true })

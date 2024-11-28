require('nvim-treesitter.configs').setup {
  ensure_installed = { 'c', 'vim', 'query', 'vimdoc', 'lua', 'cpp', 'rust', 'typescript', 'json', 'markdown', 'markdown_inline' },
  auto_install = true,
  sync_install = false,
  ignore_install = {},
  highlight = { enable = true },
  indent = { enable = true },
  modules = {},
}

-- Set specific colors for JSON highlighting using `nvim_set_hl`
vim.api.nvim_set_hl(0, 'TSPunctBracket', { fg = '#ffffff' }) -- White for curly braces
vim.api.nvim_set_hl(0, 'TSField', { fg = '#00ff00' })        -- Green for keys
vim.api.nvim_set_hl(0, 'TSString', { fg = '#0000ff' })       -- Blue for values

require("gitsigns").setup {
  signs = {
    add = { text = "|" },
    change = { text = "~" },
    delete = { text = "x" },
    topdelete = { text = "x" },
    changedelete = { text = "~" },
  },
  numhl = true,
  linehl = false,
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  current_line_blame = false,
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,
}

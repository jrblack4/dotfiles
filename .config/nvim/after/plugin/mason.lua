-- after/plugin/mason.lua

require("mason").setup({})

require("mason-lspconfig").setup({
  ensure_installed = {
    "rust_analyzer", "eslint", "lua_ls", "ts_ls",
  },
})

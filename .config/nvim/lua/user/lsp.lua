local lspconfig = require("lspconfig")

-- Common options for all language servers.
local common_opts = {
  on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)
  end,
}

-- Additional options specifically for lua_ls.
local lua_opts = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }, -- Recognize the `vim` global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
}

-- Setup handlers for all servers.
require("mason-lspconfig").setup_handlers({
  function(server_name)
    if server_name == "ts_ls" and not require("lspconfig")[server_name] then
      server_name = "tsserver"
    end

    -- Start with the common options.
    local opts = common_opts

    if not lspconfig[serer_name] then
      vim.notify(
        ("lspconfig for '%s' not found; skipping setup"):format(server_name),
        vim.log.levels.WARN
      )
      return
    end

    -- If the server is lua_ls, merge in the lua-specific settings.
    if server_name == "lua_ls" then
      opts = vim.tbl_deep_extend("force", {}, common_opts, lua_opts)
    end

    -- Setup the server with the options.
    lspconfig[server_name].setup(opts)
  end,
})

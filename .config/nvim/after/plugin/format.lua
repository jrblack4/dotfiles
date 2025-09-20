-- ~/.config/nvim/after/plugin/format.lua
local table_has = function(tbl, val)
  for _, v in ipairs(tbl) do
    if v == val then
      return true
    end
  end
  return false
end

local js_filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "javascript.jsx",
    "javascript.tsx", "javascript.ts", "typescript.tsx", "typescript.ts" }

vim.keymap.set('n', '<C-f>', function()
  if #vim.lsp.get_active_clients({ bufnr = 0 }) > 0 then
    local ft = vim.bo.filetype;
    if table_has(js_filetypes, ft) then
      local success = pcall(function()
            vim.cmd('EslintFixAll')
            print("Formatted with EslintFixAll")
          end)
      if not success then
        vim.lsp.buf.format()
        print("Formatted with LSP")
      end
    else
      vim.lsp.buf.format()
      print("Formatted with LSP (" .. ft .. ")")
    end
  else
    vim.cmd('normal gg=G')
    print("Formatted with gg=G")
  end
end)


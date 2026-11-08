local M = {}

---Record the diagnostics published before setup, which no DiagnosticChanged event repeats
function M.seed()
  local diagnostics = require("nvim-tree.diagnostics")
  local seen = {}
  for _, diagnostic in ipairs(vim.diagnostic.get()) do
    local bufnr = diagnostic.bufnr
    if bufnr and not seen[bufnr] then
      seen[bufnr] = true
      diagnostics.update_lsp({ buf = bufnr, data = { diagnostics = vim.diagnostic.get(bufnr) } })
    end
  end
end

return M

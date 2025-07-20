-- Autoformat with Ruff on save (Python files)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  callback = function(args)
    vim.lsp.buf.format({ bufnr = args.buf })
  end,
})

vim.api.nvim_command([[
autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{prefix = ' ', highlight = "Comment", only_current_line = false, enabled = {"TypeHint", "ChainingHint", "ParameterHint"}}
]])

local nvim_lsp = require('lspconfig')
local lua_efm = {
    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
    formatStdin = true
}

local prettier = {
    formatCommand = "prettier --stdin-filepath ${INPUT}",
    formatStdin = true
}

local languages = {
    lua = {lua_efm},
    python = {{formatCommand = "autopep8 -i", formatStdin = true}},
    html = {prettier},
    htmldjango = {prettier},
    yaml = {prettier},
    json = {prettier},
    scss = {prettier},
    javascript = {prettier},
    typescript = {prettier},
    markdown = {prettier},
    css = {prettier}
}

nvim_lsp.efm.setup {
    init_options = {documentFormatting = true, codeAction = true},
    cmd = {"efm-langserver"},
    --[[ on_attach = function (client)
		client.resolved_capabilities.rename = false
		client.resolved_capabilities.hover = false
		client.resolved_capabilities.document_formatting = true
		client.resolved_capabilities.completion = false
	end, ]]
    on_attach = on_attach,
    filetypes = vim.tbl_keys(languages),
    settings = {rootMarkers = {".git/"}, languages = languages}
}

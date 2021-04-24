local nvim_lsp = require('lspconfig')
local lua_efm = {
    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
    formatStdin = true
}

-- local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}
local html_prettier = {formatCommand = "prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser html", formatStdin = true}
local css_prettier = {formatCommand = "prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser css", formatStdin = true}
local scss_prettier = {formatCommand = "prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser scss", formatStdin = true}
local eslint = {
    lintCommand = "eslint -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}
local denofmt = {formatCommand = "cat ${INPUT} | deno fmt -", formatStdin = true}
local markdown_prettier = {formatCommand = "prettier ${--tab-width:tabWidth} ${--single-quote:singleQuote} --parser markdown", formatStdin = true}
-- local json_prettier = {formatCommand = "prettier ${--tab-width:tabWidth} --parser json", formatStdin = true}
local jq = {formatCommand = "jq '.'", formatStdin = true}
local yaml_prettier = {formatCommand = "prettier ${--tab-width:tabWidth} --parser yaml", formatStdin = true}

local autopep8 = {formatCommand = "autopep8 -", formatStdin = true}
local latex = {formatCommand = "latexindent", formatStdin = true}

local languages = {
    lua = {lua_efm},
    html = {html_prettier},
    htmldjango = {html_prettier},
    yaml = {yaml_prettier},
    json = {jq},
    scss = {scss_prettier},
    javascript = {eslint, denofmt},
    markdown = {markdown_prettier},
    css = {css_prettier},
    python = {autopep8},
    tex = {latex},
    bib = {latex},
}

nvim_lsp.efm.setup {
    cmd = {DATA .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true, codeAction = true},
    on_attach = function(client)
        client.resolved_capabilities.rename = false
        client.resolved_capabilities.hover = false
        client.resolved_capabilities.document_formatting = true
        client.resolved_capabilities.completion = false
    end,
    filetypes = vim.tbl_keys(languages),
    settings = {rootMarkers = {".git/"}, languages = languages}
}

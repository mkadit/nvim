local saga = require('lspsaga')
saga.init_lsp_saga()

-- require('lspkind').init({})
vim.fn.sign_define(
    "LspDiagnosticsSignError",
    {
        texthl = "LspDiagnosticsSignError",
        text = "",
        numhl = "LspDiagnosticsSignError"
    }
)
vim.fn.sign_define(
    "LspDiagnosticsSignWarning",
    {
        texthl = "LspDiagnosticsSignWarning",
        text = "",
        numhl = "LspDiagnosticsSignWarning"
    }
)
vim.fn.sign_define(
    "LspDiagnosticsSignHint",
    {
        texthl = "LspDiagnosticsSignHint",
        text = "",
        numhl = "LspDiagnosticsSignHint"
    }
)
vim.fn.sign_define(
    "LspDiagnosticsSignInformation",
    {
        texthl = "LspDiagnosticsSignInformation",
        text = "",
        numhl = "LspDiagnosticsSignInformation"
    }
)

-- symbols for autocomplete
vim.lsp.protocol.CompletionItemKind = {
    "   (Text) ",
    "   (Method)",
    "   (Function)",
    "   (Constructor)",
    " ﴲ  (Field)",
    "[] (Variable)",
    "   (Class)",
    " ﰮ  (Interface)",
    "   (Module)",
    " 襁 (Property)",
    "   (Unit)",
    "   (Value)",
    " 練 (Enum)",
    "   (Keyword)",
    " ﬌  (Snippet)",
    "   (Color)",
    "   (File)",
    "   (Reference)",
    "   (Folder)",
    "   (EnumMember)",
    "   (Constant)",
    "   (Struct)",
    "   (Event)",
    "   (Operator)",
    "   (TypeParameter)"
}

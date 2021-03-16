local nvim_lsp = require('lspconfig')
local saga = require('lspsaga')

local opt = {
    -- error_sign              = ' ',
    -- warn_sign               = ' ',
    -- hint_sign               = ' ',
    -- infor_sign              = ' ',
    --[[ code_action_icon        = ' ',
    finder_definition_icon  = '  ',
    finder_reference_icon   = '  ',
    definition_preview_icon = '  ',
    border_style            = 1,
    rename_prompt_prefix    = '❱❱', ]]
}

saga.init_lsp_saga(opt)
require('lspkind').init({})

local capability = vim.lsp.protocol.make_client_capabilities()
capability.textDocument.completion.completionItem.snippetSupport = true

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = {"bashls", "clangd", "cssls", "html", "tsserver"}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = capability,
        root_dir = function()
            return vim.loop.cwd()
        end
    }
end

nvim_lsp.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}},
    filetypes = {"go", "gomod"},
    root_dir = function()
        return vim.loop.cwd()
    end,
    capabilities = capability
}

nvim_lsp.pyright.setup {
    root_dir = function()
        return vim.loop.cwd()
    end,
    capabilities = capability

}
nvim_lsp.rust_analyzer.setup({
    on_attach = on_attach,
    capabilities = capability,
    settings = {
        ["rust-analyzer"] = {
            assist = {importMergeBehavior = "last", importPrefix = "by_self"},
            cargo = {loadOutDirsFromCheck = true},
            procMacro = {enable = true}
        }
    }
})

USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

sumneko_root_path = "/home/" .. USER .. "/.cache/nvim/nvim_lsp/lua-language-server"
sumneko_binary = "/home/" .. USER .. "/.cache/nvim/nvim_lsp/lua-language-server/bin/Linux/lua-language-server"
nvim_lsp.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

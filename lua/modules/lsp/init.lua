local nvim_lsp = require('lspconfig')
-- local lsp_completion = require('compe')

USER = vim.fn.expand('$USER')
DATA = vim.fn.stdpath('data')


local capability = vim.lsp.protocol.make_client_capabilities()
capability.textDocument.completion.completionItem.snippetSupport = true

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = {"clangd", "tsserver"}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        capabilities = capability,
        root_dir = function(filename)
            return nvim_lsp.util.root_pattern(".git")(filename) or nvim_lsp.util.path.dirname(filename)
        end
    }
end

nvim_lsp.bashls.setup {cmd = {DATA .. "/lspinstall/bash/node_modules/.bin/bash-language-server", "start"}}

nvim_lsp.gopls.setup {
    cmd = {DATA .. "/lspinstall/go/gopls", "serve"},
    settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}},
    filetypes = {"go", "gomod"},
    root_dir = function(filename)
        return nvim_lsp.util.root_pattern("go.mod", ".git")(filename) or nvim_lsp.util.path.dirname(filename)
    end,
    capabilities = capability
}

nvim_lsp.pyright.setup {
    cmd = {DATA .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
    capabilities = capability,
    root_dir = function(filename)
        return nvim_lsp.util.root_pattern(".git")(filename) or nvim_lsp.util.path.dirname(filename)
    end
}
nvim_lsp.rust_analyzer.setup({
    cmd = {DATA .. '/lspinstall/rust/rust-analyzer'},
    capabilities = (function()
        -- for autoimports
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        capabilities.textDocument.completion.completionItem.resolveSupport = {properties = {'documentation', 'detail', 'additionalTextEdits'}}
        return capabilities
    end)(),
    settings = {["rust-analyzer"] = {assist = {importMergeBehavior = "last", importPrefix = "by_self"}, procMacro = {enable = true}}}
})

nvim_lsp.sumneko_lua.setup {
    -- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    cmd = {DATA .. '/lspinstall/lua/sumneko-lua-language-server'},
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

-- html language server
nvim_lsp.html.setup {
    cmd = {"node", DATA .. "/lspinstall/html/vscode-html/html-language-features/server/dist/node/htmlServerMain.js", "--stdio"},
    filetypes = {
        -- html
        'aspnetcorerazor', 'blade', 'django-html', 'edge', 'ejs', 'erb', 'gohtml', 'haml', 'handlebars', 'hbs', 'html', 'html-eex', 'jade', 'leaf',
        'liquid', 'markdown', 'mdx', 'mustache', 'njk', 'nunjucks', 'php', 'razor', 'slim', 'twig', -- mixed
        'vue', 'svelte'
    },
    capabilities = capability,
    root_dir = function(filename)
        return nvim_lsp.util.root_pattern(".git")(filename) or nvim_lsp.util.path.dirname(filename)
    end
}

nvim_lsp.ccls.setup{
            cmd = {"node", DATA .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js", "--stdio"},
            filetypes = {'css', 'less', 'scss'},
            root_dir = function(filename)
                return nvim_lsp.util.root_pattern(".git")(filename) or nvim_lsp.util.path.dirname(filename)
            end,
            capabilities = capability,

}


local configs = require 'lspconfig/configs'
configs.tailwindcss= {
  default_config = {
            cmd = {"node", DATA .. '/lspinstall/tailwindcss/tailwindcss-intellisense/extension/dist/server/index.js', '--stdio'},
            filetypes = {
                -- html
                'aspnetcorerazor', 'blade', 'django-html', 'edge', 'ejs', 'erb', 'gohtml', 'haml', 'handlebars', 'hbs', 'html', 'html-eex', 'jade',
                'leaf', 'liquid', 'markdown', 'mdx', 'mustache', 'njk', 'nunjucks', 'php', 'razor', 'slim', 'twig', -- css
                'css', 'less', 'postcss', 'sass', 'scss', 'stylus', 'sugarss', -- js
                'javascript', 'javascriptreact', 'reason', 'rescript', 'typescript', 'typescriptreact', -- mixed
                'vue', 'svelte'
            },
            root_dir = function(fname)
                return nvim_lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
            end,
  };
}
nvim_lsp.tailwindcss.setup{}

nvim_lsp.texlab.setup{
    cmd = {DATA .. "/lspinstall/latex/texlab"}
}


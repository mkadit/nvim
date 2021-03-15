local nvim_lsp = require('lspconfig')
local saga = require('lspsaga')
local prt  = require('vim.lsp.protocol')

local opt = {
    -- error_sign              = ' ',
    -- warn_sign               = ' ',
    -- hint_sign               = ' ',
    -- infor_sign              = ' ',
    code_action_icon        = ' ',
    finder_definition_icon  = '  ',
    finder_reference_icon   = '  ',
    definition_preview_icon = '  ',
    border_style            = 1,
    rename_prompt_prefix    = '❱❱',
}

saga.init_lsp_saga(opt)


local capability = vim.lsp.protocol.make_client_capabilities()
capability.textDocument.completion.completionItem.snippetSupport = true
-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "bashls", "clangd"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach , capabilities = capability}
end

nvim_lsp.gopls.setup {
    cmd = {"gopls", "serve"},
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
    filetypes = { "go", "gomod" },
    root_dir = function() return vim.loop.cwd() end
    --[[ root_dir = function(fname)
    return util.root_pattern(".git", 'go.mod')(fname) or
      util.path.dirname(fname)
  end; ]]

}

nvim_lsp.pyright.setup {
        root_dir = function() return vim.loop.cwd() end

}
nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importMergeBehavior = "last",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})

USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

sumneko_root_path = "/home/" .. USER .. "/.cache/nvim/nvim_lsp/lua-language-server"
sumneko_binary = "/home/" .. USER .. "/.cache/nvim/nvim_lsp/lua-language-server/bin/Linux/lua-language-server"
require'lspconfig'.sumneko_lua.setup {
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

local keymap = vim.api.nvim_set_keymap
function _G.show_documentation()
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.cmd('h ' .. vim.fn.expand('<cword>'))
    else
        vim.cmd('lua require("lspsaga.hover").render_hover_doc()')
    end;
end

local opts = { noremap=true, silent=true }
  keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  keymap('n', 'rk',         '<CMD>lua show_documentation()<CR>',                                     { noremap = true, silent = true})
  keymap('n', '<C-j>',     '<CMD>lua require("lspsaga.hover").smart_scroll_hover(1)<CR>',           { noremap = true, silent = true})
  keymap('n', '<C-k>',     '<CMD>lua require("lspsaga.hover").smart_scroll_hover(-1)<CR>',          { noremap = true, silent = true})
  keymap('v', 'ga',        '<CMD>\'<,\'>lua require("lspsaga.codeaction").code_action()<CR>', opts)
  keymap('n', 'ga',        '<CMD>lua require("lspsaga.codeaction").code_action()<CR>', opts)
  keymap('n', 'gk',        '<CMD>lua require("lspsaga.provider").preview_definition()<CR>',         { noremap = true, silent = true})
  keymap('n', 'gD',        '<CMD>lua vim.lsp.util.show_line_diagnostics()<CR>',                     { noremap = true, silent = true})
  keymap('n', '[e',        '<CMD>Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true})
  keymap('n', ']e',        '<CMD>Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true})
  keymap('n', 'rn',        '<CMD>lua require("lspsaga.rename").rename()<CR>',                       { noremap = true, silent = true})
  keymap('n', 'rf', '<CMD>lua vim.lsp.buf.formatting()<CR>',      { noremap = true, silent = true})
  keymap('n', '<leader>p',        '<CMD>lua require("lspsaga.provider").lsp_finder()<CR>',                       { noremap = true, silent = true})


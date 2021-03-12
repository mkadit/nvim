local nvim_lsp = require('lspconfig')
local saga = require('lspsaga')
local prt  = require('vim.lsp.protocol')

local opts = {
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

saga.init_lsp_saga(opts)
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  prt.requireCompletionItemKind = {
		'';   -- Text          = 1;
		'';   -- Method        = 2;
		'ƒ';   -- Function      = 3;
		'';   -- Constructor   = 4;
		'識';  -- Field         = 5;
		'';   -- Variable      = 6;
		'';   -- Class         = 7;
		'ﰮ';   -- Interface     = 8;
		'';   -- Module        = 9;
		'';   -- Property      = 10;
		'';   -- Unit          = 11;
		'';   -- Value         = 12;
		'了';  -- Enum          = 13;
		'';   -- Keyword       = 14;
		'﬌';   -- Snippet       = 15;
		'';   -- Color         = 16;
		'';   -- File          = 17;
		'渚';  -- Reference     = 18;
		'';   -- Folder        = 19;
		'';   -- EnumMember    = 20;
		'';   -- Constant      = 21;
		'';   -- Struct        = 22;
		'鬒';  -- Event         = 23;
		'Ψ';   -- Operator      = 24;
		'';   -- TypeParameter = 25;
	}

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gk', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua vim.lsp.buf.list_workspace_folders()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', 'K',         '<CMD>lua show_documentation()<CR>',                                     { noremap = true, silent = true})
  buf_set_keymap('n', '<C-j>',     '<CMD>lua require("lspsaga.hover").smart_scroll_hover(1)<CR>',           { noremap = true, silent = true})
  buf_set_keymap('n', '<C-k>',     '<CMD>lua require("lspsaga.hover").smart_scroll_hover(-1)<CR>',          { noremap = true, silent = true})
  -- buf_set_keymap('n', 'ga',        '<CMD>lua require("lspsaga.codeaction").code_action()<CR>',              { noremap = true, silent = true})
  buf_set_keymap('v', 'ga',        '<CMD>\'<,\'>lua require("lspsaga.codeaction").code_action()<CR>',       { noremap = true, silent = true})
  buf_set_keymap('n', 'gd',        '<CMD>lua require("lspsaga.provider").preview_definition()<CR>',         { noremap = true, silent = true})
  buf_set_keymap('n', 'gD',        '<CMD>lua vim.lsp.util.show_line_diagnostics()<CR>',                     { noremap = true, silent = true})
  buf_set_keymap('n', '[e',        '<CMD>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_prev()<CR>', { noremap = true, silent = true})
  buf_set_keymap('n', ']e',        '<CMD>lua require("lspsaga.diagnostic").lsp_jump_diagnostic_next()<CR>', { noremap = true, silent = true})
  buf_set_keymap('n', 'rn',        '<CMD>lua require("lspsaga.rename").rename()<CR>',                       { noremap = true, silent = true})
  buf_set_keymap('n', 'rf', '<CMD>lua vim.lsp.buf.formatting()<CR>',      { noremap = true, silent = true})
  buf_set_keymap('n', '<leader>p',        '<CMD>lua require("lspsaga.provider").lsp_finder()<CR>',                       { noremap = true, silent = true})


  -- Set some keybinds conditional on server capabilities
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  elseif client.resolved_capabilities.document_range_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
  end

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)
  end
end

local capability = vim.lsp.protocol.make_client_capabilities()
capability.textDocument.completion.completionItem.snippetSupport = true

-- Use a loop to conveniently both setup defined servers 
-- and map buffer local keybindings when the language server attaches
local servers = { "pyls", "bashls", "clangd"}
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
}

local keymap = vim.api.nvim_set_keymap

function _G.show_documentation()
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.cmd('h ' .. vim.fn.expand('<cword>'))
    else
        vim.cmd('lua require("lspsaga.hover").render_hover_doc()')
    end
end


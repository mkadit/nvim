local keymap = vim.api.nvim_set_keymap

local function set_keybindings()
    local opts = {noremap = true, silent = true}

    local keybindings = {
        -- {'mode', 'keybindings', 'command', '{noremap=bool', 'silent=bool', expr=bool}}

        -- Disable Keys
        {'n', 'Q', '<Nop>', {noremap = true, silent = true}}, {'n', '<C-z>', '<Nop>', {noremap = true, silent = true}}, -- reload configuration

        -- Traverse and sourcing
        {'n', '<Leader>rr', '<CMD>source ~/.config/nvim/init.lua<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>re', '<CMD>e ~/.config/nvim/init.lua<CR>', {noremap = true, silent = false}}, -- Somethign

        -- Find file Root
        {'n', '<Leader>rd', '<CMD>lcd %:p:j<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>rj', '<CMD>Rooter<CR>', {noremap = true, silent = false}},

        -- Misc Things
        {'n', '<Esc><ESC>', '<CMD>nohlsearch<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>ed', '<CMD>setlocal spell! spelllang=en_gb complete+=kspell<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>ei', '<CMD>setlocal spell! spelllang=id_id complete+=kspell<CR>', {noremap = true, silent = false}}, -- resize window

        -- Resizing Panes
        {'n', '<C-Left>', '<CMD>vertical resize +5<CR>', {noremap = true, silent = true}},
        {'n', '<C-Up>', '<CMD>resize -5<CR>', {noremap = true, silent = true}},
        {'n', '<C-Right>', '<CMD>vertical resize -5<CR>', {noremap = true, silent = true}},
        {'n', '<C-Down>', '<CMD>resize +5<CR>', {noremap = true, silent = true}}, 

        -- Session
        {'n', '<Leader>ss', ':SSave<Space>', {noremap = true, silent = true}}, {'n', '<Leader>sl', ':SLoad<Space>', {noremap = true, silent = true}},
        {'n', '<Leader>sc', '<CMD>SClose<CR>', {noremap = true, silent = true}}, 

        -- Buffers
        {'n', '<TAB>', '<CMD>BufferNext<CR>', {noremap = true, silent = true}},
        {'n', '<S-TAB>', '<CMD>BufferPrevious<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qd', '<CMD>BufferClose<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qq', '<CMD>bufdo BufferClose<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qa', '<CMD>bufdo BufferClose!<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qo', '<CMD>BufferCloseAllButCurrent<CR>', {noremap = true, silent = true}},
        {'n', '<A-0>', '<CMD>BufferLast<CR>', {noremap = true, silent = true}}, 
        --[[ {'n', '<C-TAB>', '<CMD>BufferMovePrevious<CR>', {noremap = true, silent = true}},
        {'n', '<C-S-TAB>', '<CMD>BufferMoveNext<CR>', {noremap = true, silent = true}}, ]]

        {'t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true}},

        -- File Tree
        {'n', '<Leader>n', '<CMD>NvimTreeFindFile<CR>', {noremap = true, silent = false}}, 

        -- Fuzzy Finder
        {'n', '<Leader>.', '<CMD>lua require("telescope.builtin").file_browser()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>aa', '<CMD>lua require("telescope.builtin").autocommands()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>fg', '<CMD>lua require("telescope.builtin").bcommits()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gf', '<CMD>lua require("telescope.builtin").git_branches()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gc', '<CMD>lua require("telescope.builtin").commits()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>fq', '<CMD>lua require("telescope.builtin").quickfix()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>bb', '<CMD>lua require("telescope.builtin").buffers()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>ff', '<CMD>lua require("telescope.builtin").find_files()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>ft', '<CMD>lua require("telescope.builtin").treesitter()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>fh', '<CMD>lua require("telescope.builtin").oldfiles()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>fr', '<CMD>lua require("telescope.builtin").live_grep()<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>fp', '<CMD>lua require("telescope").extensions.project.project{}<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>fm', '<CMD>lua require("telescope").extensions.media_files.media_files()<CR>', {noremap = true, silent = false}},

        -- Fugitive
        {'n', '<Leader>gs', '<CMD>G<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gD', '<CMD>GdiffSplit<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gb', '<CMD>GBlam<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gl', '<CMD>Git log<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gj', '<CMD>diffget //2<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gk', '<CMD>diffget //3<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gg', '<CMD>Flogsplit<CR>', {noremap = true, silent = false}},

        -- Tags
        {'n', '<Leader>t', '<CMD>Vista!!<CR>', {noremap = true, silent = false}},

        -- Cheatsheet
        {'n', '<Leader>eh', '<CMD>Cheat<CR>', {noremap = true, silent = false}},

        -- File Manager
        {'n', '<Leader>vi', '<CMD>Vifm<CR>', {noremap = true, silent = false}},

        -- Maximizing Pane
        {'n', '<Leader>m', '<CMD>MaximizerToggle<CR>', {noremap = true, silent = false}}, {'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts},


        -- LSP
        {'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts}, {'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts},
        {'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts},
        {'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts},
        {'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts},
        {'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts},
        {'n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts},
        {'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts}, {'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts},
        {'n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts},
        {'n', 'rk', '<CMD>lua show_documentation()<CR>', {noremap = true, silent = true}},
        {'n', '<C-j>', '<CMD>lua require("lspsaga.hover").smart_scroll_hover(1)<CR>', {noremap = true, silent = true}},
        {'n', '<C-k>', '<CMD>lua require("lspsaga.hover").smart_scroll_hover(-1)<CR>', {noremap = true, silent = true}},
        --[[ {'v', 'ga', '<CMD>\'<,\'>lua require("lspsaga.codeaction").code_action()<CR>', opts},
        {'n', 'ga', '<CMD>lua require("lspsaga.codeaction").code_action()<CR>', opts}, ]]
        {'n', 'gk', '<CMD>lua require("lspsaga.provider").preview_definition()<CR>', {noremap = true, silent = true}},
        {'n', 'gD', '<CMD>lua vim.lsp.util.show_line_diagnostics()<CR>', {noremap = true, silent = true}},
        {'n', '[e', '<CMD>Lspsaga diagnostic_jump_prev<CR>', {noremap = true, silent = true}},
        {'n', ']e', '<CMD>Lspsaga diagnostic_jump_next<CR>', {noremap = true, silent = true}},
        {'n', 'rn', '<CMD>lua require("lspsaga.rename").rename()<CR>', {noremap = true, silent = true}},
        {'n', 're', '<CMD>lua vim.lsp.buf.formatting()<CR>', {noremap = true, silent = true}},
        {'n', '<leader>p', '<CMD>lua require("lspsaga.provider").lsp_finder()<CR>', {noremap = true, silent = true}},

        -- Formatter
        {'n', 'rf', '<CMD>Neoformat<CR>', {noremap = true, silent = true}},

    }
    function _G.show_documentation()
        if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
            vim.cmd('h ' .. vim.fn.expand('<cword>'))
        else
            vim.cmd('lua require("lspsaga.hover").render_hover_doc()')
        end
    end

    vim.api.nvim_exec([[
if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java lua require('jdtls').start_or_attach({cmd = {'java-lsp.sh'}})
    nnoremap ga <Cmd>lua require('jdtls').code_action()<CR>
  augroup end
endif

]], false)

    for _, key in pairs(keybindings) do keymap(key[1], key[2], key[3], key[4]) end
end
vim.cmd('let mapleader=" "')
set_keybindings()

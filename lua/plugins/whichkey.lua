vim.g.which_key_timeout = 100
local wk = require('whichkey_setup')

vim.g.mapleader = ' '
local leader_keymap = {
    ['.'] = {'<CMD>lua require("telescope.builtin").file_browser()<CR>', 'filer'},
    a = {
        name = '+action',
        c = {'<CMD>ColorizerToggle<CR>', 'colorizer'},
        d = {'<CMD>DBUIToggle<CR>', 'Database'},
        e = {'<CMD>setlocal spell! spelllang=en_gb complete+=kspell<CR>', 'spellcheck english'},
        f = {'<CMD>VimadeToggle<CR>', 'fade other pane'},
        h = {'<CMD>Cheat<CR>', 'cheatsheet'},
        i = {'<CMD>setlocal spell! spelllang=id_id complete+=kspell<CR>', 'spellcheck indo'},
        j = {'<CMD>Rooter<CR>', 'to root folder'},
        l = {'<CMD>lua vim.lsp.diagnostic.set_loclist()<CR>', 'Add file diagnostics to loclist'},
        r = {'<CMD>e ~/.config/nvim/init.lua<CR>', 'edit init.lua'},
        s = {'<CMD>source ~/.config/nvim/init.lua<CR>', 'source init.lua'},
        u = {'<CMD>UndotreeToggle<CR>', 'undo tree'},
        w = {'<CMD>lcd %:p:j<CR>', 'to current folder'}
    },
    t = {'<CMD>Vista!!<CR>', 'tagbar'},
    n = {'<CMD>NvimTreeFindFile<CR>', 'file tree'},
    m = {'<CMD>MaximizerToggle<CR>', 'maximizer'},
    p = {'<CMD>lua require("lspsaga.provider").lsp_finder()<CR>', 'lsp finder'},
    v = {'<CMD>Vifm<CR>', 'file manager'},
    f = {
        name = '+find',
        a = {'<Cmd>lua require("telescope.builtin").autocommands()<CR>', 'autocommands'},
        b = {'<Cmd>lua require("telescope.builtin").buffers()<CR>', 'buffers'},
        c = {'<Cmd>lua require("telescope.builtin").commits()<CR>', 'commits'},
        f = {'<Cmd>lua require("telescope.builtin").find_files()<CR>', 'files'},
        g = {'<Cmd>lua require("telescope.builtin").bcommits()<CR>', 'buffer commits'},
        h = {'<Cmd>lua require("telescope.builtin").oldfiles()<CR>', 'file history'},
        l = {'<CMD>lua require("telescope.builtin").loclist()<CR>', 'loclist'},
        L = {'<Cmd>Telescope find_files find_command=rg,--ignore,--hidden,--file<CR>', 'hidden files'},
        m = {'<Cmd>lua require("telescope.builtin").extensions.media_files.media_files()<CR>', 'media files'},
        p = {'<Cmd>lua require("telescope.builtin").extensions.project{}<CR>', 'project'},
        q = {'<Cmd>lua require("telescope.builtin").quickfix()<CR>', 'quickfix'},
        r = {'<Cmd>lua require("telescope.builtin").live_grep()<CR>', 'ripgrep'},
        t = {'<Cmd>lua require("telescope.builtin").treesitter()<CR>', 'treesitter'},
    },
    g = {
        name = '+git',
        s = {'<CMD>G<CR>', 'git status'},
        D = {'<CMD>Gdiffsplit<CR>', 'git diff current file'},
        b = {'<CMD>Gblame<CR>', 'git blame'},
        p = {'<CMD>Gbrowse<CR>', 'open file in remote repo'},
        l = {'<CMD>G log<CR>', 'git log'},
        j = {'<CMD>diffget //2<CR>', 'get left'},
        k = {'<CMD>diffget //k<CR>', 'get left'},
        g = {'<CMD>Flogsplit<CR>', 'commits graph'}
    },
    G = {
        name = '+Gist',
        g = {'<CMD>Gist<CR>', 'create a gist'},
        p = {'<CMD>Gist -p<CR>', 'create a private gist'},
        a = {'<CMD>Gist -a<CR>', 'create a gist anonymously'},
        m = {'<CMD>Gist -m<CR>', 'crete a gist will all buffers'},
        e = {'<CMD>Gist -e<CR>', 'edit current file gist'},
        d = {'<CMD>Gist -d<CR>', 'delete gist'},
        l = {'<CMD>Gist -l<CR>', 'gist list'}
    },

    s = {
        name = '+session',
        s = {'<CMD>SSave<CR>', 'save sesion'},
        l = {'<CMD>SLoad<CR>', 'load session'},
        c = {'<CMD>SClose<CR>', 'close session'},
        d = {'<CMD>SDelete<CR>', 'delete sesion'}
    },
    q = {
        name = '+buffers',
        d = {'<CMD>BufferClose<CR>', 'close buffer'},
        f = {'<CMD>BufferClose<CR>!', 'close buffer force'},
        q = {'<CMD>bufdo BufferClose<CR>', 'close all buffer'},
        a = {'<CMD>bufdo BufferClose<CR>!', 'close all buffer force'},
        o = {'<CMD>BufferCloseAllButCurrent<CR>', 'close all but current buffer'}
    },
    l = {
        name = '+LSP',
        s = {'<CMD>LspStart ', 'start LSP <name>'},
        n = {'<CMD>LspStop<CR>', 'stop LSP'},
        i = {'<CMD>LspInfo<CR>', 'info LSP'},
        r = {'<CMD>LspRestart<CR>', 'restart LSP'}
    },
    z = {
        name = '+neuron',
        n = {'<cmd>lua require"neuron/cmd".new_edit(require"neuron".config.neuron_dir)<CR>', 'new note'},
        f = {'<cmd>lua require"neuron/telescope".find_zettels()<CR>', 'find note'},
        l = {'<cmd>lua require"neuron/telescope".find_zettels{insert = true}<CR>', 'get link'},
        b = {'<cmd>lua require"neuron/telescope".find_backlinks()<CR>', 'find backlinks'},
        t = {'<cmd>lua require"neuron/telescope".find_tags()<CR>', 'find tags'},
        s = {'<cmd>!neuron-ss<CR>', 'take screenshot notes'}
    }
}

wk.register_keymap('leader', leader_keymap)

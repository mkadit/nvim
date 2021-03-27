vim.g.which_key_timeout = 100
local wk = require('whichkey_setup')

vim.g.mapleader = ' '
local keymap = {
    ['.'] = {'<CMD>lua require("telescope.builtin").file_browser()<CR>', 'filer'},
    a = { -- set a nested structure
        name = '+action',
        s = {'<CMD>source ~/.config/nvim/init.lua<CR>', 'source init.lua'},
        r = {'<CMD>e ~/.config/nvim/init.lua<CR>', 'edit init.lua'},
        d = {'<CMD>lcd %:p:j<CR>', 'to current folder'},
        j = {'<CMD>Rooter<CR>', 'to root folder'},
        e = {'<CMD>setlocal spell! spelllang=en_gb complete+=kspell<CR>', 'spellcheck english'},
        i = {'<CMD>setlocal spell! spelllang=id_id complete+=kspell<CR>', 'spellcheck indo'},
        c = {'<CMD>ColorizerToggle<CR>', 'colorizer'},
        f = {'<CMD>VimadeToggle<CR>', 'fade other pane'},
        h = {'<CMD>Cheat<CR>', 'cheatsheet'},
    },
    t = {'<CMD>Vista!!<CR>', 'tagbar'},
    n = {'<CMD>NvimTreeFindFile<CR>', 'file tree'},
    m = {'<CMD>MaximizerToggle<CR>', 'maximizer'},
    p = {'<CMD>lua require("lspsaga.provider").lsp_finder()<CR>', 'lsp finder'},
    v = {'<CMD>Vifm<CR>', 'file manager'},
    f = { -- set a nested structure
        name = '+find',
        a = {'<Cmd>lua require("telescope.builtin").autocommands()<CR>', 'autocommands'},
        b = {'<Cmd>lua require("telescope.builtin").buffers()<CR>', 'buffers'},
        c = {'<Cmd>lua require("telescope.builtin").commits()<CR>', 'commits'},
        f = {'<Cmd>lua require("telescope.builtin").find_files()<CR>', 'files'},
        g = {'<Cmd>lua require("telescope.builtin").bcommits()<CR>', 'buffer commits'},
        h = {'<Cmd>lua require("telescope.builtin").oldfiles()<CR>', 'file history'},
        l = {'<Cmd>Telescope find_files find_command=rg,--ignore,--hidden,--file<CR>', 'hidden files'},
        m = {'<Cmd>lua require("telescope.builtin").extensions.media_files.media_files()<CR>', 'media files'},
        p = {'<Cmd>lua require("telescope.builtin").extensions.project{}<CR>', 'project'},
        q = {'<Cmd>lua require("telescope.builtin").quickfix()<CR>', 'quickfix'},
        r = {'<Cmd>lua require("telescope.builtin").live_grep()<CR>', 'ripgrep'},
        t = {'<Cmd>lua require("telescope.builtin").treesitter()<CR>', 'treesitter'},
        w = {'<Cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', 'quickfix'}
    },
    g = { -- set a nested structure
        name = '+git'
    },
    G = { -- set a nested structure
        name = '+Gist'
    },

    s = { -- set a nested structure
        name = '+session'
    },
    q = { -- set a nested structure
        name = '+buffers'
    },
    z = { -- set a nested structure
        name = '+neuron'
    }
}

wk.register_keymap('leader', keymap)

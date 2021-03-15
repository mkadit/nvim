local keymap = vim.api.nvim_set_keymap

local function set_keybindings()
    local keybindings = {
        -- {'mode', 'keybindings', 'command', '{noremap=bool', 'silent=bool', expr=bool}}

        -- disable keys
        {'n', 'Q', '<Nop>', {noremap = true, silent = true}},
        {'n', '<C-z>', '<Nop>', {noremap = true, silent = true}},

        -- reload configuration
        {'n', '<Leader>rr', '<CMD>source ~/.config/nvim/init.lua<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>re', '<CMD>e ~/.config/nvim/init.lua<CR>', {noremap = true, silent = false}},

-- Somethign
        {'n', '<Leader>rd', '<CMD>lcd %:p:j<CR>', {noremap = true, silent = false}},
        {'n', '<Esc><ESC>', '<CMD>nohlsearch<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>ed', '<CMD>setlocal spell! spelllang=en_gb complete+=kspell<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>ei', '<CMD>setlocal spell! spelllang=id_id complete+=kspell<CR>', {noremap = true, silent = false}},

        -- resize window
        {'n', '<C-Left>', '<CMD>vertical resize +5<CR>', {noremap = true, silent = true}},
        {'n', '<C-Up>', '<CMD>resize -5<CR>', {noremap = true, silent = true}},
        {'n', '<C-Right>', '<CMD>vertical resize -5<CR>', {noremap = true, silent = true}},
        {'n', '<C-Down>', '<CMD>resize +5<CR>', {noremap = true, silent = true}},

        -- Session
        --[[ {'n', '<Leader>ss', ':SessionSave<Space>', {noremap = true, silent = true}},
        {'n', '<Leader>sl', ':SessionLoad<Space>', {noremap = true, silent = true}},
        {'n', '<Leader>sc', '<CMD>Dashboard<CR>', {noremap = true, silent = true}}, ]]

        -- Buffers
        {'n', '<A-l>', '<CMD>BufferNext<CR>', {noremap = true, silent = true}},
        {'n', '<A-h>', '<CMD>BufferPrevious<CR>', {noremap = true, silent = true}},
        {'n', '<A-L>', '<CMD>BufferMovePrevious<CR>', {noremap = true, silent = true}},
        {'n', '<A-H>', '<CMD>BufferMoveNext<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qd', '<CMD>BufferClose<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qq', '<CMD>bufdo BufferClose<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qa', '<CMD>bufdo BufferClose!<CR>', {noremap = true, silent = true}},
        {'n', '<Leader>qo', '<CMD>BufferCloseAllButCurrent<CR>', {noremap = true, silent = true}},
        {'n', '<A-0>', '<CMD>BufferLast<CR>', {noremap = true, silent = true}},

        -- line bubbling
        {'n', '<A-j>', ']e', {noremap = false, silent = true}},
        {'n', '<A-k>', '[e', {noremap = false, silent = true}},

        -- split window
        {'n', '<C-A-k>', '<C-w>t<C-w>K', {noremap = false, silent = true}},
        {'n', '<C-A-h>', '<C-w>t<C-w>H', {noremap = false, silent = true}},

        -- terminal mode
        {'t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true}},

        -- nvim tree.lua
        --[[ {'n', '`', '<CMD>NvimTreeToggle<CR>', {noremap = true, silent = false}},
        {'n', '<A-`>', '<CMD>NvimTreeFindFile<CR>', {noremap = true, silent = false}}, ]]

        -- code formatter
        --[[ {'n', '<Leader>f', '<CMD>FormatWrite<CR>', {noremap = false, silent = false}},
        {'v', '<Leader>f', '<CMD>FormatWrite<CR>', {noremap = false, silent = false}}, ]]

        -- telescope
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

        -- fugitive

        {'n', '<Leader>gs', '<CMD>G<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gD', '<CMD>GdiffSplit<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gb', '<CMD>GBlam<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gl', '<CMD>Git log<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gj', '<CMD>diffget //2<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gk', '<CMD>diffget //3<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>gg', '<CMD>Flogsplit<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>n', '<CMD>Fern . -drawer -toggle -reveal=%<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>t', '<CMD>Vista!!<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>eh', '<CMD>Cheat<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>vi', '<CMD>Vifm<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>rd', '<CMD>lcd %:p:h<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>rk', '<CMD>Rooter<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>m', '<CMD>MaximizerToggle<CR>', {noremap = true, silent = false}},



        -- base64
        --[[ {'v', '<Leader>d6', 'c<C-r>=system(\'base64 -d\', @")<CR><ESC>', {noremap = false, silent = false}},
        {'v', '<Leader>e6', 'c<C-r>=system(\'base64\', @")<CR><ESC>', {noremap = false, silent = false}}, ]]

        -- emmet-vim
        --[[ {'i', '<A-Tab>', '<C-y>,', {noremap = false, silent = false}},
        {'v', '<A-Tab>', '<C-y>,', {noremap = false, silent = false}}, ]]

        -- Delete in search result
        --[[ {'n', '<Leader>x', '<CMD>%s///<CR>', {noremap = false, silent = false}},
 ]]
        -- Search for visually selected text
        -- {'v', '<Leader>v', 'y/\\V<C-R>=escape(@",\'/\\\')<CR><CR>', {noremap = false, silent = false}}

    }

    for _, key in pairs(keybindings) do keymap(key[1], key[2], key[3], key[4]) end
end
vim.cmd('let mapleader=" "')
set_keybindings()

 local keymap = vim.api.nvim_set_keymap

local function set_keybindings()
    local keybindings = {
        -- {'mode', 'keybindings', 'command', '{noremap=bool', 'silent=bool', expr=bool}}
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
        -- {'n', '<Leader>n', '<CMD>NvimTreeToggle<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>eh', '<CMD>Cheat<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>vi', '<CMD>Vifm<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>rd', '<CMD>lcd %:p:h<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>rk', '<CMD>Rooter<CR>', {noremap = true, silent = false}},
        {'n', '<Leader>m', '<CMD>MaximizerToggle<CR>', {noremap = true, silent = false}},
    }

    for _, key in pairs(keybindings) do keymap(key[1], key[2], key[3], key[4]) end
end
set_keybindings()

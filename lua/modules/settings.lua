local function setOptions(options)
    for key, val in pairs(options) do
        if val == true then
            vim.api.nvim_command('set ' .. key)
        elseif val == false then
            vim.api.nvim_command('set no' .. key)
        else
            vim.api.nvim_command('set ' .. key .. '=' .. val)
        end
    end
end

local options = {
    autoindent     = true,
    autoread       = true,
    backspace      = 'indent,eol,start',
    backup         = true,
    backupdir      = '~/.local/share/nvim/backup',
    cmdheight      = 2,
    bg             = 'dark',
    binary         = true,
    bomb           = true,
    clipboard      = 'unnamedplus',
    compatible     = false,
    ttyfast        = true,
    completeopt    = 'menu,menuone,noselect',
    conceallevel   = 0,
    cursorcolumn   = false,
    cursorline     = false,
    encoding       = 'utf-8',
    errorbells     = false,
    expandtab      = true,
    fileencoding   = 'utf-8',
    fileencodings  = 'utf-8',
    fileformat     = 'unix',
    -- fillchars      = 'vert:┃',
    foldexpr       = 'nvim_treesitter#foldexpr()',
    foldlevel      = 0,
    foldmethod     = 'manual',
    formatoptions  = 'jcroql',
    gdefault       = true,
    hidden         = true,
    hlsearch       = true,
    ignorecase     = true,
    inccommand     = 'nosplit',
    incsearch      = true,
    laststatus     = 2,
    lazyredraw     = true,
    linebreak      = true,
    linespace      = 0,
    list           = true,
    -- listchars      = {tab='»-»',nbsp='␣',trail='•',extends='»',precedes='«',eol='↲'},
    mouse          = 'a',
    number         = true,
    pumblend       = 10,
    pumheight      = 15,
    pyxversion     = 3,
    regexpengine   = 1,
    relativenumber = true,
    report         = 2,
    ruler          = true,
    scrolloff      = 5,
    shiftwidth     = 4,
    shortmess      = 'atToOc',
    showcmd        = true,
    showmatch      = true,
    showmode       = false,
    showtabline    = 2,
    sidescrolloff  = 10,
    smarttab       = true,
    smartcase      = true,
    softtabstop    = 4,
    splitbelow     = true,
    splitright     = true,
    startofline    = false,
    swapfile       = false,
    t_Co           = '256',
    tabstop        = 4,
    termguicolors  = true,
    title          = true,
    ttimeoutlen    = 50,
    timeoutlen    =  500,
    undodir        = '~/.local/share/nvim/undo',
    undofile       = true,
    updatetime     = 300,
    visualbell     = false,
    wildmenu       = true,
    wildmode       = 'full',
    wildignore     = '*.class',
    wildoptions    = 'pum',
    winblend       = 0,
    wrap           = true,
    writebackup    = true
}
setOptions(options)

vim.cmd('syntax enable')
require('base16-colorscheme').setup('nord')
-- vim.cmd('colorscheme dracula')
vim.api.nvim_exec([[
set listchars=tab:»\ ,nbsp:␣,trail:•,extends:»,precedes:«,eol:↲
set fillchars=eob:\ ,vert:\|

if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

let g:diff_window = 0
function! DiffToggle()
    if g:diff_window
        diffoff!
        let g:diff_window= 0
    else
        windo diffthis
        let g:diff_window= 1
    endif
endfunction
]], false)

vim.g.doge_enable_mappings = 0
vim.g.rooter_manual_only=1
vim.g.gitgutter_grep = "rg"
vim.g.python3_host_prog = '/usr/bin/python3.9'

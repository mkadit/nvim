
"Plugins folder
call plug#begin('~/.config/nvim/plugged')

Plug 'mhinz/vim-startify'

" {Version Control }
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'
Plug 'rbong/vim-flog'

" {LSP}
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'b3nj5m1n/kommentary'
Plug 'windwp/nvim-autopairs'
Plug 'mfussenegger/nvim-jdtls'
" { Make life easier}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-abolish'
Plug 'wellle/targets.vim'
Plug 'szw/vim-maximizer'
Plug 'blueyed/vim-diminactive'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-cheat.sh'
Plug 'vifm/vifm.vim'
"Plug 'michaeljsmith/vim-indent-object'

 " { Aesthetics }
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lambdalisue/nerdfont.vim'
Plug 'sainnhe/gruvbox-material'
" Plug 'sainnhe/sonokai'
" Plug 'sainnhe/edge'
" Plug 'sainnhe/forest-night'
" Plug 'mhartington/oceanic-next'
"
" {fern}
Plug 'https://github.com/lambdalisue/fern.vim'
Plug 'https://github.com/antoinemadec/FixCursorHold.nvim'
Plug 'https://github.com/lambdalisue/fern-renderer-nerdfont.vim'
Plug 'https://github.com/LumaKernel/fern-mapping-fzf.vim'
" Plug 'https://gthub.com/lambdalisue/fern-hijack.vim'


" { Just in case }
Plug 'dstein64/vim-startuptime'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/LargeFile'
call plug#end()

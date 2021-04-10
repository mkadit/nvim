vim.cmd('packadd packer.nvim')

local packer = require('packer')

packer.init({display = {open_cmd = 'leftabove 80vnew [packer]'}})

packer.startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'shumphrey/fugitive-gitlab.vim'

    use 'airblade/vim-gitgutter'
    use 'rbong/vim-flog'

    -- Gist

    use {'mattn/vim-gist', requires = {'mattn/webapi-vim'}}

    -- Text Objects
    use 'b3nj5m1n/kommentary'
    use 'windwp/nvim-autopairs'
    use 'AndrewRadev/tagalong.vim'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-abolish'
    use 'wellle/targets.vim'

    -- Useful things
    use 'szw/vim-maximizer'
    use 'TaDaa/vimade'
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-cheat.sh'

    -- File Manager
    use 'vifm/vifm.vim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzy-native.nvim',
            'nvim-telescope/telescope-project.nvim',
            'nvim-telescope/telescope-media-files.nvim'

        }
    }

    -- nvim-lsp
    use {
        'neovim/nvim-lspconfig',
        requires = {'glepnir/lspsaga.nvim', 'onsails/lspkind-nvim'}
    }
    use {"mfussenegger/nvim-jdtls"}
    use 'kabouzeid/nvim-lspinstall'
    use 'nvim-lua/lsp_extensions.nvim'

    -- completion
    use {
        "hrsh7th/nvim-compe",
        requires = {
            {
                "hrsh7th/vim-vsnip", "hrsh7th/vim-vsnip-integ",
                "kristijanhusak/vim-dadbod-completion"
            } -- integration with vim-vsnip
        }
    }

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- formatter
    use 'sbdchd/neoformat'

    -- tree explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Aesthetics
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
    use 'romgrk/barbar.nvim'
    use 'liuchengxu/vista.vim'
    use 'lambdalisue/nerdfont.vim'
    use 'sainnhe/sonokai'
    -- use 'sainnhe/edge'
    -- use 'sainnhe/gruvbox-material'
    use 'nekonako/xresources-nvim'
    use 'christianchiarulli/nvcode-color-schemes.vim'

    -- Notetaking via neuron
    use {
        "oberblastmeister/neuron.nvim",
        requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}
    }

    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'

    -- Session and startpage
    use 'mhinz/vim-startify'

    -- Reminder keymaps
    use {
        'AckslD/nvim-whichkey-setup.lua',
        requires = {'liuchengxu/vim-which-key'}
    }

    -- emmet
    use 'mattn/emmet-vim'

    -- autotag
    use 'windwp/nvim-ts-autotag'

    -- undotree
    use 'mbbill/undotree'

    -- database
    use {'kristijanhusak/vim-dadbod-ui', requires = {'tpope/vim-dadbod'}}

    -- etc
    use 'dstein64/vim-startuptime'
    use 'airblade/vim-rooter'
    use 'andweeb/presence.nvim'
    use 'akinsho/nvim-toggleterm.lua'
    use 'lambdalisue/suda.vim'

end)

return packer

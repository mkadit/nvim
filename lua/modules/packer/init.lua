-- vim.cmd('packadd packer.nvim')
local packer = require('packer')

packer.init({display = {open_cmd = 'leftabove 80vnew [packer]'}})

packer.startup(function()
    use 'wbthomason/packer.nvim'

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
	use {
	  "folke/lsp-trouble.nvim",
	  requires = "kyazdani42/nvim-web-devicons",
	}

    -- completion
    use {
        "hrsh7th/nvim-compe",
        requires = {
            {
                "hrsh7th/vim-vsnip", "hrsh7th/vim-vsnip-integ",
                "kristijanhusak/vim-dadbod-completion"
            }
        }
    }

    -- autopair
    use 'windwp/nvim-autopairs'
    use 'AndrewRadev/tagalong.vim'

    -- Comments
    use {
        'b3nj5m1n/kommentary',
        config = require('kommentary.config').configure_language("default", {
            prefer_single_line_comments = true
        })

    }

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Better quickfix
    use 'kevinhwang91/nvim-bqf'

    -- Text Objects
    use 'tpope/vim-surround'
    use 'wellle/targets.vim'

    use 'tpope/vim-repeat'
    use 'tpope/vim-abolish'
    use 'tpope/vim-unimpaired'

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'shumphrey/fugitive-gitlab.vim'
    use 'rbong/vim-flog'

    -- Gist
    use {'mattn/vim-gist', requires = {'mattn/webapi-vim'}}

    -- Useful things
    use 'akinsho/nvim-toggleterm.lua'
    use 'szw/vim-maximizer'

    -- File Manager
    use 'vifm/vifm.vim'

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
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use 'romgrk/barbar.nvim'
    use 'liuchengxu/vista.vim'
    use 'lambdalisue/nerdfont.vim'
    use 'RRethy/nvim-base16'
    -- use 'sainnhe/sonokai'
    use 'nekonako/xresources-nvim'

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

    -- documentation
    use {'kkoomen/vim-doge', run = ":call doge#install()"}

    -- debugger
    use 'mfussenegger/nvim-dap'
    -- etc
    use 'dstein64/vim-startuptime'
    use 'airblade/vim-rooter'
    use 'andweeb/presence.nvim'
    use 'lambdalisue/suda.vim'
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-cheat.sh'
    use 'famiu/nvim-reload'

end)

return packer

-- vim.cmd('packadd packer.nvim')
local packer = require('packer')
local use = packer.use

packer.init({display = {open_cmd = 'leftabove 80vnew [packer]'}})

packer.startup(function()
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzy-native.nvim',
            'nvim-telescope/telescope-media-files.nvim'

        }
    }

    -- nvim-lsp
    use {'neovim/nvim-lspconfig', requires = {'glepnir/lspsaga.nvim'}}
    use {"mfussenegger/nvim-jdtls"}
    use 'kabouzeid/nvim-lspinstall'
    use {"folke/lsp-trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

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
    use 'windwp/nvim-ts-autotag'
    -- use 'AndrewRadev/tagalong.vim'


    -- Comments
    use {
        'b3nj5m1n/kommentary',
        config = require('kommentary.config').configure_language("default", {
            prefer_single_line_comments = true
        })

    }

    -- treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Git
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'shumphrey/fugitive-gitlab.vim'
    use 'rbong/vim-flog'

    -- Gist
    use {'mattn/vim-gist', requires = {'mattn/webapi-vim'}}

    -- Better quickfix
    use 'kevinhwang91/nvim-bqf'

    -- Text Objects
    use 'tpope/vim-surround'
    use 'wellle/targets.vim'

    -- tpope enhancement
    use 'tpope/vim-repeat'
    use 'tpope/vim-unimpaired'

    -- File Manager
    use 'vifm/vifm.vim'

    -- Useful things
    use 'kdav5758/TrueZen.nvim'

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
	use 'sainnhe/sonokai'

    -- Notetaking via neuron
    use {
        "oberblastmeister/neuron.nvim",
        requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}
    }

    -- Colorizer
    -- use {
    --     'norcalli/nvim-colorizer.lua',
    --     config = require'colorizer'.setup {'css', 'javascript', 'html'}
    -- }

    -- Session and startpage
    use 'mhinz/vim-startify'

    -- Reminder keymap
    use 'folke/which-key.nvim'

    -- emmet
    use 'mattn/emmet-vim'

    -- undotree
    use 'mbbill/undotree'

    -- database
    use {'kristijanhusak/vim-dadbod-ui', requires = {'tpope/vim-dadbod'}}

    -- documentation
    use {'kkoomen/vim-doge', run = ":call doge#install()"}

    -- todo
    use 'dhruvasagar/vim-dotoo'

    -- debugger
    use 'mfussenegger/nvim-dap'

    -- rooter
    use 'airblade/vim-rooter'

    -- etc
    use 'dstein64/vim-startuptime'
    use 'lambdalisue/suda.vim'
    use 'RishabhRD/popfix'
    use 'RishabhRD/nvim-cheat.sh'
    use 'famiu/nvim-reload'
    use 'andweeb/presence.nvim'
	use {
		'NTBBloodbath/rest.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}


end)

return packer

vim.cmd('packadd packer.nvim')

local packer = require('packer')

packer.init({
    display = {
        open_cmd = 'leftabove 80vnew [packer]',
    }
})

packer.startup(function()
    use { 'wbthomason/packer.nvim', opt = true }

    -- Git
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'rbong/vim-flog'

    -- Text Objects
    use 'b3nj5m1n/kommentary'
    use 'windwp/nvim-autopairs'
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
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-fzy-native.nvim',
            'nvim-telescope/telescope-project.nvim',
            'nvim-telescope/telescope-media-files.nvim',

        }
    }

    -- nvim-lsp
    use {
        'neovim/nvim-lspconfig',
        requires = {
            'glepnir/lspsaga.nvim',
        }
    }
    use {
      "hrsh7th/nvim-compe",
      requires = {
        { "hrsh7th/vim-vsnip", "hrsh7th/vim-vsnip-integ" }, -- integration with vim-vsnip
      },
    } -- completi
    use { "mfussenegger/nvim-jdtls"}
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	  -- fern
    use {
        'lambdalisue/fern.vim',
        requires = {
							use 'https://github.com/antoinemadec/FixCursorHold.nvim',
							use 'https://github.com/lambdalisue/fern-renderer-nerdfont.vim',
							use 'https://github.com/LumaKernel/fern-mapping-fzf.vim',

        }
    }


    -- Aesthetics
    use { 'glepnir/galaxyline.nvim', branch = 'main', requires = {'kyazdani42/nvim-web-devicons'}}
    use 'romgrk/barbar.nvim'
    use 'liuchengxu/vista.vim'
    use 'lambdalisue/nerdfont.vim'
    use 'sainnhe/sonokai'

    use 'mhinz/vim-startify'
    -- use 'glepnir/dashboard-nvim'
    use 'dstein64/vim-startuptime'
    use 'airblade/vim-rooter'
end)

return packer

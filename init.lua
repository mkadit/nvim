-- General Settings
require('modules.settings')

-- Packer
require('modules.packer.bootstrap')
require('modules.packer')

-- lsp
require('modules.langserver')
require('modules.efm-config')

-- Plugin Settings
require('plugins.formatter')
require('plugins.autopairs')
require('plugins.barbar')
require('plugins.compe')
require('plugins.galaxyline')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.startify')
require('plugins.nvimTree')
require('plugins.neuron')
require('plugins.emmet')
require('plugins.colorizer')
vim.api.nvim_exec([[
source ~/.config/nvim/startify.vim
]], false)

-- Mappings
require('modules.mappings')

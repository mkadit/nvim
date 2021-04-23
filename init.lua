-- Packer
require('modules.packer.bootstrap')
require('modules.packer')

-- General Settings
require('modules.settings')

-- lsp
require('modules.lsp')
require('modules.lsp.efm-config')
require('modules.lsp.lsp-trouble')

-- Plugin Settings
require('plugins.autopairs')
require('plugins.barbar')
require('plugins.colorizer')
require('plugins.compe')
require('plugins.emmet')
require('plugins.formatter')
require('plugins.galaxyline')
require('plugins.neuron')
require('plugins.nvimTSAutotag')
require('plugins.nvimToggleterm')
require('plugins.nvimTree')
require('plugins.presenceNvim')
require('plugins.startify')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.whichkey')

-- Mappings
require('modules.mappings')

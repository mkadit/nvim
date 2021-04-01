-- General Settings
require('modules.settings')

-- Packer
require('modules.packer.bootstrap')
require('modules.packer')

-- lsp
require('modules.lsp')
require('modules.lsp.efm-config')

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
require('plugins.startify')
require('plugins.whichkey')
require('plugins.nvimToggleterm')
require('plugins.presenceNvim')
require('plugins.nvimTSAutotag')
require('plugins.nvimBiscuits')

-- Mappings
require('modules.mappings')

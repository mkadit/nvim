-- Packer
require('modules.packer.bootstrap')
require('modules.packer')

-- General Settings
require('modules.settings')

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
-- Not used for now due to slowness
-- require('plugins.nvimTree')
require('plugins.neuron')
require('plugins.emmet')
require('plugins.colorizer')
require('plugins.whichkey')
require('plugins.nvimToggleterm')
require('plugins.presenceNvim')
require('plugins.nvimTSAutotag')

-- Mappings
require('modules.mappings')

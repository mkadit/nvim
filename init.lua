-- General Settings
require('settings')

-- Packer
require('modules.packer.bootstrap')
require('modules.packer')

-- Plugin Settings
require('plugins.autopairs')
require('plugins.barbar-config')
require('plugins.compe')
require('plugins.galaxyline-config')
require('plugins.nvim-lspconfig')
require('plugins.telescope-config')
require('plugins.treesitter-config')


-- Mappings
require('mappings')

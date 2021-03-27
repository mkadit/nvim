" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["fugitive-gitlab.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/fugitive-gitlab.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  ["nerdfont.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nerdfont.vim"
  },
  ["neuron.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/neuron.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cheat.sh"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-cheat.sh"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["presence.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/presence.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["tagalong.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/tagalong.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vifm.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vifm.vim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-flog"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-flog"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gist"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-gist"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-startuptime"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  vimade = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vimade"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vista.vim"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/webapi-vim"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry

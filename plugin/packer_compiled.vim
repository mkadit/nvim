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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mkadit/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
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
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-base16"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-bqf"
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
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-dap"
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
  ["nvim-reload"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-reload"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/packer.nvim"
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
  ["suda.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/suda.vim"
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
  undotree = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vifm.vim"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vifm.vim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-doge"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-doge"
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
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/mkadit/.local/share/nvim/site/pack/packer/start/vim-which-key"
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

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry


"___  ___ _   __  ___      _ _ _
"|  \/  || | / / / _ \    | (_) |
"| .  . || |/ / / /_\ \ __| |_| |_
"| |\/| ||    \ |  _  |/ _` | | __|
"| |  | || |\  \| | | | (_| | | |_
"\_|  |_/\_| \_/\_| |_/\__,_|_|\__|

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/general.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/startify.vim

""" autocomp
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-j>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-k>     compe#scroll({ 'delta': -4 })

""" Fern
let g:fern#renderer = "nerdfont"


" Change directories
let g:rooter_cd_cmd = 'lcd'
let g:rooter_patterns = ['.git', 'init.vim', 'Makefile', '*.sln', 'build/env.sh', '*.toml', '*.yml', '*.yaml', '*.gradle']


""" luas
luafile ~/.config/nvim/lua/plugins/autopairs.lua
luafile ~/.config/nvim/lua/plugins/compe-map.lua
luafile ~/.config/nvim/lua/plugins/compe.lua
luafile ~/.config/nvim/lua/plugins/nvim-lspconfig.lua
luafile ~/.config/nvim/lua/plugins/telescope-config.lua
luafile ~/.config/nvim/lua/plugins/telescope-map.lua
luafile ~/.config/nvim/lua/plugins/treesitter-config.lua
let g:python3_host_prog = expand('/usr/bin/python3.9')
if has('nvim-0.5')
  augroup lsp
    au!
    au FileType java lua require('jdtls').start_or_attach({cmd = {'java-lsp.sh'}})
  augroup end
endif

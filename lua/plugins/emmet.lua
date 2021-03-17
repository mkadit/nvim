vim.api.nvim_exec([[
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
]],false)

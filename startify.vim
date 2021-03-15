let g:ascii = [
			\'_______  _        _______  ______  __________________',
			\'(       )| \    /\(  ___  )(  __  \ \__   __/\__   __/',
			\'| () () ||  \  / /| (   ) || (  \  )   ) (      ) (   ',
			\'| || || ||  (_/ / | (___) || |   ) |   | |      | |   ',
			\'| |(_)| ||   _ (  |  ___  || |   | |   | |      | |   ',
			\'| |   | ||  ( \ \ | (   ) || |   ) |   | |      | |   ',
			\'| )   ( ||  /  \ \| )   ( || (__/  )___) (___   | |   ',
			\'|/     \||_/    \/|/     \|(______/ \_______/   )_(   ',
			\'
            \']
let g:startify_custom_header = 'startify#center(g:ascii)'

""vim startify sessions
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0


"Map keys
nmap <leader>sc :SClose<CR>
nmap <leader>ss :SSave<Space>
nmap <leader>sl :SLoad<Space>
nmap <leader>sd :SDelete<Space>

" menus
let g:startify_lists = [
          \ { 'type': 'sessions',  'header': ['Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['Bookmarks']      },
          \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.lua' },
            \ ]


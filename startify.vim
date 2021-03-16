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



"  " click enter on [[my_link]] or [[[my_link]]] to enter it
" nnoremap <buffer> <CR> <cmd>lua require'neuron'.enter_link()<CR>

" " create a new note
" nnoremap <buffer> <Leader>zn <cmd>lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>

" " find your notes, click enter to create the note if there are not notes that match
" nnoremap <buffer> <Leader>zf <cmd>lua require'neuron/telescope'.find_zettels()<CR>
" " insert the id of the note that is found
" nnoremap <buffer> <Leader>zF <cmd>lua require'neuron/telescope'.find_zettels {insert = true}<CR>

" " find the backlinks of the current note all the note that link this note
" nnoremap <buffer> <Leader>zb <cmd>lua require'neuron/telescope'.find_backlinks()<CR>
" " same as above but insert the found id
" nnoremap <buffer> <Leader>zB <cmd>lua require'neuron/telescope'.find_backlinks {insert = true}<CR>

" " find all tags and insert
" nnoremap <buffer> <Leader>zt <cmd>lua require'neuron/telescope'.find_tags()<CR>

" " start the neuron server and render markdown, auto reload on save
" nnoremap <buffer> <Leader>zs <cmd>lua require'neuron'.rib {address = "127.0.0.1:8200", verbose = true}<CR>

" " go to next [[my_link]] or [[[my_link]]]
" nnoremap <buffer> gz] <cmd>lua require'neuron'.goto_next_extmark()<CR>
" " go to previous
" nnoremap <buffer> gz[ <cmd>lua require'neuron'.goto_prev_extmark()<CR>]]



 " click enter on [[my_link]] or [[[my_link]]] to enter it
nnoremap <buffer> <CR> <cmd>lua require'neuron'.enter_link()<CR>

" create a new note
nnoremap  <Space>zn <cmd>lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>

" find your notes, click enter to create the note if there are not notes that match
nnoremap  <Space>zf <cmd>lua require'neuron/telescope'.find_zettels()<CR>
" insert the id of the note that is found
nnoremap  <Space>zl <cmd>lua require'neuron/telescope'.find_zettels {insert = true}<CR>

" find the backlinks of the current note all the note that link this note
nnoremap  <Space>zb <cmd>lua require'neuron/telescope'.find_backlinks()<CR>
" same as above but insert the found id
nnoremap  <Space>zB <cmd>lua require'neuron/telescope'.find_backlinks {insert = true}<CR>

" find all tags and insert
nnoremap  <Space>zt <cmd>lua require'neuron/telescope'.find_tags()<CR>

" start the neuron server and render markdown, auto reload on save
nnoremap  <Space>zs <cmd>lua require'neuron'.rib {address = "127.0.0.1:8200", verbose = true}<CR>

" go to next [[my_link]] or [[[my_link]]]
nnoremap <buffer> gz] <cmd>lua require'neuron'.goto_next_extmark()<CR>
" go to previous
nnoremap <buffer> gz[ <cmd>lua require'neuron'.goto_prev_extmark()<CR>]]


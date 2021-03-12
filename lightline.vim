let g:lightline = {
  \	'colorscheme': 'wombat',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['fugitive','readonly'], ['filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['charvaluehex','fileformat', 'fileencoding']]
  \     },
  \	'component_function': {
  \     'fugitive': 'LightlineFugitive',
  \     'readonly': 'LightlineReadonly',
  \     'modified': 'LightlineModified',
  \     'fileformat': 'LightlineFileFormat',
  \     'filetype': 'LightlineFileType',
  \
  \		},
  \'component': {
  \     'lineinfo': ' %3l:%-2v',
  \     'filename': '%<%f'
  \     },
  \ }

let g:lightline.separator = {
\   'left': '', 'right': '',
\}
let g:lightline.subseparator = {
\   'left': '', 'right': '',
\}
" \   'left': [['buffers']],
let g:lightline.tabline = {
\   'left': [['buffers']],
\   'right': [['closed']],
\}
let g:lightline.component_expand = {
\   'buffers': 'lightline#bufferline#buffers',
\}
let g:lightline.component_type = {
\   'buffers': 'tabsel',
\}
let g:lightline#bufferline#enable_nerdfont = 1
let g:lightline#bufferline#shorten_path = 0


vim.g.startify_custom_header = 'startify#center(g:ascii)'

vim.g.ascii = {

    '███╗   ███╗██╗  ██╗ █████╗ ██████╗ ██╗████████╗',
    '████╗ ████║██║ ██╔╝██╔══██╗██╔══██╗██║╚══██╔══╝',
    '██╔████╔██║█████╔╝ ███████║██║  ██║██║   ██║',
    '██║╚██╔╝██║██╔═██╗ ██╔══██║██║  ██║██║   ██║',
    '██║ ╚═╝ ██║██║  ██╗██║  ██║██████╔╝██║   ██║',
    '╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝   ╚═╝'

}

vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_session_delete_buffers = 1
vim.g.startify_session_persistence = 1
vim.g.startify_enable_special = 0

vim.api.nvim_exec(
    'let startify_lists = [ { \'type\': \'sessions\',  \'header\': [\'   Sessions\'] },    { \'type\': \'bookmarks\', \'header\': [\'   Bookmarks\'] },                                                                   ]',
    true)

vim.api.nvim_exec(
    'let startify_bookmarks = [ { \'i\': \'~/.config/nvim/init.lua\' } ]', true)

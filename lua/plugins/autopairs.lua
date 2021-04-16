require('nvim-autopairs').setup({

    pairs_map = {["'"] = "'", ['"'] = '"', ['('] = ')', ['<'] = '>', ['['] = ']', ['{'] = '}', ['`'] = '`'},
    disable_filetype = {"TelescopePrompt"},
    break_line_filetype = nil, -- mean all file type
    check_line_pair = true,
    html_break_line_filetype = {'html', 'vue', 'typescriptreact', 'svelte', 'javascriptreact'},
    ignored_next_char = "%w"

})

local remap = vim.api.nvim_set_keymap
local npairs = require('nvim-autopairs')

-- skip it, if you use another global object
_G.MUtils = {}

vim.g.completion_confirm_key = ""
MUtils.completion_confirm = function()
    if vim.fn.pumvisible() ~= 0 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            vim.fn["compe#confirm"]()
            return npairs.esc("<c-y>")
        else
            vim.api.nvim_select_popupmenu_item(0, false, false, {})
            vim.fn["compe#confirm"]()
            return npairs.esc("<c-n>")
        end
    else
        return npairs.check_break_line_char()
    end
end

remap('i', '<CR>', 'v:lua.MUtils.completion_confirm()', {expr = true, noremap = true})

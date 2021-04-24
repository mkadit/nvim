local M = {}
function M.setup()
    require('jdtls').start_or_attach({
        cmd = {'java-lsp.sh', '/home/mkadit/workspace/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')},
        root_dir = require('jdtls.setup').find_root({'gradle.build', 'pom.xml'})
    })

    -- Utility servers
    local map = function(type, key, value)
        vim.api.nvim_buf_set_keymap(0, type, key, value, {noremap = true, silent = true});
    end
    map('n', '<leader>af', '<cmd>lua require"jdtls".code_action()<CR>')
    -- Diagnostics mapping
    map('n', '<leader>ai', '<Cmd>lua require"jdtls".organize_imports()<CR>')
    map('n', '<leader>av', '<Cmd>lua require("jdtls").extract_variable()<CR>')
    map('v', '<leader>av', '<Esc><Cmd>lua require("jdtls").extract_variable(true)<CR>')
    map('v', '<leader>am', '<Esc><Cmd>lua require("jdtls").extract_method(true)<CR>')
    map('n', '<leader>aF', '<Cmd>lua require("jdtls").code_action(false, "refactor")<CR>')
    map('n', 'ga', '<Cmd>lua require("jdtls").code_action()<CR>')

    -- vim.cmd [[command! -buffer JdtCompile lua require('jdtls').compile()]]
    -- vim.cmd [[command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()]]
    -- vim.cmd [[command! -buffer JdtJol lua require('jdtls').jol()]]
    -- vim.cmd [[command! -buffer JdtBytecode lua require('jdtls').javap()]]
    -- vim.cmd [[command! -buffer JdtJshell lua require('jdtls').jshell()]]
end

return M

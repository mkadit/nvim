--[[ local prettier = {
    function()
        -- return {exe = "prettier", args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'}, stdin = true}
        return {exe = "prettier", args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'}, stdin = true}
    end

}

local white_space = {

    function()
        return {exe = "sed", args = {"-i 's/[ \t]*$//'"}, stdin = true}
    end

}

require('formatter').setup({
    logging = false,
    filetype = {
        rust = {
            -- Rustfmt
            function()
                return {exe = "rustfmt", args = {"--emit=stdout"}, stdin = true}
            end
        },
        lua = {
            -- lua-format
            function()
                return {
                    exe = "lua-format",
                    args = {"-i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb"},
                    -- args = {"-i"},
                    stdin = true
                }
            end
        },
        python = {
            -- autopep8
            function()
                return {exe = "autopep8", args = {"-i", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))}, stdin = true}
            end

        },
        html = prettier,
        htmldjango = prettier,
        css = prettier,
        javascript = prettier,
        java = prettier,
        markdown = prettier,
        text = white_space,
    }
}) ]]

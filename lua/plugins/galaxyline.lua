-- require'nvim-web-devicons'.setup()
local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree', 'vista', 'dbui'}

local colors = {
    bg = '#282c34',
    yellow = '#fabd2f',
    cyan = '#008080',
    darkblue = '#081633',
    green = '#608B4E',
    orange = '#FF8800',
    purple = '#5d4d7a',
    magenta = '#b39DF3',
    grey = '#c0c0c0',
    blue = '#76CCE0',
    red = '#FC5d7C',
    weed = "#BBE67E",
    pink = "#DF8890",
    lightbg = "#3C4048",
    nord = "#81A1C1",
    cream = "#EBCB8B"
}

local buffer_not_empty = function()
    if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then return true end
    return false
end

gls.left[1] = {
    ViMode = {
        provider = function()
            -- auto change color according the vim mode
            local alias = {
                n = 'NORMAL',
                i = 'INSERT',
                c = 'COMMAND',
                V = 'VISUAL',
                [''] = 'VISUAL',
                v = 'VISUAL',
                R = 'REPLACE',
                t = 'TERMINAL'
            }
            local mode_color = {
                n = colors.nord,
                i = colors.cream,
                v = colors.magenta,
                [''] = colors.magenta,
                V = colors.magenta,
                c = colors.weed,
                no = colors.magenta,
                s = colors.orange,
                S = colors.orange,
                [''] = colors.orange,
                ic = colors.weed,
                R = colors.red,
                Rv = colors.red,
                cv = colors.red,
                ce = colors.red,
                r = colors.cyan,
                rm = colors.cyan,
                ['r?'] = colors.cyan,
                ['!'] = colors.red,
                t = colors.red
            }
            vim.api.nvim_command('hi GalaxyViMode guibg=' ..
                                     mode_color[vim.fn.mode()])
            return string.format('   %s ', alias[vim.fn.mode()])
        end,
        separator = ' ',
        separator_highlight = {
            colors.yellow, function()
                if not buffer_not_empty() then return colors.bg end
                return colors.bg
            end
        },
        highlight = {colors.lightbg, colors.bg, 'bold'}
    }
}
gls.left[2] = {
    FileIcon = {
        provider = "FileIcon",
        condition = buffer_not_empty,
        highlight = {
            require("galaxyline.provider_fileinfo").get_file_icon_color,
            colors.bg
        }
    }
}
gls.left[3] = {
    FileName = {
        provider = {"FileName"},
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.bg}
    }
}

gls.left[4] = {
    GitIcon = {
        provider = function() return ' ' end,
        condition = buffer_not_empty,
        highlight = {colors.orange, colors.bg}
    }
}
gls.left[5] = {
    GitBranch = {
        provider = 'GitBranch',
        separator = ' ',
        separator_highlight = {colors.purple, colors.bg},
        condition = buffer_not_empty,
        highlight = {colors.grey, colors.bg}
    }
}

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then return true end
    return false
end

gls.left[6] = {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = checkwidth,
        -- separator = ' ',
        -- separator_highlight = {colors.purple,colors.bg},
        icon = '  ',
        highlight = {colors.green, colors.bg}
    }
}
gls.left[7] = {
    DiffModified = {
        provider = 'DiffModified',
        condition = checkwidth,
        -- separator = ' ',
        -- separator_highlight = {colors.purple,colors.bg},
        icon = '  ',
        highlight = {colors.blue, colors.bg}
    }
}
gls.left[8] = {
    DiffRemove = {
        provider = 'DiffRemove',
        conditio = checkwidth,
        -- separator = ' ',
        -- separator_highlight = {colors.purple,colors.bg},
        icon = '  ',
        highlight = {colors.red, colors.bg}
    }
}
gls.left[9] = {
    LeftEnd = {
        provider = function() return ' ' end,
        separator = ' ',
        separator_highlight = {colors.purple, colors.bg},
        highlight = {colors.purple, colors.bg}
    }
}
gls.left[10] = {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        highlight = {colors.red, colors.bg}
    }
}
gls.left[11] = {Space = {provider = function() return '' end}}
gls.left[12] = {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        icon = '  ',
        highlight = {colors.yellow, colors.bg}
    }
}
gls.left[13] = {
    DiagnosticHint = {
        provider = 'DiagnosticHint',
        icon = '   ',
        highlight = {colors.blue, colors.bg}
    }
}
gls.left[14] = {
    DiagnosticInfo = {
        provider = 'DiagnosticInfo',
        icon = '   ',
        highlight = {colors.orange, colors.bg}
    }
}
gls.right[1] = {
    FileFormat = {
        provider = 'FileFormat',
        separator = ' ',
        separator_highlight = {colors.bg, colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}
gls.right[2] = {
    LineInfo = {
        provider = 'LineColumn',
        separator = ' | ',
        separator_highlight = {colors.darkblue, colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}
gls.right[3] = {
    PerCent = {
        provider = 'LinePercent',
        separator = ' |',
        separator_highlight = {colors.darkblue, colors.bg},
        highlight = {colors.grey, colors.bg}
    }
}
gls.right[4] = {
    ScrollBar = {
        provider = 'ScrollBar',
        highlight = {colors.yellow, colors.purple}
    }
}

gls.short_line_left[1] = {
    LeftEnd = {
        provider = function() return ' ' end,
        separator = ' ',
        separator_highlight = {colors.purple, colors.bg},
        highlight = {colors.purple, colors.bg}
    }
}
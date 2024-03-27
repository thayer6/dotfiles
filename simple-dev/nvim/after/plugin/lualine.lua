
local hide_in_width = function(width)
    return function()
        return vim.fn.winwidth(0) > width
    end
end


local branch = {
    icon = "🌱",
    'branch',
    cond = hide_in_width(80)
}
local diagnostics = {
    'diagnostics',
    sources = {'nvim_diagnostic'},
    cond = hide_in_width(80)
}

local diff = {
    'diff',
    cond = hide_in_width(100)
}
local filetype = {
    'filetype',
    cond = hide_in_width(100)
}
local filename = {
    icon = "📁",
    'filename',
    path = 1
}
local progress = {
    'progress',
    cond = hide_in_width(100)
}
local location = {
    'location',
    cond = hide_in_width(40)
}

local function attached_lsp()
    local clients = vim.lsp.get_active_clients()
    if #clients > 0 then
        return clients[1].name
    end
    return ""
end

local active_lsp = {
    attached_lsp,
    icon = ',',
    cond = function() return #vim.lsp.get_active_clients() > 0 and hide_in_width(100)() end
}

--get pyenv virtual env
local function get_active_pyenv()
  local handle = io.popen("pyenv version-name")
  local result = handle:read("*a")
  handle:close()

  -- Trim the result to remove any trailing whitespace/newline
  result = string.gsub(result, "^%s*(.-)%s*$", "%1")

  return result
end

local active_pyenv = get_active_pyenv()

--word per minute
local wpm = require("wpm")

require'lualine'.setup {
  options = {
    icons_enabled = true,
    -- theme = 'nightfox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {},
    lualine_c = {branch, filename},
    lualine_x = {wpm.historic_graph, diff, diagnostics, {active_pyenv, color={gui='bold'}}, filetype},
    lualine_y = {active_lsp},
    lualine_z = {progress, location}
  },
  inactive_sections = {
    lualine_a = {filename},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {}
}

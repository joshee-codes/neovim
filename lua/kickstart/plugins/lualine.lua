vim.pack.add {
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/nvim-lualine/lualine.nvim',
}

local icon = vim.fn.nr2char
local ICON_VIM = icon(0xE6AE)
local ICON_BRANCH = icon(0xe725)
local ICON_ADDED = icon(0xf457)
local ICON_MODIFIED = icon(0xf459)
local ICON_REMOVED = icon(0xf458)

-- gorgoroth palette
local g = {
  bg = '#000000', -- base00
  bg_alt = '#121212', -- base01
  bg_sel = '#222222', -- base02
  dim = '#333333', -- base03
  muted = '#999999', -- base04
  fg = '#c1c1c1', -- base05
  teal = '#5f8787', -- base08
  tan = '#8c7f70', -- base0A
  beige = '#9b8d7f', -- base0B
  grey = '#888888', -- base0D
  red = '#912222', -- vimichael's diagnostic red, gorgoroth has no red
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = {
      normal = {
        a = { fg = g.bg, bg = g.beige, gui = 'bold' },
        b = { fg = g.fg, bg = g.bg_sel },
        c = { fg = g.muted, bg = g.bg_alt },
      },
      insert = {
        a = { fg = g.bg, bg = g.teal, gui = 'bold' },
        b = { fg = g.fg, bg = g.bg_sel },
        c = { fg = g.muted, bg = g.bg_alt },
      },
      visual = {
        a = { fg = g.bg, bg = g.tan, gui = 'bold' },
        b = { fg = g.fg, bg = g.bg_sel },
        c = { fg = g.muted, bg = g.bg_alt },
      },
      replace = {
        a = { fg = g.fg, bg = g.red, gui = 'bold' },
        b = { fg = g.fg, bg = g.bg_sel },
        c = { fg = g.muted, bg = g.bg_alt },
      },
      command = {
        a = { fg = g.bg, bg = g.muted, gui = 'bold' },
        b = { fg = g.fg, bg = g.bg_sel },
        c = { fg = g.muted, bg = g.bg_alt },
      },
      inactive = {
        a = { fg = g.dim, bg = g.bg_alt, gui = 'bold' },
        b = { fg = g.dim, bg = g.bg_alt },
        c = { fg = g.dim, bg = g.bg_alt },
      },
    },
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '|', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', fmt = function(str) return ICON_VIM .. ' ' .. str end } },
    lualine_b = { { 'branch', icon = { ICON_BRANCH, color = { fg = g.beige } } } },
    lualine_c = {
      {
        'diff',
        colored = true,
        symbols = {
          added = ICON_ADDED .. ' ',
          modified = ICON_MODIFIED .. ' ',
          removed = ICON_REMOVED .. ' ',
        },
      },
      { 'filename', file_status = true, path = 0 },
    },
    lualine_x = { { 'encoding' }, { 'filetype' } },
  },
}

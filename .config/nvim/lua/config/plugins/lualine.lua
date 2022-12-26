require('lualine').setup {
  extensions = {
    'toggleterm',
    'fugitive',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = {
      'encoding',
      'fileformat',
      {
        'filetype',
        icon_only = true,
      },
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        -- path = 1,
      },
    },
    lualine_x = {""},
    lualine_y = {"filetype"},
    lualine_z = {"location"},
  }
}

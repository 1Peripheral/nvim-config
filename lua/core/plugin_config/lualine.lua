require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'jellybeans', 
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}

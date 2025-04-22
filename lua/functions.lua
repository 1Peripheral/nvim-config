vim.api.nvim_set_keymap('n', '<A-,>',
  ':execute "!".input("Command: ")<CR>',
  { noremap = true, silent = true}
)

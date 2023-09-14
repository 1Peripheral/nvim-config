vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

-- Toggle
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- Focus
vim.keymap.set('n', '<c-t>', ':NvimTreeFocus<CR>', { noremap = true})



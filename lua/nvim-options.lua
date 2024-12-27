vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set laststatus=3")

vim.g.mapleader = " "
-- Transparent BG
vim.cmd("hi Normal guibg=NONE ctermbg=NONE");
vim.cmd("hi NormalNc guibg=NONE ctermbg=NONE");

-- Pane navigation 
vim.keymap.set('n', '<S-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<S-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<S-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<S-l>', ':wincmd l<CR>')

-- Split pane vertically
vim.keymap.set('n', '<leader>v', ':vsplit <CR>')

-- Command mode in neovim terminal
vim.cmd("noremap <leader><ESC> <C-\\><C-n>")

-- Remove highlight
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Save current pane 
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Open new tab 
vim.keymap.set('n', '<C-p>', ':tabnew <CR>')

-- Oil navigation
vim.keymap.set('n', '-', '<cmd>Oil<CR>')

-- Switch between tabs
vim.keymap.set("n", "<leader>1", "1gt<CR>", opts)
vim.keymap.set("n", "<leader>2", "2gt<CR>", opts)
vim.keymap.set("n", "<leader>3", "3gt<CR>", opts)
vim.keymap.set("n", "<leader>4", "4gt<CR>", opts)
vim.keymap.set("n", "<leader>5", "5gt<CR>", opts)

-- Brackets auto completion
vim.api.nvim_set_keymap('i', '"', '""<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '\'', '\'\'<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '{', '{}<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true})

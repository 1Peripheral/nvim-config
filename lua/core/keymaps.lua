local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.loader.enable()

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.fillchars = {eob = " "}

-- use spaces for tabs and whatnot
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 3


-- Clear Search Highlight
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Brackets auto completion
vim.api.nvim_set_keymap('i', '"', '""<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '\'', '\'\'<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '{', '{}<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true})
vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true})

-- Quit And Save
vim.keymap.set('n', '<c-s>', ':w<CR>') -- Save
vim.keymap.set('n', '<c-q>', ':wqa<CR>') -- Save and quit

-- Format Files
vim.api.nvim_set_keymap('n', '<F3>', ':lua formatFile()<CR>', { noremap = true, silent = true })
 
-- Run Program
vim.api.nvim_set_keymap('n', '<F6>', ':lua runProgram()<CR>', { noremap = true, silent = true })

-- Insert Mode Navigation
vim.keymap.set('i', '<c-k>', '<Up>') 
vim.keymap.set('i', '<c-j>', '<Down>') 
vim.keymap.set('i', '<c-l>', '<Right>') 
vim.keymap.set('i', '<c-h>', '<Left>') 

-- Navigate Buffers
vim.api.nvim_set_keymap("n", "<S-l>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-h>", ":bprevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)

-- Split Views
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", {noremap = true})

-- Run makefiles
vim.api.nvim_set_keymap("n", "<F5>", ":make<CR>", {noremap = true})



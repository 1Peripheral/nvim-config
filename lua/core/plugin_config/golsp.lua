vim.api.nvim_exec([[
  autocmd FileType go nmap <Leader>df <Plug>(go-def-vertical)
  autocmd FileType go nmap <Leader>db <Plug>(go-doc)
  autocmd FileType go nmap <Leader>ti <Plug>(go-implements)
  autocmd FileType go nmap <Leader>rc <Plug>(go-rename)
  autocmd FileType go nmap <Leader>t  <Plug>(go-test-func)
  autocmd FileType go nmap <Leader>ta <Plug>(go-test)
  autocmd FileType go nmap <Leader>tf <Plug>(go-test-file)
  autocmd FileType go nmap <Leader>tl <Plug>(go-test-last)
  autocmd FileType go nmap <Leader>tn <Plug>(go-test-next)
  autocmd FileType go nmap <Leader>tt <Plug>(go-test-toggle)
  autocmd FileType go nmap <Leader>tF <Plug>(go-test-func-vertical)
  autocmd FileType go nmap <Leader>tT <Plug>(go-test-toggle-pkg)
]], true)

-- LSP configuration
vim.api.nvim_exec([[
  autocmd FileType go nmap gd <Cmd>GoDef<CR>
  autocmd FileType go nmap gr <Cmd>GoRename<CR>
  autocmd FileType go nmap <C-k> <Cmd>GoLspHover<CR>
]], true


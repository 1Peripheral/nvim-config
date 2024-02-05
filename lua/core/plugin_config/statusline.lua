function MyStatusline()
  local file_name = vim.fn.fnamemodify(vim.fn.expand('%'), ':t')
  return '    ' .. file_name .. ' %m%=%l:%c' .. '    '
end

vim.cmd("set statusline=%!luaeval('MyStatusline()')")


local lspconfig = require('lspconfig')
local util = require "lspconfig/util"

require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = {"lua_ls"}
})

local on_attach = function(_, _)
   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
   vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
   vim.keymap.set('n', 'gr', require("telescope.builtin").lsp_references, {})
   vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- Lua lsp
lspconfig.lua_ls.setup {
   on_attach = on_attach
}

lspconfig.java_language_server.setup {
   on_attach = on_attach
}

-- Go lsp
lspconfig.gopls.setup{
   on_attach = on_attach,
   cmd = {"gopls"},
   filetypes = {"go", "gomod", "gowork", "gotmpl"},
   root_dir = util.root_pattern("go.work", "go.mod", ".git"),
   settings = {
      gopls = {
         completeUnimported = true,
         usePlaceholders = true,
         analyses = {
            unusedparams = true,
         }
      },
   },
}

local lspconfig = require('lspconfig')
local util = require "lspconfig/util"

lspconfig.gopls.setup{
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

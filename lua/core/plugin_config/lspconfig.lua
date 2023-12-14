local lspconfig = require('lspconfig')
local util = require "lspconfig/util"

require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = {"lua_ls", "rust_analyzer","jdtls", "clangd", "pyright", "tsserver", "julials"}
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})

-- Lua lsp
lspconfig.lua_ls.setup({})

-- C/C++
lspconfig.clangd.setup({})

lspconfig.jdtls.setup({})

-- Go lsp
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

-- Typescript language server
lspconfig.tsserver.setup({})

-- Python language server
lspconfig.pyright.setup({})

-- Elixir language server
lspconfig.julials.setup({})

-- Rust language server
lspconfig.rust_analyzer.setup({})

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,

    config = function(_, opts)
      local lspconfig = require('lspconfig')
      for server, config in pairs(opts.servers) do
        config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end
    end,

    config = function()
      -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      local lspconfig = require("lspconfig")
      local util = require("lspconfig/util")

      lspconfig.clangd.setup({
        capabilities = capabilities
      })

      lspconfig.rust_analyzer.setup({
        capabilities = capabilities 
      })

      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities
      })

      lspconfig.html.setup({
        capabilities = capabilities
      })

      lspconfig.cssls.setup({
        capabilities = capabilities
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
        filetypes = {"go", "gomod", "gowork", "gotmpl"},
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}

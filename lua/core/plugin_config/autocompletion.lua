local cmp = require('cmp')
cmp.setup({
   mapping = {
      ["<CR>"] = cmp.mapping.confirm { select = true },
      ["<Tab>"] = cmp.mapping(function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
         else
            fallback()
         end
      end, {
      "i",
      "s",
   }),
   ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
         cmp.select_prev_item()
      else
         fallback()
      end
   end, {
   "i",
   "s",
})
   },
   formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
         vim_item.menu = ({
            nvim_lsp = "[LSP]",
            luasnip = "[Snippet]",
            buffer = "[Buffer]",
            path = "[Path]",
         })[entry.source.name]
         return vim_item
      end,
   },
   sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "path" },
   },
   confirm_opts = {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
   },
   window = {
      documentation = {
         border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      },
   },
   experimental = {
      ghost_text = false,
      native_menu = false,
   },

   sources = {
      { name = 'buffer' },
      { name = 'path' },
      { name = 'nvim_lsp' },
   },
})



require 'nvim-treesitter.configs'.setup {
   -- A list of parser names, or "all"
   ensure_installed = {"c", "python", "bash", "cpp", "c_sharp"},

   sync_install = false,
   auto_install = true,
   highlight = {
      enable = true,

   },
   indent = {
      enable = true,
   }
}

return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = 'rafamadriz/friendly-snippets',

  -- use a release tag to download pre-built binaries
  version = '*',
  opts = {
    keymap = { 
      preset = 'default' 
    },

    appearance = {
      nerd_font_variant = 'mono'
    },
    signature = { enabled = true }
  },
}

return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',

  opts = {
    completion = {
      menu = {
        -- Can be quite distracting if enabled.
        -- Manual completion via <C-space> possible.
        auto_show = false
      }
    }
  }
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "lua", "luadoc", "vim", "vimdoc" },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true
    },
    endwise = {
      enable = true
    }
  }
}

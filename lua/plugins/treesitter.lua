return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  lazy = false,
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

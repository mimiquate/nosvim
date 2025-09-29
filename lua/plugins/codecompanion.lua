return {
  "olimorris/codecompanion.nvim",
  version = "17.x.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = {
        adapter = "ollama",
      },
      inline = {
        adapter = "ollama",
      },
      cmd = {
        adapter = "ollama",
      }
    }
  }
}

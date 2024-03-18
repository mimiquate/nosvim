return {
  "tpope/vim-unimpaired",
  event = "VeryLazy",
  keys = {
    {'<C-Up>', '[e', remap = true},
    {'<C-Down>', ']e', remap = true},
    {'<C-Up>', '[egv', mode = 'v', remap = true},
    {'<C-Down>', ']egv', mode = 'v', remap = true}
  }
}

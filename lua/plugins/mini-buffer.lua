return {
  "echasnovski/mini.bufremove",
  version = false,
  opts = {},
  keys = {
    {
      "<leader>bx",
      "<cmd>lua MiniBufremove.delete(0, false)<CR>",
      desc = "Close current buffer",
    },
  },
}

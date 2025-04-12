return {
  "vijhhh2/angular-switch.nvim",
  config = function()
    require("angular-switch").setup()
  end,
  keys = {
    { "<S-A-h>", "<cmd>AsSwitchToHtml<cr>", desc = "Angular Switch to  html" },
    { "<S-A-t>", "<cmd>AsSwitchToTs<cr>", desc = "Angular Switch to  typescript" },
    { "<S-A-c>", "<cmd>AsSwitchToStyles<cr>", desc = "Angular Switch to  styles" },
    { "<S-A-s>", "<cmd>AsSwitchToSpec<cr>", desc = "Angular Switch to  html" },
  },
}

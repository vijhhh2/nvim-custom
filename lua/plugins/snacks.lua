-- lazy.nvim
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    input = {
      -- your input configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    indent = {},
    lazygit =  {},
    dashboard = { example = "chafa"}
  },
  keys = {
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
  }
}

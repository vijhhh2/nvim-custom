return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").add_default_mappings()
    require("leap").set_default_keymaps()
  end,
}

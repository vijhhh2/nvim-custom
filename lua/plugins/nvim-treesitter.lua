return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "angular", "lua", "vim", "vimdoc", "query", "javascript", "html" },
      sync_install = false,
      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = true,
      indent = true,
      highlight = { enable = true, additional_vim_regex_highlighting = false, },
      indent = { enable = true }, 
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Enter>", -- set to `false` to disable one of the mappings
          node_incremental = "<Enter>",
          scope_incremental = nil,
          node_decremental = "<Bs>",
        },
      },
    })
  end
}

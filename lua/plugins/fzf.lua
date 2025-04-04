return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "[F]ind [F]iles in project directory",
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "[F]ind [F]iles by  grepping in project directory",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "[F]ind [F]iles in nvim config",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").helptags()
      end,
      desc = "[F]ind [H]elp",
    },
    {
      "<leader>fk",
      function()
        require("fzf-lua").keymaps()
      end,
      desc = "[F]ind [K]eymaps",
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").builtin()
      end,
      desc = "[F]ind [B]uiltins fzf",
    },
    {
      "<leader>fw",
      function()
        require("fzf-lua").grep_cword()
      end,
      desc = "[F]ind current [W]ord",
    },
    {
      "<leader>fW",
      function()
        require("fzf-lua").grep_cWORD()
      end,
      desc = "[F]ind current [W]ORD",
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").resume()
      end,
      desc = "[F]ind [R]esume",
    },
    {
      "<leader>fd",
      function()
        require("fzf-lua").diagnostics_document()
      end,
      desc = "[F]ind [D]iagnostics",
    },
    {
      "<leader>fo",
      function()
        require("fzf-lua").oldfiles()
      end,
      desc = "[F]ind [O]ldfles",
    },
    {
      "<leader>/",
      function()
        require("fzf-lua").lgrep_curbuf()
      end,
      desc = "[/] Live grep the current buffer",
    },
    {
      "<leader><leader>",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "[F]ind existing [B]uffers",
    },
  },
}

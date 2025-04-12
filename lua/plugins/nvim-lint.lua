return {
  "mfussenegger/nvim-lint",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("lint").linters_by_ft = {
      javascript = { "eslint_d", "cspell" },
      typescript = { "eslint_d", "cspell" },
      typescriptreact = { "eslint_d", "cspell" },
      javascriptreact = { "eslint_d", "cspell" },
      html = { "cspell" },
      css = { "cspell" },
      scss = { "cspell" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.html", "*.css", "*.scss" },
      callback = function()
        require("lint").try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      require("lint").try_lint()
    end, { desc = "Lint current buffer" })
  end,
}

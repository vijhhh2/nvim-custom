vim.keymap.set("n", "-", "<CMD>:Oil --float<CR>", { desc = "Open parent directory" })
vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save current file" })
vim.keymap.set("i", "<C-s>", "<esc>:w<cr>", { desc = "Save current file" })

vim.keymap.set("n", "<leader>q", "<CMD>:q<CR>", { desc = "Close nvim" })
vim.keymap.set("i", "<leader>q", "<esc>:q<CR>", { desc = "Close nvim" })

vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnositics in float" })

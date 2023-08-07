-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>", {})
vim.keymap.set({ "i", "n", "v" }, "<C-c>", "<esc>", {})
vim.keymap.set("n", "<leader>km", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })

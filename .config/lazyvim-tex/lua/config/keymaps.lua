-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>Ccb<CR>", "<CMD>CodeCompanionChat<CR>", { desc = "Open CodeCompanion Chat" })
vim.keymap.set("n", "<leader>Cca<CR>", "<CMD>CodeCompanionActions<CR>", { desc = "Open CodeCompanion Actions" })
vim.keymap.set("n", "<leader>Ccx<CR>", "<CMD>CodeCompanion<CR>", { desc = "Open CodeCompanion" })
vim.keymap.set("n", "<leader>Ccc<CR>", "<CMD>CodeCompanionCmd<CR>", { desc = "Open CodeCompanion CMD" })

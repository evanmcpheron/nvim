-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({ "n", "i" }, "<C-w>", "<Esc>ggVG=<cr>:w<cr>")
vim.keymap.set("n", "<C-a>", "ggVG")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<esc>")
vim.keymap.set("n", "<leader>yap", "Va{", { desc = "Yank around code block" })
vim.keymap.set({ "i", "n" }, "<C-l>", "<C-c>$")
vim.keymap.set({ "i", "n" }, "<C-h>", "<C-c>^")
vim.keymap.set({ "i", "n" }, "<C-d>", "<C-c>Vyp", { desc = "Duplicate line down" })
vim.keymap.set({ "i", "n", "v" }, "<A-BS>", "daw")
vim.keymap.set("n", "<Tab>", "<C-w>w", { noremap = true, silent = true })

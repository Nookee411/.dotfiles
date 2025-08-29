-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- In your keymaps.lua
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })

-- Claude Code keymap
vim.api.nvim_set_keymap("n", "<leader>cq", ":ClaudeCode<CR>", { noremap = true, silent = true })

-- Telescope recent files with Ctrl+P
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope oldfiles<CR>", { noremap = true, silent = true })

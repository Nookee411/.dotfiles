-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- In your keymaps.lua - let mini-animate handle the zz centering
-- vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>", { noremap = true })

-- Claude Code keymap
vim.api.nvim_set_keymap("n", "<leader>cq", ":ClaudeCode <CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<leader>cQ", ":opencode <CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>oc", function()
--   vim.cmd("vsplit")
--   vim.cmd("terminal opencode")
--   vim.cmd("startinsert")
-- end, { desc = "Open opencode in side window" })
vim.keymap.set(
  "n",
  "<leader>oc",
  "<cmd>vsplit | terminal opencode<CR><cmd>startinsert<CR>",
  { desc = "Opencode side window" }
)

-- Telescope recent files with Ctrl+P
vim.api.nvim_set_keymap("n", "<C-p>", ":Telescope oldfiles<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<C-d>",
  [[<Cmd>lua vim.cmd('normal! <C-d>'); MiniAnimate.execute_after('scroll', 'normal! zvzz')<CR>]],
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<C-u>",
  [[<Cmd>lua vim.cmd('normal! <C-u>'); MiniAnimate.execute_after('scroll', 'normal! zvzz')<CR>]],
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>wa", ":wa<CR>", { desc = "Save all buffers" })

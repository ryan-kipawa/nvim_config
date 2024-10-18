-- Use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Set the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then

  local vscode = require('vscode')

  -- General
  vim.opt.number = false
  vim.opt.relativenumber = false
  vim.g.clipboard = vim.g.vscode_clipboard

  -- Keybindings
  local leader = ' '
  vim.keymap.set("n", "<leader><leader>", function() vscode.call("workbench.action.showCommands") end)
  vim.keymap.set("n", "<leader>f", function() vscode.call("workbench.action.quickOpen") end)
  vim.keymap.set("n", "<leader>z", function() vscode.call("workbench.action.toggleZenMode") end)
  vim.keymap.set("n", "<leader>ai", function() vscode.call("workbench.action.chat.open") end)

else
  vim.opt.number = true
  vim.opt.relativenumber = true
end

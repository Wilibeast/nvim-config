require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

--- Mapping for Ctrl + Enter to trigger code action
vim.api.nvim_set_keymap('n', 'ca', '<cmd>lua vim.lsp.buf.code_action()<CR>',
  { noremap = true, silent = true, desc = "Code action" })
vim.api.nvim_set_keymap('n', '<leader>rf', '<cmd>Telescope lsp_references<CR>',
  { noremap = true, silent = true, desc = "References" })

vim.api.nvim_set_keymap('n', '<leader>dt', "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
  { noremap = true, silent = true, desc = "Toggle breakpoint" })
vim.api.nvim_set_keymap('n', '<leader>dc', "<cmd>lua require'dap'.continue()<CR>",
  { noremap = true, silent = true, desc = "Continue" })
vim.api.nvim_set_keymap('n', '<leader>do', "<cmd>lua require'dap'.step_over()<CR>",
  { noremap = true, silent = true, desc = "Step over" })
vim.api.nvim_set_keymap('n', '<leader>di', "<cmd>lua require'dap'.step_into()<CR>",
  { noremap = true, silent = true, desc = "Step into" })
vim.api.nvim_set_keymap('n', '<leader>dm', "<cmd>lua CheckDapStatus()<CR>",
  { noremap = true, silent = true, desc = "Debugger Status" })
vim.api.nvim_set_keymap('n', 'z', ":NoNeckPain<CR>",
  { noremap = true, silent = true, desc = "No neck pain" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

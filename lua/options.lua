require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
vim.wo.relativenumber = true;

vim.cmd[[
  autocmd FileType java setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4
]]

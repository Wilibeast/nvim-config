require('configs')

dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.cmd [[
  augroup lsp
    autocmd!
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
  augroup END
]]

local nvim_tree = require 'nvim-tree'

nvim_tree.setup({
  update_focused_file = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})

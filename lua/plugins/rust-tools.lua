return {
  "simrat39/rust-tools.nvim",
  ft = "rust",
  dependencies = "neovim/nvim-lspconfig",

  opts = function()
    return require "configs.lspconfig"
  end,

  config = function(_, options)
    require("rust-tools").setup(options)
  end,
}

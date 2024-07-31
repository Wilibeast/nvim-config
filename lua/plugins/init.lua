return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust_analyzer",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "configs.custom.lspconfig"
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",

    opts = function ()
      return require "configs.custom.lspconfig"
    end,

    config = function(_,options)
      require('rust-tools').setup(options)
    end
  },
  {
    "mfussenegger/nvim-dap",
  }
}

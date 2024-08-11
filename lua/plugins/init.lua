return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  { --Package manager
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust_analyzer",
      },
    },
  },
  { --Configs for language servers
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  { --Rust plugin
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",

    opts = function()
      return require "configs.lspconfig"
    end,

    config = function(_, options)
      require("rust-tools").setup(options)
    end,
  },
  { -- Flutter plugin
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
  },
  { --Debugger tools
    "mfussenegger/nvim-dap",
  },
}

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
      }
    }
  },
  { --Configs for language servers
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "configs.custom.lspconfig"
    end,
  },
  { --Rust plugin
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
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = true,
  },
  {
    "dart-lang/dart-vim-plugin"
  },
  { --Debugger tools
    "mfussenegger/nvim-dap",
  }
}

local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ['rust_analyzer'] = {
      cargo = {
        allFeatures = true,
      }
    }
  }
})

lspconfig.dartls.setup {
  cmd = { "dart", "language-server", "protocol=lsp" },
  filetypes = { "dart" },
  root_dir = lspconfig.util.root_pattern("pubspec.yaml"),
  settings = {
    dart = {
    }
  }
}


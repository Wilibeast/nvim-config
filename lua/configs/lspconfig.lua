-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- local servers = { "html", "cssls" }
-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = nvlsp.on_attach,
--     on_init = nvlsp.on_init,
--     capabilities = nvlsp.capabilities,
--   }
-- end

-- Servers I want:
-- rust
-- java
-- groovy
-- xml
-- yaml
-- json
-- javascript
-- typescript
-- html
-- tailwind
-- docker / docker compose
-- shell
-- python
-- spectral
lspconfig.rust_analyzer.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.on_init,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern "Cargo.toml",
  settings = {
    ["rust_analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}

lspconfig.jdtls.setup {
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

lspconfig.html.setup {}

-- lspconfig.efm.setup {}

lspconfig.cssls.setup {}

lspconfig.bashls.setup {}

lspconfig.yamlls.setup {}

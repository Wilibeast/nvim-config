return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      css = { "prettier" },
      html = { "superhtml" },
      rust = { "rustfmt" },
      js = { "deno_fmt" },
      xml = { "xmlformatter" },
      yaml = { "yamlfmt" },
    },
  },
}

return {
  "shortcuts/no-neck-pain.nvim",
  lazy = false,
  config = function()
    require("no-neck-pain").setup {
      width = 120,
    }
  end,
}

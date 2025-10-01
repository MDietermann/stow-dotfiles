return {
  { "ellisonleao/gruvbox.nvim" },
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    config = function()
      vim.g.oxocarbon_italics = true
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },
}

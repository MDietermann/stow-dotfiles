return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Snippet engine & its source for nvim-cmp
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- Adds LSP completion capabilities
      "hrsh7th/cmp-nvim-lsp",

      -- Adds file path completion capabilities
      "hrsh7th/cmp-path",

      -- Adds buffer completion capabilities
      "hrsh7th/cmp-buffer",
    },
    event = "InsertEnter",
    config = function()
	require("config.completion").setup()
    end,
  },
}

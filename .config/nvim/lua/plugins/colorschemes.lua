return {
  -- Everforest
  {
    "sainnhe/everforest",
    priority = 1000, -- Ensure it loads first
    config = function()
      -- Set Everforest as the default colorscheme
      vim.g.everforest_background = 'hard' -- or 'soft', 'medium'
      vim.cmd.colorscheme "everforest"
    end,
  },

  -- Tokyonight (another example theme)
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = { style = "storm" }, -- or "moon", "night", "day"
  },

  -- You can add more themes here, for example:
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}

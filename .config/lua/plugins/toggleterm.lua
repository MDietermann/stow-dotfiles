return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    -- The setup call is now simpler. We just pass the table
    -- returned by our configs file directly.
    require('toggleterm').setup(require('config.toggleterm'))
  end,
}

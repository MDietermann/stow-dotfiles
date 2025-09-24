return {
  -- This is the main setting that was not being applied correctly.
  -- It should be a top-level key.
  direction = 'float',

  -- General options
  open_mapping = [[<c-t>]], -- Not strictly needed due to our keymap, but good for consistency
  start_in_insert = true,
  persist_size = true,
  close_on_exit = true,
  shell = vim.o.shell, -- use default shell

  -- Options specifically for floating terminals
  float_opts = {
    border = 'single', -- 'single', 'double', 'rounded', 'shadow', 'curvy'
    width = function()
      return math.floor(vim.o.columns * 0.8)
    end,
    height = function()
      return math.floor(vim.o.lines * 0.8)
    end,
  },

  -- You can still define custom named terminals inside a 'terminals' table
  -- This is the correct way to structure it.
  terminals = {
    -- { aname = "lazygit", cmd = "lazygit", direction = "float", hidden = true },
    -- { aname = "htop", cmd = "htop", direction = "float", hidden = true },
  },
}

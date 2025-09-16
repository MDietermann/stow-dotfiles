require "nvchad.autocmds"

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("RustAceanVimConfig", { clear = true }),
  pattern = "rust",
  callback = function()
    require("configs.rustaceanvim")
  end,
})

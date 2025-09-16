-- lua/configs/rustaceanvim.lua

local mason_registry = require('mason-registry')
local codelldb = mason_registry.get_package("codelldb")

-- Check if the codelldb package exists before trying to access it
if not codelldb or not codelldb:is_installed() then
    return
end

local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
local cfg = require('rustaceanvim.config')

vim.g.rustaceanvim = {
  dap = {
    adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
  },
}

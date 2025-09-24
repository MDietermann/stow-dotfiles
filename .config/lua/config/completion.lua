-- Module responsible for configuring auto-completion
local M = {}

-- Setup function
function M.setup()
	local cmp = require("cmp")
	local luaSnip = require("luasnip")

	-- Every time you press <Tab>, it will jump to the next placeholder in the snippet
	luaSnip.config.setup({})

	cmp.setup({
		preselect = cmp.PreselectMode.Item, -- <— preselect first item
		completion = { completeopt = "menu,menuone,noinsert" },
		window = { documentation = cmp.config.window.bordered() },

		-- Sources for completion
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
		}),
	})
end

return M

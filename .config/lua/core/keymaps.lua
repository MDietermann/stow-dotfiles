-- Local Variables
local telescope = require("telescope.builtin")
local whichkey = require("which-key")
local cmp = require("cmp")
local luasnip = require("luasnip")

whichkey.add({
	-- Find (Telescope)
	{ "<leader>f", group = "Find" },
	{ "<leader>ff", telescope.find_files, desc = "Find File", mode = "n" },
	{ "<leader>fb", telescope.buffers, desc = "Find Buffer", mode = "n" },
	{ "<leader>fg", telescope.live_grep, desc = "Find Grep", mode = "n" },
	{ "<leader>fh", telescope.help_tags, desc = "Find Help Tags", mode = "n" },

	-- File / Session
	{ "<leader>w", "<cmd>w<cr>", desc = "Write (Save)", mode = "n" },
	{ "<leader>q", "<cmd>bdelete<cr>", desc = "Quit (Close Buffer)", mode = "n" },

	-- Window Management
	{ "<leader>s", group = "Split" },
	{ "<leader>sv", "<cmd>vsplit<cr>", desc = "Split Vertical", mode = "n" },
	{ "<leader>sh", "<cmd>split<cr>", desc = "Split Horizontal", mode = "n" },
	{ "<leader>sc", "<cmd>close<cr>", desc = "Split Close", mode = "n" },
	{ "<leader>so", "<cmd>only<cr>", desc = "Split Only (Close Others)", mode = "n" },

	-- Trouble
	{ "<leader>x", group = "Trouble" },
	{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Toggle)", mode = "n" },
	{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Toggle)", mode = "n" },
	{ "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Toggle)", mode = "n" },
	{ "<leader>xd", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / References / ...", mode = "n" },
	{ "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Toggle)", mode = "n" },
	{ "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Toggle)", mode = "n" },

	-- Visual Mode: Move selected lines
	{ "<A-j>", ":m '>+1<CR>gv=gv", desc = "Move Line Down", mode = "v" },
	{ "<A-k>", ":m '<-2<CR>gv=gv", desc = "Move Line Up", mode = "v" },

	-- Autocomplete
	{ "<C-Up>", cmp.mapping.select_prev_item(), mode = "i" },
	{ "<C-Down>", cmp.mapping.select_next_item(), mode = "i" },
	{ "<C-b>", cmp.mapping.scroll_docs(-4), mode = "i"},
	{ "<C-f>", cmp.mapping.scroll_docs(4), mode = "i" },
	{ "<C-e>", cmp.mapping.complete(), mode = "i" },
	{ "<C-c>", cmp.mapping.abort(), mode = "i" },
	{ "<CR>", cmp.mapping.confirm({ select = true }), mode = "i" },

    -- NeoTree
    { "<leader>e", group = "NeoTree" },
    { "<leader>ee", "<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree Explorer", mode = "n" },
    { "<leader>ef", "<cmd>Neotree focus<cr>", desc = "Focus NeoTree Explorer", mode = "n" },
    { "<leader>er", "<cmd>Neotree reveal<cr>", desc = "Reveal Current File", mode = "n" },

    -- ToggleTerm
    { "<leader>t", group = "ToggleTerm" },
    { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Open ToggleTerm", mode = "n" },
    { "<C-t>", "<C-\\><C-n><cmd>ToggleTerm<CR>", desc = "Close ToggleTerm", mode = "t" },
    { "<esc>", "<C-\\><C-n>", mode = "t" },
    { "<C-h>", "<cmd>wincmd h<CR>", mode = "t" },
    { "<C-j>", "<cmd>wincmd j<CR>", mode = "t" },
    { "<C-k>", "<cmd>wincmd k<CR>", mode = "t" },
    { "<C-l>", "<cmd>wincmd l<CR>", mode = "t" },
})

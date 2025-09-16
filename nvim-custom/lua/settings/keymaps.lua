local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move Code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Moves selected Lines down (Visual)" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Moves selected Lines up (Visual)" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Joins the current line with the line below (Normal)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in Buffer with cursor centered (Normal)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up in Buffer with cursor centered (Normal)" })

-- Search
vim.keymap.set("n", "n", "nzzzv", { desc = "Jump to next search result (Normal)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Jump to prev search result (Normal)" })

-- Indentation
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Copy & Paste
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without replacing clipboard" })
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without replacing clipboard (Visual)" })

vim.keymap.set(
	{ "n", "v" },
	"<leader>d",
	[["_d]],
	{ desc = "Delete line without replacing clipboard (Normal, Visual)" }
)

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Exit Insert Mode (Insert)" })
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search Highlight", silent = true })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file (Normal)" })
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Quit file (Normal)" })

-- Explorer
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { desc = "Open File Explorer (Normal)" })

-- Code Formatting
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format Code (Normal)" })
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word on cursor globally" }
)

vim.keymap.set("n", "x", "_x", opts)

-- Execution
vim.keymap.set("n", "<leader>x", "<cmd>!chmod -x %<CR>", { desc = "Makes File executable", silent = true })

-- Highlighting Yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open a new Tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Switch to next Tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Switch to prev Tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current Tab in new Tab" })

-- Split 
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>h", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make Splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Copy Filepath to clipboard
vim.keymap.set("n", "<leader>fp", function()
    local filePath = vim.fn.expand("%:~")       -- Get filePath relative to home dir
    vim.fn.setreg("+", filePath)                -- Copy filePath to clipboard register
    print("Filepath copied to clipboard: " .. filePath)
end, { desc = "Copy File Path to Clipboard" })

-- Disabled Keys
vim.keymap.set("n", "Q", "<nop>")

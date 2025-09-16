return {
    "stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            columns = {  },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-c>"] = false,                  -- Prevents Ctrl+C to close out of oil
                ["<M-h>"] = "actions.select_split",  -- Alt+h To open file in new Split
                ["q"] = "actions.close",             -- Exit Oil
            },
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
            },
            skip_confirm_for_simple_edits = true,
        })

        -- keymaps for oil
        vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open Parent Directory" }) -- opens parent dir over active window
        vim.keymap.set("n", "<leader>E", require("oil").toggle_float, { desc = "Toggle Oil Float" }) -- Opens floating Oil       
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "oil",
            callback = function()
                vim.opt_local.cursorline = true
            end,
        })

    end
}

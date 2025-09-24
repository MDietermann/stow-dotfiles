return {
    "pocco81/auto-save.nvim",
    event = {
        "InsertLeave", "TextChanged"
    },
    opts = {
        enabled = true,
        execution_message = {
            message = function()
                return ("Autosave: " .. vim.fn.strftime("%H:%M"))
            end,
            dim = 0.5,
            cleaning_interval = 1250,
        },
        trigger_events = { "InsertLeave" },
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true,
        },
        debounce_delay = 135
    }
}

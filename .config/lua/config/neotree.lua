local M = {}

function M.setup()
    require("neo-tree").setup({
        window = {
            position = "float"
        }
    })
end
return M

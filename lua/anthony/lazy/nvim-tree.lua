return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        require("nvim-tree").setup({
            update_focused_file = {
                enable = true
            },
            view = {
                side = "right"
            }
        })

        local api = require "nvim-tree.api"
        -- api.tree.open() -- open the tree automatically, do not focus on it though


        -- key bindings
        vim.keymap.set("n", "<C-h>", api.tree.change_root_to_node)
        vim.keymap.set("n", "<C-g>", api.tree.toggle)
    end
}

local M = {
    "nvim-tree/nvim-tree.lua",
    event = "UIEnter",
    dependencies = { },
    opts = function()
        return {
            view = {
                width = 35,
                relativenumber = false,
            },
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    web_devicons = {
                        file = {
                            enable = true,
                            color = true,
                        },
                        folder = {
                            enable = true,
                            color = true,
                        },
                    },
                    git_placement = "before",
                    modified_placement = "after",
                    diagnostics_placement = "signcolumn",
                    bookmarks_placement = "signcolumn",
                    padding = " ",
                    symlink_arrow = " ➛ ",
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                        modified = true,
                        diagnostics = true,
                        bookmarks = true,
                    },
                    glyphs = {
                        folder = { arrow_closed = '', arrow_open = '', },
                    },
                },
            },
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                custom = { ".DS_Store" },
            },
            git = {
                ignore = false,
            },
        }
    end,
    config = function(_, opts)
        -- configure nvim-tree
        local nvimtree = require("nvim-tree")
        nvimtree.setup(opts)

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        ---- change color for arrows in, tree to light blue
        --vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
        --vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])


        -- set keymaps
        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
        vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
    end,
}

return M

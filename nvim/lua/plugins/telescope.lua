local M = {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "nvim-telescope/telescope-project.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    },

    -- change some options
    opts = function()
        local actions = require("telescope.actions")
        local project_actions = require("telescope._extensions.project.actions")

        return {
            defaults = {
                sorting_strategy = "ascending",
                scroll_strategy = "limit",
                layout_strategy = "horizontal",
                layout_config = { width = 0.8, prompt_position = "top" },
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                path_display = { shorten = { len = 2, exclude = { -1, -2, -3 } } },
                wrap_results = false,
                dynamic_preview_title = true,
                file_ignore_patterns = {
                    "node_modules",
                },
                preview = {
                    filesize_limit = 2,
                    timeout = 200,
                },
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-q>"] = function(bufnr)
                            actions.smart_send_to_qflist(bufnr)
                            vim.cmd("TroubleToggle quickfix")
                        end,
                    },
                },
            },
            pickers = {
                buffers = {
                    theme = "dropdown",
                    previewer = false,
                    winblend = 5,
                    path_display = { "smart" },
                    mappings = {
                        i = {
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous,
                            ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
                        }
                    },
                },
            },
        }
    end,
    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)

        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

    end,
}

return M

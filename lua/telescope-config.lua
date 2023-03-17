local telescope = require('telescope')
telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        },
        layout_strategy = 'vertical',
        layout_config = {
            vertical = {
                width = 0.9,
                height = 0.9
            }
        }
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            layout_strategy = 'vertical',
            layout_config = {
                vertical = {
                    width = 0.9,
                    height = 0.9
                }
            }
        },
    },

    extensions = {
        project = {
            base_dirs = {
                -- { path = '~/work/devx/', max_depth = 2 },
                -- { path = '~/work/ghost/', max_depth = 2 },
                -- { path = '~/work/esmir/', max_depth = 2 },
                -- { path = '~/learn/leptos', max_depth = 2 },
                -- { path = '~/learn/rust', max_depth = 10 },
                { path = '~/learn/rust', max_depth = 3 },
                -- { path = '~/.config/nvim', max_depth = 1 }
            },
            hidden_files = false, -- default: false
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = false, -- default false
        }
    }
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension "file_browser"
telescope.load_extension "project"

vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    "<cmd> :Telescope file_browser <CR>",
    { noremap = true }
)

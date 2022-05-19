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
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  "<cmd> :Telescope file_browser <CR>",
  { noremap = true }
)

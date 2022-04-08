local telescope = require('telescope')
telescope.setup {
    defaults = {
      file_ignore_patterns = {
        "node_modules"
      }
    },
    pickers = {
      find_files = {
        theme = "dropdown",
      },
      live_grep = {
        theme = "dropdown",
      },
    },
    extensions = {
      file_browser = {
        theme = "dropdown"
      }
    }
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

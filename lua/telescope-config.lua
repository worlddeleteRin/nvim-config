local telescope = require('telescope')
telescope.setup {
    file_browser = {
      -- use the "ivy" theme if you want
      theme = "dropdown",
    },
    pickers = {
      find_files = {
        theme = "dropdown",
      }
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
telescope.load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser",
  { noremap = true }
)

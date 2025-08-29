-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules/.*",
        "%.git/.*",
        "dist/.*",
        "build/.*",
        "%.lock",
        "%.min%.js",
        "%.map",
      },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/**",
        "--glob=!node_modules/**",
        "--glob=!dist/**",
        "--glob=!build/**",
      },
      layout_strategy = "horizontal",
      layout_config = {
        prompt_position = "top",
      },
      sorting_strategy = "ascending",
    },
    keys = {
      -- Override default keymaps
      { "<C-S-p>", "<cmd>Telescope commands<cr>", desc = "Commands" }, -- Like VSCode's Ctrl+Shift+P
    },
    pickers = {
      live_grep = {
        additional_args = function()
          return { "--hidden", "--glob=!.git/**" }
        end,
      },
      find_files = {
        hidden = true,
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--glob=!.git/**",
          "--glob=!node_modules/**",
        },
      },
    },
  },
}

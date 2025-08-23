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

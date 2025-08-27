return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
_   _  __    __    _____     _____   __  _  __  _____   _______   _       _____    ____    _____
| | / / \ \  / /   |  _  |   |  _  |  \ \| |/ / |  _  | |__   __| | |     |  ___|  |  _ \  |  _  |
| |/ /   \ \/ /    | | | |   | |_| |   \     /  | |_| |    | |    | |___  | |___   | | | | | |_| |
|   (     \  /    _| |_| |_  |  _  |    |   |   |  _  |    | |    |  _  | |  _  |  | | | | |_    |
| |\ \    / /    |  _____  | | | | |   /     \  | | | |    | |    | |_| | | |_| |  | | | |  / /| |
|_| \_\  /_/     |_|     |_| |_| |_|  /_/|_|\_\ |_| |_|    |_|    |_____| |_____|  /_/ |_| /_/ |_|
          ]],
        },
      },
      picker = {
        hidden = true, -- for hidden files
        ignored = true, -- for .gitignore files
        exclude = {
          "**/.DS_Store",
          "**/node_modules/**",
          "**/.nuxt/**",
          "**/.output/**",
          "**/dist/**",
        },
      },
      explorer = {
        hidden = true,
        exclude = {
          "**/.DS_Store",
          "**/node_modules/**",
          "**/.output/**",
          "**/dist/**",
        },
      },
    },
  },
}

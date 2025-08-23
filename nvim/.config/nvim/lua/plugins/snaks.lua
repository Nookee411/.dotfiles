return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true, -- for hidden files
        ignored = true, -- for .gitignore files
        exclude = {
          "**/.DS_Store",
          "**/node_modules/**",
          "**/.nuxt/**",
          "**/output/**",
          "**/dist/**",
        },
      },
      explorer = {
        hidden = true,
        exclude = {
          "**/.DS_Store",
          "**/node_modules/**",
          "**/output/**",
          "**/dist/**",
        },
      },
    },
  },
}

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "html",
      "vue",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "vue",
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = { query = "@function.outer", desc = "Select outer function" },
          ["if"] = { query = "@function.inner", desc = "Select inner function" },
          ["ac"] = { query = "@class.outer", desc = "Select outer class" },
          ["ic"] = { query = "@class.inner", desc = "Select inner class" },
          ["aa"] = { query = "@parameter.outer", desc = "Select outer parameter" },
          ["ia"] = { query = "@parameter.inner", desc = "Select inner parameter" },
          -- Use function textobjects for Vue elements since they map to elements
          ["ae"] = { query = "@function.outer", desc = "Select outer element" },
          ["ie"] = { query = "@function.inner", desc = "Select inner element" },
          ["at"] = { query = "@function.outer", desc = "Select outer tag" },
          ["it"] = { query = "@function.inner", desc = "Select inner tag" },
        },
      },
    },
  },
}

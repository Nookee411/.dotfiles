return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Disable prettier for typescript/javascript, use ESLint instead
        typescript = {},
        typescriptreact = {},
        javascript = {},
        javascriptreact = {},
      },
    },
  },
}

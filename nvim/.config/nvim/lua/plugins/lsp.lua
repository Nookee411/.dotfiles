-- In your LSP config file (e.g., ~/.config/nvim/lua/plugins/lsp.lua)
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              preferences = {
                importModuleSpecifier = "relative",
                includePackageJsonAutoImports = "auto",
              },
              suggest = {
                autoImports = true,
                includeCompletionsForModuleExports = true,
                includeAutomaticOptionalChainCompletions = true,
              },
            },
          },
        },
      },
    },
  },
}

-- In your LSP config file (e.g., ~/.config/nvim/lua/plugins/lsp.lua)
return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "<leader>ce", "<cmd>EslintFixAll<cr>", desc = "ESLint Fix All" },
    },
    opts = {
      servers = {

        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = false },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
              },
              preferences = {
                importModuleSpecifier = "relative",
                includePackageJsonAutoImports = "auto",
              },
              suggest = {
                autoImports = true,
                includeCompletionsForModuleExports = true,
                includeAutomaticOptionalChainCompletions = true,
              },
              tsserver = {
                maxTsServerMemory = 4096,
              },
            },
            vtsls = {
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
            },
          },
        },
        volar = {},
        gopls = {},
      },
      setup = {
        volar = function()
          require("lazyvim.util").lsp.on_attach(function(client, _)
            if client.name == "volar" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
      },
    },
  },
}

-- In your LSP config file (e.g., ~/.config/nvim/lua/plugins/lsp.lua)
return {
  -- {
  --   "williamboman/mason.nvim",
  --   opts = {
  --     ensure_installed = {
  --       "bash-language-server",
  --       "css-lsp",
  --       "eslint-lsp",
  --       "gopls",
  --       "helm-ls",
  --       "html-lsp",
  --       "json-lsp",
  --       "jdtls",
  --       "marksman",
  --       "phpactor",
  --       "typescript-language-server",
  --       "vue-language-server",
  --       "tsserver",
  --       "volar",
  --     },
  --   },
  -- },
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
        volar = {},
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

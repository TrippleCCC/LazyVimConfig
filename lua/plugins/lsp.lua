return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {},
      racket_langserver = {},
      tsserver = {},
      pyright = {},
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            inlayHints = {
              typeHints = {
                enable = false,
              },
              parameterHints = {
                enable = false,
              },
            },
          },
        },
      },
      elixirls = {},
      ocamllsp = {},
      svelte = {},
      gleam = {},
      jdtls = {},
      jsonnet_ls = {},
      zls = {},
      clangd = {},
      -- denols = {},
    },
  },
}

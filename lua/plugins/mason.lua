return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "stylua",
        "tailwindcss-language-server",
        "typescript-language-server",
        "json-lsp",
        "lua-language-server",
        "markdownlint",
        "css-lsp",
      },
    },
  },
}

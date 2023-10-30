local M = {
  "williamboman/mason-lspconfig.nvim",
  -- commit = "e7b64c11035aa924f87385b72145e0ccf68a7e0a",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
}

M.servers = {
  "lua_ls",
  "cssls",
  "html",
  "tsserver",
  "astro",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "marksman",
  "tailwindcss",
}

M.formatters = {
  "prettier", -- prettier formatter
  "stylua", -- lua formatter
  "isort", -- python formatter
  "black", -- python formatter
  "pylint", -- python linter
  "eslint_d", -- js linter
}

function M.config()
  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }
  require("mason-lspconfig").setup {
    ensure_installed = M.servers,
  }
  require("mason-tool-installer").setup {
    ensure_installed = M.formatters,
  }
end

return M

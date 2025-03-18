local mason = {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>\\", "<cmd>Mason<cr>", desc = "Mason" } },
  build = ":MasonUpdate",
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = {
      "rust-analyzer",
      "sqls",
      "gopls"
    }
  }
}

local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {
      filetype = { "rust" }
    },
    ["sqls"] = {
      filetype = { "sql" }
    },
    ["gopls"] = {
      filetype = { "go" }
    }
  },
}

vim.g.autoformat = false

return {
  mason
}

local util = require "conform.util"
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- python = { "ruff_organize_imports" },
      python = function(bufnr)
        if require("conform").get_formatter_info("ruff_format", bufnr).available then
          return { "ruff_format", "ruff_organize_imports", "ruff_fix" }
        else
          return { "isort", "black" }
        end
      end,
    },
    notify_no_formatters = true,
    formatters = {
      -- ruff_organize_imports = {
      --   command = "/home/alexis/.local/bin/ruff run ruff",
      --   args = {
      --     "check",
      --     -- "--force-exclude",
      --     -- "--select=I001",
      --     -- "--fix",
      --     -- "--exit-zero",
      --     -- "--stdin-filename",
      --     -- "$FILENAME",
      --     -- "-",
      --   },
      --   stdin = true,
      --   cwd = util.root_file { -- Ensure `util` is properly required
      --     "pyproject.toml",
      --     "ruff.toml",
      --     ".ruff.toml",
      --   },
      --   require_cwd = true,
      -- },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}

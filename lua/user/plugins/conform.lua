local util = require "conform.util"
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "ruff_organize_imports" },
    },
    formatters = {
      ruff_organize_imports = {
        command = "pipenv run ruff",
        args = {
          "check",
          "--force-exclude",
          "--select=I001",
          "--fix",
          "--exit-zero",
          "--stdin-filename",
          "$FILENAME",
          "-",
        },
        stdin = true,
        cwd = util.root_file { -- Ensure `util` is properly required
          "pyproject.toml",
          "ruff.toml",
          ".ruff.toml",
        } or vim.fn.getcwd(), -- Fallback to current working directory
      },
    },
  },
}

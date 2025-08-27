return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    -- Add proper on_attach function to handle the error
    config.on_attach = function(client, bufnr)
      -- Add this protection to prevent the error
      if not client.supports_method then return end
      
      -- You can add your existing on_attach functionality here if needed
      -- For example: buffer-local keymappings, formatting on save, etc.
    end

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
}

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    [":"] = { ";" },
    [";"] = { ":" },
    ["<bs>"] = { "<c-^>", desc = "Go to previous buffer" },
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
    -- -- Show help actions with telescope
    --
    -- ["<leader>cch"] = {
    --   function()
    --     local actions = require "CopilotChat.actions"
    --     require("CopilotChat.integrations.telescope").pick(actions.help_actions())
    --   end,
    --   desc = "CopilotChat - Help actions",
    -- },
    -- -- Show prompts actions with telescope
    -- ["<leader>ccp"] = {
    --   function()
    --     local actions = require "CopilotChat.actions"
    --     require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
    --   end,
    --   desc = "CopilotChat - Prompt actions",
    -- },
    s = {
      require("substitute").operator,
      noremap = true,
    },
    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  i = {
    -- ["kj"] = { "<esc>"},
    ["JK"] = { "<esc>" },
    -- ["JJ"] = { "<esc>"},
    -- ["KJ"] = { "<esc>"},
  },
  v = {
    -- setting a mapping to false will disable it
    ["<F5>"] = { ":w !clip.exe<CR><CR>" },
    -- ["<esc>"] = false,
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

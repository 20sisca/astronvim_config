return {
  "ThePrimeagen/harpoon",
  keys = {
    { "ma", function() require("harpoon.ui").nav_file(4) end },
    { "ms", function() require("harpoon.ui").nav_file(3) end },
    { "md", function() require("harpoon.ui").nav_file(2) end },
    { "mf", function() require("harpoon.ui").nav_file(1) end },
    { "ml", function() require("harpoon.mark").add_file() end },
    { "mt", function() require("harpoon.ui").toggle_quick_menu() end },
  },
  --   { "<leader>ze", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
  --   { "<leader>zt", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
  --   {
  --     "<leader>zT",
  --     "<cmd>CopilotChatVsplitToggle<cr>",
  --     desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
  --   },
  --   {
  --     "<leader>zv",
  --     ":CopilotChatVisual ",
  --     mode = "x",
  --     desc = "CopilotChat - Open in vertical split",
  --   },
  --   {
  --     "<leader>zx",
  --     ":CopilotChatInPlace<cr>",
  --     mode = "x",
  --     desc = "CopilotChat - Run in-place code",
  --   },
  --   {
  --     "<leader>zf",
  --     "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
  --     desc = "CopilotChat - Fix diagnostic",
  --   },
  --   {
  --     "<leader>zr",
  --     "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
  --     desc = "CopilotChat - Reset chat history and clear buffer",
  --   },
  -- },
  -- See Commands section for default commands if you want to lazy load on them
}

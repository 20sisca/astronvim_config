-- Define highlight groups in Lua
vim.api.nvim_set_hl(0, "DiffAdd", { gui = "none", guifg = "NONE", guibg = "#bada9f" })
vim.api.nvim_set_hl(0, "DiffChange", { gui = "none", guifg = "NONE", guibg = "#e5d5ac" })
vim.api.nvim_set_hl(0, "DiffDelete", { gui = "bold", guifg = "#ff8080", guibg = "#ffb0b0" })
vim.api.nvim_set_hl(0, "DiffText", { gui = "none", guifg = "NONE", guibg = "#8cbee2" })

return { -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  DiffviewDiffAdd = { fg = "NONE", bg = "#042806" },
  -- DiffAdd = { fg = "#042806", bg = "#042806" },
  DiffviewDiffChange = { fg = "NONE", bg = "#042806" },
  DiffviewDiffChange = { fg = "#042806", bg = "#042806" },
  DiffviewDiffText = { fg = "NONE", bg = "#042806" },
}

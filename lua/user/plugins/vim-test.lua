vim.lsp.buf.execute_command { command = "_typescript.organizeImports", arguments = { vim.fn.expand "%:p" } }
local g = vim.g
g["test#python#runner"] = "djangotest"
g["test#python#djangotest#executable"] = "docker-compose run --rm shell test --keepdb"
g["test#project_root"] = "/home/alexis/bsport-django/"
g["test#strategy"] = "neovim"
g["g:test#preserve_screen"] = 0
if vim.fn.has "nvim" == 1 then vim.api.nvim_set_keymap("t", "<C-o>", "<C-\\><C-n>", { noremap = true }) end

return {
  "vim-test/vim-test",
  keys = {
    { "<leader>tn", "<cmd>TestNearest<cr>", desc = "Test nearest" },
    { "<leader>tl", "<cmd>TestLast<cr>", desc = "Test last" },
    { "<leader>tf", "<cmd>TestFile<cr>", desc = "Test file" },
    { "<leader>tc", "<cmd>TestClass<cr>", desc = "Test class" },
  },
}

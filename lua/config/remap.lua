vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<cr>",
  {silent = true, noremap = true}
)

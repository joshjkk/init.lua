vim.g.mapleader = " "

vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<cr>",
    {silent = true, noremap = true}
)

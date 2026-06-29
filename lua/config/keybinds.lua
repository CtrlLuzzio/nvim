vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ":Lexplore<CR>", { silent = true, desc = "Toggle Explorer" })

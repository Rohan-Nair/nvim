vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>pv", "<cmd>Ex <CR>")
vim.keymap.set("n", "<leader>ff", "<cmd>Oil .<CR>")
vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":.lua<CR>")

-- remaps
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "B", "%")
vim.keymap.set("n", "<leader>n", "*", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>N", "#", { noremap = true, silent = true })

vim.keymap.set("n", "`", "`zz", { noremap = true, silent = true })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>lsp", "<cmd>LspRestart<cr>")

vim.keymap.set("n", "<C-j>", "<C-e>")
vim.keymap.set("n", "<C-k>", "<C-y>")

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})

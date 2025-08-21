vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.nu = true
vim.o.rnu = true

vim.keymap.set("n", "<leader><leader>", "<cmd>source %<CR>")
vim.keymap.set("n", "<leader>pv", "<cmd>Ex <CR>")

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "B", "%")

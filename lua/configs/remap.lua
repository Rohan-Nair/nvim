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

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<leader>lsp", "<cmd>LspRestart<cr>")

vim.keymap.set("n", "<C-j>", "<C-e>")
vim.keymap.set("n", "<C-k>", "<C-y>")

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.api.nvim_create_user_command("Q", "q", {})

-- golang snippets
vim.keymap.set(
  "n",
  "<leader>ee",
  "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set(
  "n",
  "<leader>ea",
  "oassert.NoError(err, \"\")<Esc>F\";a"
)

vim.keymap.set(
  "n",
  "<leader>ef",
  "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
)

vim.keymap.set(
  "n",
  "<leader>el",
  "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
)

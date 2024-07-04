-- paste without overwriting default register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- yank line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- rename a symbol
vim.keymap.set({ "n", "v" }, "<leader>rn", vim.lsp.buf.rename)

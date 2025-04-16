local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

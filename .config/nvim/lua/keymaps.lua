local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- telescope
map("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)

-- navigate throw tabs
map("n", "tn", "<cmd>:BufferLineCycleNext<cr>", opts)
map("n", "tp", "<cmd>:BufferLineCyclePrev<cr>", opts)

-- tree explorer
map("n", "<leader>e", "<cmd>:Neotree toggle position=bottom<cr>", opts)

-- rewrites
vim.keymap.set("n", "<leader>wh", "<C-w>h", opts)
vim.keymap.set("n", "<leader>wl", "<C-w>l", opts) 

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>", { desc = "Clear search highlight" })


local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- telescope
map("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>s", "<cmd>Telescope lsp_document_symbols<cr>", opts)
map("n", "<leader>d", "<cmd>Telescope diagnostics<cr>", opts)

-- vim default
map("n", "<leader>df", "<cmd>:lua vim.diagnostic.open_float()<cr>", opts)

-- tree explorer
map("n", "<leader>e", "<cmd>:Neotree toggle position=bottom<cr>", opts)

-- rewrites
map("n", "<leader>wh", "<C-w>h", opts)
map("n", "<leader>wl", "<C-w>l", opts) 

map("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>", { desc = "Clear search highlight" })

-- resize
map("n", "<C-Up>", "<cmd>resize+2<cr>")
map("n", "<C-Down>", "<cmd>resize-2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize-2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize+2<cr>")

-- bindings
map("n", "<leader>w", "<cmd>w!<cr>")
map("n", "<leader>q", "<cmd>q!<cr>")
map("n", "<leader>c", "<cmd>bd<cr>")
map("n", "<leader>s", "<cmd>vsplit<cr>")
map("n", "<leader>h", "<cmd>split<cr>")

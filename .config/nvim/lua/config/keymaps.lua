local setmap = vim.keymap.set
local telescope = require('telescope.builtin')

setmap('n', '<leader>ff', telescope.find_files, { desc = 'Telescope find files' })
setmap('n', '<leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
setmap('n', '<leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
setmap('n', '<leader>fh', telescope.help_tags, { desc = 'Telescope help tags' })

setmap('n', '<leader>q', '<CMD>:quit<CR>', { desc = 'Quit' })
setmap('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true })
setmap('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })

setmap('n', '<leader>wl', '<C-w>l', { noremap = true, silent = true })
setmap('n', '<leader>wh', '<C-w>h', { noremap = true, silent = true })
setmap('n', '<leader>wj', '<C-w>j', { noremap = true, silent = true })
setmap('n', '<leader>wk', '<C-w>k', { noremap = true, silent = true })


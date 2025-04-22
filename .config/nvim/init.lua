require("lazy-config")
require("keymaps")
require("configs")
require("editor")
require("lsp")

vim.api.nvim_create_autocmd({ "BufReadPost", "BufEnter", "BufWritePost" }, {
   callback = function()
     require("lint").try_lint()
   end,
 })

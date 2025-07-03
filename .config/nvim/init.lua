require("lazy-config")
require("keymaps")
require("configs")
require("editor")
require("lsp")
require("lualine-config")

vim.api.nvim_create_autocmd({ "BufReadPost", "BufEnter", "BufWritePost" }, {
   callback = function()
     require("lint").try_lint()
   end,
})

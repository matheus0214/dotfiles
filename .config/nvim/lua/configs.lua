require("mason").setup()

require('lualine').setup({ options = { theme = "palenight" }})

require("neo-tree").setup({
  window = {
    position = "bottom",
    width = 40,
    height = "40%",
  }
})

require("nvim-treesitter.configs").setup{
    ensure_installed = {"c", "javascript", "typescript", "go"}
}

require("conform").setup{
    auto_install = true,
    formatters_by_ft = {
        go = {"goimports", "gofmt", "gofumpt"},
        -- c = {"clang_format"},
        typescript = {"biome"},
        javascript = {"biome"}
    },
    format_on_save = true
}

require("noice").setup{}
require("mason-null-ls").setup({
     ensure_installed = { "goimports", "gofumpt", "staticcheck", "clang-format", "cpplint", "biome"}
 })
 
 require('lint').linters_by_ft = {
   go = {'staticcheck'},
   typescript = {"biomejs"},
   javascript = {"biomejs"},
   -- c = {"cpplint"}
 }
vim.cmd('colorscheme habamax')

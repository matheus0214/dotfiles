
require("lualine").setup{}

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
        typescript = {"biome"},
        javascript = {"biome"},
        c = {"clang_format"}
    },
    format_on_save = true
}

require("mason-null-ls").setup({
    ensure_installed = { "goimports", "gofumpt", "staticcheck", "clang-format", "cpplint", "biome"}
})

require('lint').linters_by_ft = {
  go = {'staticcheck'},
  typescript = {"biomejs"},
  javascript = {"biomejs"},
  c = {"cpplint"}
}
require("noice").setup{}
vim.cmd('colorscheme tokyonight')

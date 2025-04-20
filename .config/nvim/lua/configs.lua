local cmp = require("cmp")
require("mason").setup()

require("neo-tree").setup({
  window = {
    position = "bottom",
    width = 40,
    height = "40%",
  }
})

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
  }),
  sources = {
    { name = "path" },
    { name = "buffer" },
  },
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

require("noice").setup{}

vim.cmd('colorscheme tokyonight-night')

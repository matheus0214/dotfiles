require("mason").setup()
require("minimaline").setup({})

require("neo-tree").setup()

require("nvim-treesitter.configs").setup{
    ensure_installed = {"javascript", "typescript"}
}

require("conform").setup{
    auto_install = true,
    formatters_by_ft = {
        typescript = {"biome"},
        javascript = {"biome"}
    },
    format_on_save = true
}

require("mason-null-ls").setup({
     ensure_installed = { "biome"}
})
 
require('lint').linters_by_ft = {
   typescript = {"biomejs"},
   javascript = {"biomejs"},
}

vim.cmd('colorscheme tender')

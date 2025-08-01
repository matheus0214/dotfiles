require("mason").setup()

require("neo-tree").setup()

require("nvim-treesitter.configs").setup{
    ensure_installed = {"javascript", "typescript"}
}

require("conform").setup{
    auto_install = true,
    formatters_by_ft = {
        typescript = {"biome"},
        javascript = {"biome"},
        odin = { "odinfmt" },
    },
    format_on_save = true
}

require("mason-null-ls").setup({
     ensure_installed = { "biome", "odinfmt"}
})
 
require('lint').linters_by_ft = {
   typescript = {"biomejs"},
   javascript = {"biomejs"},
}

vim.cmd('colorscheme catppuccin')

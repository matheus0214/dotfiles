return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		}
	},
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("gitsigns").setup {
                numhl = true,
                current_line_blame = true,
            }
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end,
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        config = function()
            require('render-markdown').setup({})
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
        event = "InsertEnter",
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                completion = {
                    completeopt = "menu,menuone,noselect"
                },
                snippet = {
                    expand = function(_) end, -- não usamos snippets aqui
                },
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "path" },
                    { name = "buffer" },
                }),
            })
        end,
    },
    {
        "catppuccin/nvim",
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    }
}

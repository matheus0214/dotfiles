-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
	{"nvim-telescope/telescope.nvim"},
	{"nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
  		dependencies = {
		    "nvim-lua/plenary.nvim",
		    "MunifTanjim/nui.nvim",
	  	},
		lazy = false,
	},
    {"hrsh7th/nvim-cmp", event = "InsertEnter",dependencies = {
         "hrsh7th/cmp-nvim-lsp",
         "hrsh7th/cmp-buffer",
         "hrsh7th/cmp-path",
         "L3MON4D3/LuaSnip",
         "saadparwaiz1/cmp_luasnip",
         "onsails/lspkind.nvim"
       }
     },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"stevearc/conform.nvim"},
    {"neovim/nvim-lspconfig"},
    {"williamboman/mason.nvim", build = ":MasonUpdate", config = true},
    {"williamboman/mason-lspconfig.nvim"},
    {"jay-babu/mason-null-ls.nvim", event = {"BufReadPre", "BufNewFile" }, dependencies = { "nvimtools/none-ls.nvim"} },
    {"mfussenegger/nvim-lint"},
    {"xiyaowong/transparent.nvim"},
    {"nvim-tree/nvim-web-devicons"},
    {"catppuccin/nvim"},
    {"windwp/nvim-autopairs"}
})

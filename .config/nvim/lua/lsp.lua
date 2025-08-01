local lspconfig = require("lspconfig")
 local cmp = require("cmp")
 local luasnip = require("luasnip")
 local mason = require("mason")
 local mason_lspconfig = require("mason-lspconfig")
 local lspkind = require("lspkind")
 
 -- Setup Mason
mason.setup()
mason_lspconfig.setup({
   ensure_installed = { "biome", "ts_ls", "ols" },
})
-- "clangd", 
 
 -- Setup capabilities for nvim-cmp
 local capabilities = require("cmp_nvim_lsp").default_capabilities()
 
 -- Setup LSP servers
 mason_lspconfig.setup_handlers({
   function(server_name)
     lspconfig[server_name].setup({
       capabilities = capabilities,
     })
   end
 })
 
 -- Setup nvim-cmp
 cmp.setup({
    formatting = {
     format = lspkind.cmp_format({
       mode = "symbol_text", -- "symbol" or "text" or "symbol_text"
       maxwidth = 50,        -- truncate long entries
       ellipsis_char = "...",
     }),
   },
   snippet = {
     expand = function(args)
       luasnip.lsp_expand(args.body)
     end,
   },
   mapping = cmp.mapping.preset.insert({
     ["<C-Space>"] = cmp.mapping.complete(),
     ["<CR>"] = cmp.mapping.confirm({ select = true }),
     ["<Tab>"] = cmp.mapping.select_next_item(),
     ["<S-Tab>"] = cmp.mapping.select_prev_item(),
   }),
   sources = {
     { name = "nvim_lsp" },
     { name = "luasnip" },
     { name = "buffer" },
     { name = "path" },
   },
 })

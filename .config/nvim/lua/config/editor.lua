local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g

-- Interface
o.number = true
o.relativenumber = true
o.cursorline = true
o.cursorlineopt = "both"
o.signcolumn = "yes" -- sempre mostrar coluna de ícones (diagnósticos, git, etc)
o.termguicolors = true
o.showmode = false -- não mostrar -- INSERT -- (plugins como lualine já mostram isso)
o.laststatus = 3 -- usar uma única barra de status global
o.wrap = false -- não quebrar linhas longas

-- Tabs e indentação
o.expandtab = true -- converte TAB em espaços
o.tabstop = 4
o.shiftwidth = 4
o.smartindent = true
o.autoindent = true
o.breakindent = true
o.copyindent = true

-- Busca
o.ignorecase = true
o.smartcase = true
o.incsearch = true
o.hlsearch = true

-- Desempenho
o.timeoutlen = 500
o.updatetime = 200 -- tempo para update de diagnóstico e plugins
o.lazyredraw = true -- melhora performance em grandes arquivos
o.scrolloff = 8 -- mantém linhas visíveis acima/abaixo do cursor

-- Arquivos
o.undofile = true
o.backup = false
o.writebackup = false
o.swapfile = false

-- Mouse
o.mouse = "a" -- ativa mouse em todos os modos

-- Clipboard
o.clipboard = "unnamedplus" -- usa clipboard do sistema

-- Interface do split
o.splitbelow = true
o.splitright = true

-- Folding (opcional, útil com treesitter)
o.foldenable = true
o.foldlevel = 99
o.foldmethod = "indent"


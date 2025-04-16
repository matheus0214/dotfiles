require("bufferline").setup{
	options = {
		offsets = {
			{
				filetype = "neo-tree",
				text = "Explorer",
				text_align = "center",
				separator = true
			}
		}
	}
}
require("lualine").setup{}

require("neo-tree").setup({
  window = {
    position = "bottom",
    width = 40,
    height = "40%",
  }
})

vim.cmd('colorscheme tokyonight')

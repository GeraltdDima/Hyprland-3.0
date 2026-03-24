return {
	"AlphaTechnolog/pywal.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local pywal = require('pywal')

		pywal.setup()

		vim.keymap.set('n', '<C-b>', ':colorscheme pywal<CR>', { noremap = true, silent = true })
	end
}

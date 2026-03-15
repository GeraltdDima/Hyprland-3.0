return {
	{
		'nvim-tree/nvim-tree.lua',
		config = function() 
			require ('nvim-tree').setup({
				filters = {
					dotfiles = true,
				},
				view = {
					width = 30,
					side = 'left'
				},
			})

			vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
		end
	}
}

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'smartpde/telescope-recent-files',
		'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup({})
        telescope.load_extension('recent_files')
		telescope.load_extension('file_browser')

        vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-o>', function()
            telescope.extensions.recent_files.recent_files()
        end, { desc = 'Telescope recent files' })

		vim.keymap.set('n', '<C-l>', function ()
			telescope.extensions.file_browser.file_browser()
		end, { desc = 'Telescope file browser' })
    end
}

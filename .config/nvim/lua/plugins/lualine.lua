return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			local job_indicator = { require("easy-dotnet.ui-modules.jobs").lualine }

			require ('lualine').setup {
				options = {
					theme = 'pywal-nvim',
				},
				sections = {
					-- ...
					lualine_a = { "mode", job_indicator },
					-- ...
				},
			}
		end
	}
}

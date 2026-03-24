return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		config = function()
			require("CopilotChat").setup()

			vim.keymap.set('n', '<C-u>', ':CopilotChatOpen<CR>', { noremap = true, silent = true })
		end
	},
}

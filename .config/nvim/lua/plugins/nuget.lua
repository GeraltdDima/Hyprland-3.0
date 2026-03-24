return {
	"d7omdev/nuget.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("nuget").setup()

		vim.keymap.set('n', '<C-n>', ':NuGetInstall<CR>', { noremap = true, silent = true })
		vim.keymap.set('n', '<C-r>', ':NuGetRemove<CR>', { noremap = true, silent = true })

		local dotnet_lsp_group = vim.api.nvim_create_augroup("DotnetLspRestart", { clear = true })

		vim.api.nvim_create_autocmd("BufWritePost", {
			group = dotnet_lsp_group,
			pattern = "*.csproj", -- Скрипт сработает при сохранении любого .csproj файла
			callback = function()
				-- 1. Выполняем dotnet restore (опционально, но полезно для NuGet)
				-- 'async = true' не даст Neovim "зависнуть" во время восстановления
				vim.fn.jobstart({ "dotnet", "restore" }, {
					on_exit = function()
						-- 2. После успешного restore перезапускаем LSP
						vim.cmd("LspRestart")
					end,
				})
			end,
		})
	end,
}

return {
	{
		"mason-org/mason.nvim",
		config = function()
			require ("mason").setup({
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
				
				ensure_installed = {
					"basedpyright",
					"roslyn",
					"json-lsp",
					"lua-language-server",
					"angular-language-server",
					"typescript-language-server"
				},

				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗"
					}
				}
			})
		end
	}
}

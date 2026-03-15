return {
	"seblyng/roslyn.nvim",
	opts = {
		 filewatching = "auto",
	},
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		vim.lsp.config("roslyn", {
			on_attach = function()
				print("Roslyn server started")
			end,
			capabilities = capabilities,
			settings = {
				["csharp|inlay_hints"] = {
					csharp_enable_inlay_hints_for_implicit_object_creation = true,
					csharp_enable_inlay_hints_for_implicit_variable_types = true,
				},
				["csharp|code_lens"] = {
					dotnet_enable_references_code_lens = true,
				},
			},
		})

		vim.lsp.enable("roslyn")
	end
}

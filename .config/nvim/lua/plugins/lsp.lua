local lsps = {
	"basedpyright",
	"lua_ls",
	"json_ls",
	"tsserver",
	"eslint-lsp",
	"html-lsp",
	"css-lsp",
}

return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		for _, lsp in ipairs(lsps) do
			vim.lsp.config(lsp, {
				capabilities = capabilities,
			})

			vim.lsp.enable(lsp)
		end
	end
}

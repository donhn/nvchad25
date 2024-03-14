return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "aznhe21/actions-preview.nvim" },

		{
			"SmiteshP/nvim-navbuddy",
			dependencies = {
				"SmiteshP/nvim-navic",
				"MunifTanjim/nui.nvim",
			},
			opts = { lsp = { auto_attach = true } },
		},
	},

	config = function()
		require("nvchad.configs.lspconfig")
		require("configs.lspconfig")
	end,
}

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"creativenull/efmls-configs-nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("utils.diagnostics").setup()
			require("servers")
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},

		config = function()
			local mason = require("mason")
			local mason_lsp = require("mason-lspconfig")

			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			mason_lsp.setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"jsonls",
					"ts_ls",
					"bashls",
					"dockerls",
					"emmet_ls",
					"yamlls",
					"html",
					"cssls",
					"phpactor",
					"vue_ls",
					"tailwindcss",
					"solidity_ls_nomicfoundation",
					"efm",
				},
				automatic_installation = true,
			})
		end,
	},
}

return	{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"antosha417/nvim-lsp-file-operations",
		"folke/snacks.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			window = {
				width = 30,
				mappings = {
					["u"] = "open",
					["E"] = "expand_all_nodes",
					["e"] = "expand_all_subnodes",
					["c"] = "close_all_subnodes",
					["Z"] = "close_all_nodes",
					["p"] = {
					"toggle_preview",
					config = {
					use_float = true,
					-- use_image_nvim = true,
					use_snacks_image = true,
					title = 'Neo-tree Preview',
				},
			},
		},
	},
	filesystem = {
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false,
		}
	}
})
		end,
	}

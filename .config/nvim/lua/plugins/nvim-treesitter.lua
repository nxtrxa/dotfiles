return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		opts = {
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"c",
				"c3",
				"cpp",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"php",
				"html",
				"css",
				"scss",
				"vue",
				"phpdoc",
				"markdown",
				"markdown_inline",
				"php_only",
				"blade",
				"typescript",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader>ss",
					node_incremental = "<leader>si",
					scope_incremental = "<leader>sc",
					node_decremental = "<leader>sd",
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
						["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
					},
					selection_modes = {
						["@parameter.outer"] = "v",
						["@function.outer"] = "V",
						["@class.outer"] = "<c-v>",
					},
					include_surrounding_whitespace = true,
				},
			},
		},

		config = function(_, opts)
			--          local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			--
			--          parser_config.blade = {
			--              install_info = {
			--                  url = "https://github.com/EmranMR/tree-sitter-blade",
			--                  files = { "src/parser.c" },
			--                  branch = "main",
			--              },
			--              filetype = "blade",
			--          }
			--
			-- parser_config.c3 = {
			--          install_info = {
			--              url = "https://github.com/c3lang/tree-sitter-c3",
			--              files = { "src/parser.c", "src/scanner.c" },
			--              branch = "main",
			--          },
			--          filetype = "c3",
			-- 	}
			--
			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				},
			})

			require("nvim-treesitter.config").setup(opts)
		end,
	},
	-- {
	--     "nvim-treesitter/nvim-treesitter-context",
	-- },
	-- {
	--     "nvim-treesitter/nvim-treesitter-refactor",
	-- },
}

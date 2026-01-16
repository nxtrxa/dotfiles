return {
	"nvim-tree/nvim-web-devicons", opts = {},
	config = function()
		require('nvim-web-devicons').setup {
			strict = true;
			override = {
				c3 = {
				  icon = "",
				  color = "#471474",
				  cterm_color = "209",
				  name = "C3"
				}
			},
			override_by_extension = {
				["c3"] = {
				  icon = " ",
				  color = "#471474",
				  name = "C3"
				},
                ["blade.php"] = {
                    icon="",
                    color="#ff2d20",
                    name = "blade",
                },
			}
		}
	end,
}

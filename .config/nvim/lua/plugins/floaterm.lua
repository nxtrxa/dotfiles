return {
	"nvzone/floaterm",
	dependencies = "nvzone/volt",
	opts = {},
	config = {
		{
			border = true,
			size = { h = 60, w = 70 },

			mappings = { sidebar = nil, term = nil},

			terminals = {
				{ name = "zsh"},
			},
		},
	},
	cmd = "FloatermToggle",
}

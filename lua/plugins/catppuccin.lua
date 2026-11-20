return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha",

		transparent_background = false,
		float = {
			transparent = false,
			solid = false,
		},

		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},

		auto_integrations = true,
		integrations = {
			cmp = true,
			gitsigns = true,
			neotree = true,
			nvimtree = true,
			blink_cmp = { style = "bordered" },
			lsp_trouble = true,
			indent_blankline = { enabled = true },
			telescope = { enabled = true },
		},
	},
}

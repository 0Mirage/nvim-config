require "colorizer".setup {
	user_default_options = {
		always_update = true,
		tailwind = true,
		sass = {
			enable = true,
			parsers = { "css" }
		}
	},
	filetypes = {
		css = {
			RGB = true,
			RRGGBB = true,
			names = true,
			RRGGBBAA = true,
			rgb_fn = true,
			hsl_fn = true,
			css = true,
			css_fn = true,
		},
		html = { mode = "background" },
		markdown = { names = false },
		lua = { names = false },
		json = { names = false },
		mason = { names = false },
		"*",
	}
}

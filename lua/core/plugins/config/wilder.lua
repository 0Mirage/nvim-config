local wilder = require "wilder"

wilder.set_option("renderer", wilder.popupmenu_renderer(
	wilder.popupmenu_border_theme {
		highlights = {
			border = "Normal",
		},
		border = "rounded",
		min_width = "100%",
		max_height = "20%",
		left = {" ", wilder.popupmenu_devicons()}
	}
))

wilder.setup {
	modes = {":", "/", "?"}
}

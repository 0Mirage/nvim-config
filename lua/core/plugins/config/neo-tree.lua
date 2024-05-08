require "neo-tree".setup {
	enable_git_status = true,
	filesystem = {
		filtered_items = {
			visible = false,
			show_hidden_count = false,
			hide_dotfiles = false,
			hide_gitignored = true,
			always_show = {
				"target",
				".env"
			},
			hide_by_name = {
				".git",
				"node_modules"
			}
		}
	}
}

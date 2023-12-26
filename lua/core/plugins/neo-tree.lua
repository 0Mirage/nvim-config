local status_ok, neotree = pcall(require, "neo-tree")
if not status_ok then
	return
end

neotree.setup {
	filesystem = {
		filtered_items = {
			visible = false,
			show_hidden_count = false,
			hide_dotfiles = false,
			hide_gitignored = true,
			hide_by_name = {
				".git",
				"node_modules"
			}
		}
	}
}

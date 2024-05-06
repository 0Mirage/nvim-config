local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

require "telescope".setup {
	defaults = {
		file_ignore_patterns = { "node_modules", ".git" },
	}
}

telescope.load_extension("live_grep_args")

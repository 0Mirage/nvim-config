local telescope = require "telescope"

telescope.setup {
	defaults = {
		file_ignore_patterns = { "node_modules", ".git" },
	}
}

telescope.load_extension("live_grep_args")

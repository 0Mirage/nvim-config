require "better_escape".setup {
	mapping = { "jj", "kk" },
	timeout = vim.o.timeoutlen,
	clear_empty_lines = false,
	keys = "<Esc>"
}

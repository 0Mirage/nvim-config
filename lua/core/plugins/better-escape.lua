local status_ok, betterEscape = pcall(require, "better_escape")
if not status_ok then
	return
end

betterEscape.setup {
	mapping = { "jj", "kk" },
	timeout = vim.o.timeoutlen,
	clear_empty_lines = false,
	keys = "<Esc>"
}

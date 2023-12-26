local status_ok, barbar = pcall(require, "barbar")
if not status_ok then
	return
end

barbar.setup {
	icons = {
		separator = {left = "", right = ""},
		separator_at_end = false,
		filetype = {
			custom_colors = true,
		}
	},
	maximum_length = 15,
	minimum_length = 15,
	sidebar_filetypes = {
		["neo-tree"] = { event = "BufWipeout" }
	}
}

vim.cmd [[hi BufferCurrent guibg=default]]
vim.cmd [[hi BufferCurrent guifg=#8aadf4]]
vim.cmd [[hi BufferCurrentIcon guifg=#8aadf4]]
vim.cmd [[hi BufferAlternate guibg=default]]
vim.cmd [[hi BufferAlternate guifg=#8087a2]]
vim.cmd [[hi BufferAlternateIcon guifg=#8087a2]]
vim.cmd [[hi BufferVisible guibg=default]]
vim.cmd [[hi BufferVisible guifg=#8087a2]]
vim.cmd [[hi BufferVisibleIcon guifg=#8087a2]]
vim.cmd [[hi BufferInactive guibg=default]]
vim.cmd [[hi BufferInactive guifg=#8087a2]]
vim.cmd [[hi BufferInactiveIcon guifg=#8087a2]]

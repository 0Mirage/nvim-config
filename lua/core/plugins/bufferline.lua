local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end


bufferline.setup {
	options = {
		offsets = {
			{
				filetype = "neo-tree",
				highlight = "Directory",
				separator = true
			}
		}
	}
}

vim.cmd [[hi BufferTabpageFill guibg=default]]
vim.cmd [[hi BufferCurrent guibg=default]]
vim.cmd [[hi BufferCurrentIcon guibg=default]]

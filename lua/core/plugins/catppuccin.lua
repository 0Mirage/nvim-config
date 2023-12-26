local status_ok, catppuccin = pcall(require, "catppuccin")
if not status_ok then
	return
end

catppuccin.setup {
	flavour = "macchiato",
	transparent_background = true
}

vim.cmd("colorscheme catppuccin")

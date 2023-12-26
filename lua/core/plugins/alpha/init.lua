local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local headers = require "core.plugins.alpha.headers"
local dashboard = require "alpha.themes.dashboard"

dashboard.section.header.val = headers.nvim

dashboard.section.buttons.val = {
	dashboard.button("r", "󱫓 Recent Files", ":Telescope oldfiles<CR>"),
	dashboard.button("f", "󰍉 Find File", ":Telescope find_files<CR>"),
	dashboard.button("u", "󰚰 Update Plugins", ":PackerSync<CR>"),
	dashboard.button("h", "󰋖 Help", ":help<CR>"),
	dashboard.button("q", "󰠚 Quit Neovim", ":qa<CR>")
}

dashboard.section.footer.val = require "alpha.fortune"

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Title"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)

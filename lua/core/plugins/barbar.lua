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
	auto_hide = true,
	maximum_length = 15,
	minimum_length = 15,
	sidebar_filetypes = {
		["neo-tree"] = { event = "BufWipeout" }
	}
}

local currentColor = "#8aadf4"
local normalColor = "#8087a2"

local status = {
	"STATUS",
	"Alternate",
	"Current",
	"Inactive",
	"Visible"
}

local parts = {
	"ADDED",
	"CHANGED",
	"DELETED",
	"ERROR",
	"HINT",
	"Icon",
	"Index",
	"INFO",
	"Mod",
	"Number",
	"Sign",
	"SignRight",
	"Target",
	"WARN"
}

for _, s  in pairs(status) do

	vim.cmd(string.format("hi Buffer%s guibg=default", s))
	if s == "Current" then
		vim.cmd(string.format("hi Buffer%s guifg=%s", s, currentColor))
	else
		vim.cmd(string.format("hi Buffer%s guifg=%s", s, normalColor))
	end

	for _, p in pairs(parts) do
		vim.cmd(string.format("hi Buffer%s%s guibg=default", s, p))
		if s == "Current" then
			vim.cmd(string.format("hi Buffer%s%s guifg=%s", s, p, currentColor))
		else
			vim.cmd(string.format("hi Buffer%s%s guifg=%s", s, p, normalColor))
		end
	end
end

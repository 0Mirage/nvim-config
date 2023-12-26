local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local transparent = {}
transparent.theme = function()
	local colors = {
		darkgray = "#24273a",
		gray = "#b8c0e0",
		innerbg = nil,
		outerbg = "#16161D",
		normal = "#c6a0f6",
		insert = "#91d7e3",
		visual = "#f5a97f",
		replace = "#ed879j",
		command = "#eed49f",
	}
	return {
		inactive = {
			a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		visual = {
			a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		replace = {
			a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		normal = {
			a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		insert = {
			a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		command = {
			a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
	}
end

lualine.setup {
	options = {
		icons_enabled = true,
		theme = transparent.theme(),
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {
			"packer",
			"neo-tree"
		}
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {},
		lualine_x = {
			{ "filetype" }
		},
		lualine_y = {},
		lualine_z = {},
	}
}

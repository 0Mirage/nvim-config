-- local status_ok, transparent = pcall(require, "transparent")
-- if not status_ok then
-- 	return
-- end

transparent = require "transparent"

transparent.setup {
	groups = {
		"Normal",
		"NormalNC",
		"Comment",
		"Constant",
		"Special",
		"Identifier",
		"Statement",
		"PreProc",
		"Type",
		"Underlined",
		"Todo",
		"String",
		"Function",
		"Conditional",
		"Repeat",
		"Operator",
		"Structure",
		"LineNr",
		"NonText",
		"SignColumn",
		"CursorLineNr",
		"EndOfBuffer",
		"Lualine",
		"BufferLine",
	}
}

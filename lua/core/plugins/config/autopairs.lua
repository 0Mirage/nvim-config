require "nvim-autopairs".setup{ 
	check_ts = true,
	ts_config = {
		lua = { "string", "source" },
		javascript = { "string", "template_string" }
	},
	disable_filetype = { "TelescopePrompt" },
	fast_wrap = {
		map = "<M-e>",
		chars = { '{', '[', '(', '"', "'" },
		pattern = [=[[%"%"%>%]%)%}%,]]=],
		end_key = "$",
		before_key = "h",
		after_key = "l",
		cursor_pos_before = true,
		keys = "qwertyuiopzxcvbnmasdfghjkl",
		manual_position = true,
		highlight = "Search",
		highlight_grey="Comment"
	}
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"

require "cmp".event:on("confirm_done", cmp_autopairs.on_confirm_done {
	map_char = { tex = "" }
})

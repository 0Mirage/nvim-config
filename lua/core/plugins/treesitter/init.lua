local status_ok = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

local langages = require "core.plugins.treesitter.langages"
local refactor = require "core.plugins.treesitter.refactor"
local textobjects = require "core.plugins.treesitter.textobjects"

require "nvim-treesitter.configs".setup {
	ensure_installed = langages,
	sync_install = true,
	autopairs = {
		enable = true
	},
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<C-b>",
			node_incremental = "<C-b>",
			scope_incremental = false,
			node_decremental = "<bs>",
		},
	},
	refactor = refactor,
	textobjects = textobjects
}

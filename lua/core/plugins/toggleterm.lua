local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup {
	size = 10,
	open_mapping = [[<A-:>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
}

local Terminal = require "toggleterm.terminal".Terminal

local lazygitTerminal = Terminal:new { cmd = "lazygit", direction = "float" }
function _G.term_lazygit() lazygitTerminal:toggle() end

local btopTerminal = Terminal:new { cmd = "btop", direction = "float" }
function _G.term_btop() btopTerminal:toggle() end

local lfTerminal = Terminal:new { cmd = "lf", direction = "float" }
function _G.term_lf() lfTerminal:toggle() end

local sptTerminal = Terminal:new { cmd = "spt", direction = "float" }
function _G.term_spt() sptTerminal:toggle() end

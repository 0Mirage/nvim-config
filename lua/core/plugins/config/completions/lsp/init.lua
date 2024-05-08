local capabilities = require "cmp_nvim_lsp".default_capabilities()

local servers = require "core.plugins.config.completions.lsp.servers"

require "mason".setup()
require "mason-lspconfig".setup {
	automatic_installation = true,
	ensure_installed = servers
}

local on_attach = function()
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

for _, server in pairs(servers)  do
	local opts = {
		on_attach = on_attach,
		capabilities = capabilities
	}

	server = vim.split(server, "@")[1]
	require "lspconfig"[server].setup(opts)
end

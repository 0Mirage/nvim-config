local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
	return
end

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-o>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources(
		{
			{ name = "nvim_lsp" },
			{ name = "luasnip" }
		},
		{
			{ name = "buffer" }
		}
	)
})

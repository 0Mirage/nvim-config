require "marks".setup {
	cyclic = true,
	mappings = {
    set_next = "m,",
    next = "m]",
    preview = "m:",
    set_bookmark0 = "m0",
    prev = false
  }
}

vim.cmd [[ au CursorHold * lua require'marks'.refresh() ]]

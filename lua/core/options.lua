vim.opt.updatetime = 10
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smarttab = true
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.opt.termguicolors = true
vim.o.scrolloff = 5
vim.opt.termguicolors = true

-- Set default filetypes
vim.cmd("autocmd BufRead,BufNewFile *.zsh setfiletype bash")
vim.cmd("autocmd BufRead,BufNewFile *.ejs setfiletype html")

-- Transparency
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('hi SignColumn guibg=NONE ctermbg=NONE')
vim.cmd('hi VertSplit guibg=NONE ctermbg=NONE')

-- Copilot
vim.g.copilot_assume_mapped = true

--NvimTree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

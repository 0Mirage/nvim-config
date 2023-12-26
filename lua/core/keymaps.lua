local keymap = vim.keymap

-- Navigate vim panes
keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Resize vim panes
keymap.set("n", "<c-w>h", ":vertical resize -10<CR>")
keymap.set("n", "<c-w>j", ":horizontal resize -10<CR>")
keymap.set("n", "<c-w>k", ":horizontal resize +10<CR>")
keymap.set("n", "<c-w>l", ":vertical resize +10<CR>")

-- Telescope
keymap.set("n", "<c-p>", ":Telescope find_files<CR>")
keymap.set("n", "<Space>fh", ":Telescope live_grep<CR>")
keymap.set("n", "<Space><Space>", ":Telescope oldfiles<CR>")

-- Barbar
keymap.set("n", "<A-,>", ":BufferPrevious<CR>")
keymap.set("n", "<A-;>", ":BufferNext<CR>")
keymap.set("n", "<A-c>", ":BufferClose<CR>")
keymap.set("n", "<A-<>", ":BufferMovePrevious<CR>")
keymap.set("n", "<A->>", ":BufferMoveNext<CR>")

-- NeoTree
keymap.set("n", "<A-n>", ":NeoTreeFocusToggle<CR>")
keymap.set("n", "<A-f>", ":NeoTreeFloatToggle<CR>")

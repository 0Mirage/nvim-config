local keymap = vim.keymap

-- Scroll up and down
keymap.set("n", "<c-e>", "5<c-e>")
keymap.set("n", "<c-y>", "5<c-y>")
keymap.set("n", "<A-j>", "5j")
keymap.set("n", "<A-k>", "5k")

-- Navigate vim panes
keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Yank
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true, silent = true })

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

-- ToggleTerm
keymap.set("n", "<A-t>b", ":lua term_btop()<CR>")
keymap.set("n", "<A-t>g", ":lua term_lazygit()<CR>")
keymap.set("n", "<A-t>l", ":lua term_lf()<CR>")
keymap.set("n", "<A-t>s", ":lua term_spt()<CR>")

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<space>", "<nop>", { silent = true })

-- do not replace registers
vim.keymap.set("n", "x", '"_x') -- don't replace with one char
vim.keymap.set("n", "r", '"_r') -- don't replace with one char
vim.keymap.set("v", "p", '"_dP')

-- centre on find
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- resize current buffer with arrow key
vim.keymap.set("n", "<Up>", ":resize -2<CR>")
vim.keymap.set("n", "<Down>", ":resize +2<CR>")
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>")

-- buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>bc", ":bdelete!<CR>") -- close buffer
vim.keymap.set("n", "<leader>bn", "<cmd> enew <CR>") -- new buffer

-- move between splits
vim.keymap.set("n", "K", ":wincmd k<CR>")
vim.keymap.set("n", "J", ":wincmd j<CR>")
vim.keymap.set("n", "H", ":wincmd h<CR>")
vim.keymap.set("n", "L", ":wincmd l<CR>")

-- stay in indent mode
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

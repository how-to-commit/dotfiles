-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<space>", "<nop>", { silent = true })

-- do not replace registers
vim.keymap.set("n", "x", '"_x') -- don't replace with one char
vim.keymap.set("n", "r", '"_r') -- don't replace with one char
vim.keymap.set("v", "p", '"_dP')

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)

-- impt misc
vim.keymap.set("n", "<leader>q", ":q")
vim.keymap.set("n", "<leader>w", ":w")

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
vim.keymap.set("n", "<leader>bc", ":bdelete!<CR>")   -- close buffer
vim.keymap.set("n", "<leader>bn", "<cmd> enew <CR>") -- new buffer

-- move between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- stay in indent mode
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

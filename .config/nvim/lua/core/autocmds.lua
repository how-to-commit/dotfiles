-- set terminal keymap
vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("toggleterm_keybinds", { clear = true }),
    callback = function(_)
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

        vim.keymap.set("t", "<C-h>", "<Cmd>wincmd h<CR>", opts)
        vim.keymap.set("t", "<C-j>", "<Cmd>wincmd j<CR>", opts)
        vim.keymap.set("t", "<C-k>", "<Cmd>wincmd k<CR>", opts)
        vim.keymap.set("t", "<C-l>", "<Cmd>wincmd l<CR>", opts)
    end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", {}),
    desc = "Hightlight selection on yank",
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 500 })
    end,
})

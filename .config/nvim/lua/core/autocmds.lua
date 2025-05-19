-- autocmds that will run when a lsp attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp", { clear = true }),
    callback = function(event)
        -- autoformat on file save
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = event.buf,
            callback = function()
                vim.lsp.buf.format { async = false, id = event.data.client_id }
            end,
        })

        -- TOOD: highlight references under the cursor
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
            local highlight_augroup = vim.api.nvim_create_augroup("lsp_highlight", { clear = false })
            vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
                buffer = event.buf,
                group = highlight_augroup,
                callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
                buffer = event.buf,
                group = highlight_augroup,
                callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd("LspDetach", {
                group = vim.api.nvim_create_augroup("lsp_detach", { clear = true }),
                callback = function(event2)
                    vim.lsp.buf.clear_references()
                    vim.api.nvim_clear_autocmds { group = highlight_augroup, buffer = event2.buf }
                end,
            })
        end
    end
})

-- set terminal keymap
vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("toggleterm_keybinds", { clear = true }),
    callback = function(_)
        local opts = { buffer = 0 }
        vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)
        vim.keymap.set('t', '<C-h>', "<Cmd>wincmd h<CR>", opts)
        vim.keymap.set('t', '<C-j>', "<Cmd>wincmd j<CR>", opts)
        vim.keymap.set('t', '<C-k>', "<Cmd>wincmd k<CR>", opts)
        vim.keymap.set('t', '<C-l>', "<Cmd>wincmd l<CR>", opts)
    end
})

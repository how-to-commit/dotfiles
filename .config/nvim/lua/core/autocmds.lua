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
    end
})

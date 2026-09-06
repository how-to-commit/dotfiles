return {
    { 'mason-org/mason.nvim', opts = {} },

    {
        'mason-org/mason-lspconfig.nvim',
        dependencies = { 'neovim/nvim-lspconfig' },
        opts = {}
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({
                virtual_text = true
            })
        end
    }
}

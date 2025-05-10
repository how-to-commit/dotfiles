return {
    "nvimtools/none-ls.nvim",

    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "jay-babu/mason-null-ls.nvim",
    },

    config = function()
        -- use mason-null-ls as our "list provider"
        require("mason-null-ls").setup {
            ensure_installed = {
                "prettier",  -- js formatter
                "eslint_d",  -- js linter
                "stylua",    -- lua formatter
                "checkmake", -- makefile linter
                "ruff",      -- python lint/formatter
            },
            automatic_installation = true,
        }
    end
}

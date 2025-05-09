return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig",
        "neovim/nvim-lspconfig",
    },

    event = { "BufReadPre", "BufNewFile" },

    -- enabled servers
    opts = {
        servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT",
                        },
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            -- this version below is slower?
                            -- library = vim.api.nvim_get_runtime_file("", true),
                            library = vim.env.VIMRUNTIME,
                        },
                        telemetry = { enable = false },
                    }
                }
            },
            rust_analyzer = {},
            ruff = {},
            pylsp = {},
        }
    },

    config = function(_, opts)
        require("mason").setup()

        -- ensure servers are installed
        local ensure_installed = {}
        for server in pairs(opts.servers) do
            table.insert(ensure_installed, server)
        end
        require("mason-lspconfig").setup {
            ensure_installed = ensure_installed,
            automatic_enable = false,
        }

        -- configure capabilities
        local lspconfig = require("lspconfig")
        for server, config in pairs(opts.servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end
}

return {
    {
        "echasnovski/mini.comment",
        version = false,
        config = function()
            require("mini.comment").setup()
        end
    },
    {
        "echasnovski/mini.align",
        version = false,
        config = function()
            require("mini.align").setup()
        end
    },
    {
        "echasnovski/mini.pairs",
        version = false,
        config = function()
            require("mini.pairs").setup()
        end
    },
    {
        "echasnovski/mini.surround",
        version = false,
        config = function()
            require("mini.surround").setup({
                mappings = {
                    add = "cs",
                    delete = "cd",
                    find = "cf",
                    find_left = "cF",
                    replace = "cr",
                    update_n_lines = "cn",
                }
            })
        end
    },
    {
        "ggandor/leap.nvim",
        enabled = true,
        commit = "2b68ddc",
        config = function()
            vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap)")
            vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-anywhere)")
        end
    }
}

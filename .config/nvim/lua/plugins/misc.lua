return {
    {
        "echasnovski/mini.comment",
        version = false,
        config = function()
            require("mini.comment").setup({
                mappings = {
                    comment = "<leader>/",
                    comment_line = "<leader>/",
                    comment_visual = "<leader>/",
                }
            })
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
            require("mini.surround").setup()
        end
    }
}

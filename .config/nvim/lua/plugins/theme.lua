return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("gruvbox").setup({ transparent_mode = false, })
        vim.opt.background = "dark"
        vim.cmd([[colorscheme gruvbox]])

        -- set background highlighting too
        local bryellow = "#fabd2f"
        local brorange = "#fe8019"
        local hl_bg3 = "#665c54"
        vim.api.nvim_set_hl(0, "LspReferenceText", { bg = hl_bg3, fg = bryellow })
        vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = hl_bg3, fg = bryellow })
        vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = hl_bg3, fg = brorange, underline = true }) -- write with underline
    end
}

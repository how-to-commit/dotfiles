-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

-- setup plugins
require("lazy").setup {
    require("plugins.neotree"),
    require("plugins.theme"),
    require("plugins.cmp"),
    require("plugins.lsp"),
    require("plugins.bufferline"),
    require("plugins.treesitter"),
    require("plugins.telescope"),
    require("plugins.null-ls"),
    require("plugins.toggleterm"),
    require("plugins.misc"),
}

-- setup core options to overwrite
require("core.options")
require("core.keymaps")
require("core.autocmds")

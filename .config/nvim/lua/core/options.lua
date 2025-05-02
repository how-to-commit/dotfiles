-- show numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- wrap and linebreak (TODO: make toggleable)
vim.opt.wrap = false
vim.opt.linebreak = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- misc
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.g.have_nerd_font = true
vim.opt.clipboard:append("unnamedplus")

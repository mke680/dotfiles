-- Neovim Options
vim.opt.termguicolors = true
vim.opt.relativenumber = true

-- Enable system clipboard
vim.opt.clipboard = "unnamedplus"

-- Set transparent background for Normal group
vim.cmd [[hi Normal ctermbg=none guibg=none]]

require("config.lazy") 

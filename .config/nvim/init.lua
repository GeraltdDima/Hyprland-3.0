vim.opt.number = true
vim.opt.smarttab = true
vim.opt.compatible = false
vim.cmd('filetype plugin on')
vim.cmd('syntax on')
vim.opt.cursorline = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.background = "dark"
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wildignore:append({".docx", ".jpg", ".png", ".gif", ".pdf", ".pyc", ".exe", ".flv", ".img", ".xlsx"})
vim.opt.guifont = "JetBrainsMono:h12:b"
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.termguicolors = true

require ("config.lazy")

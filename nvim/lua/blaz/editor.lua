local has = function(feature)
  return vim.fn.has(feature) == 1
end

-- Look and feel

if has("termguicolors") then
  vim.opt.termguicolors = true
end
vim.opt.background = "dark"

-- I don't want vim's status indicators for the various
-- editor modes to visually conflict with airline's
vim.opt.showmode = false

vim.opt.number = true
vim.opt.relativenumber = true

-- Only used for nvim-qt GUI application
vim.opt.guifont = "CaskaydiaCove_NF:h12"

vim.cmd([[
syntax enable
syntax on
filetype plugin on
]])

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 0
vim.opt.expandtab = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- I want as-you-type autocompletion
-- vim.opt.completeopt = { "menu", "menuone", "preview", "noselect", "noinsert" }

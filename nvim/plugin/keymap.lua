local USING_NEOVIDE = require("blaz.helper.vim").USING_NEOVIDE

vim.keymap.set("", "gf", ":edit <cfile><cr>")

-- Move split panes to left/bottom/top/right
vim.keymap.set("n", "<A-h>", "<C-W>H", { remap = false })
vim.keymap.set("n", "<A-j>", "<C-W>J", { remap = false })
vim.keymap.set("n", "<A-k>", "<C-W>K", { remap = false })
vim.keymap.set("n", "<A-l>", "<C-W>L", { remap = false })

-- Move between panes to left/bottom/top/right
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = false })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = false })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = false })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = false })

-- The following were taken from
-- https://github.com/nvim-lua/kickstart.nvim
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- I want to move my cursor by visual lines when word wrap is on
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

if USING_NEOVIDE then
	vim.keymap.set("n", "<C-=", function()
		ChangeScaleFactor(1.25)
	end, { expr = true, remap = false })
	vim.keymap.set("n", "<C-->", function()
		ChangeScaleFactor(1 / 1.25)
	end, { expr = true, remap = false })
end

if vim.lsp.inlay_hint then
	vim.keymap.set("n", "<leader>uh", function()
		vim.lsp.inlay_hint(0, nil)
	end, { desc = "Toggle inlay hints" })
end

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

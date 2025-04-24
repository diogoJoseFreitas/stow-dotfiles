local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "

require("vim-options")
require("lazy").setup("plugins")


function ToggleTerm()

	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		if vim.bo[buf].buftype == 'terminal' then
			vim.api.nvim_win_close(win, true)
			return
		end
	end

	vim.cmd('belowright split | terminal')
  vim.cmd(':resize 15')
	vim.cmd('startinsert')
end

vim.keymap.set('n', '<C-t>', ToggleTerm, {noremap = true, silent = true})
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

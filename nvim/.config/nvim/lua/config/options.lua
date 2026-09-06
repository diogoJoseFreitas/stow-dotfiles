vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth=2

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")

vim.opt.shell = "/home/linuxbrew/.linuxbrew/bin/fish"

-- Clipboard Definitions
vim.opt.clipboard = 'unnamedplus'
vim.keymap.set('v', '<leader>y', '"+y')

-- Terminal to quit command (not working on snacks terminal)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])


-- Clipboard Definitions
vim.opt.clipboard = 'unnamedplus'
vim.keymap.set('v', '<leader>y', '"+y')

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})

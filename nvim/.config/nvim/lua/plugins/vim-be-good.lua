return {
  'ThePrimeagen/vim-be-good',
  config = function()
    vim.keymap.set('n', '<C-g>', ':VimBeGood<CR>')
  end
}

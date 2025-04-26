return -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
{
  'numToStr/Comment.nvim',
  opts = {
    -- add any options here
  },
  config = function()
    require('Comment').setup()
    local configs = require('Comment.api').toggle
    local esc = vim.api.nvim_replace_termcodes(
      '<ESC>', true, false, true
    )

  end
}

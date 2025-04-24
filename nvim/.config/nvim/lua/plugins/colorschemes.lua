return
  {
    "folke/tokyonight.nvim",
    event = "User LoadColorSchemes",
    opts = {
      cache = true, -- disable this if your UI is rendered incorrectly.
      dim_inactive = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      config = function ()
        vim.cmd.colorscheme "tokyonight-night"
      end
    },
    {
      "catppuccin/nvim",
      lazy = false,
      name = "catppuccin",
      priority = 1000,
      config = function()
        -- vim.cmd.colorscheme "catppuccin-mocha"
      end
    }
  }

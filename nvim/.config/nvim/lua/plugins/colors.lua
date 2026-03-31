return {
  {
    "uhs-robert/oasis.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      --    require("oasis").setup()      -- (see Configuration below for all customization options)
      vim.cmd.colorscheme("oasis") -- After setup, apply theme (or any style like "oasis-night")
    end
  },
  {
    "folke/tokyonight.nvim",
    --    event = "User LoadColorSchemes",
    lazy = false,
    name = "tokyonight",
    priority = 1000,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    opts = {
      --      cache = true, -- disable this if your UI is rendered incorrectly.
      transparent = true,
      dim_inactive = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      config = function(_, opts)
        --        require("folke/tokyonight.nvim").setup(opts)
        --vim.cmd.colorscheme "tokyonight-night"
      end
    },
  },
  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = true,
      invert = {
        signs = false,
        tabline = false,
        visual = false,
      },
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    }
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      float = {
        transparent = true,
        solid = false,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      --      vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "main",
      dark_variant = "main",
      disable_background = true,
      disable_float_background = true,
      disable_italics = false,
      styles = {
        transparency = true,
      }
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      --      vim.cmd("colorscheme rose-pine")
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      theme = "auto",
    }
  },
}

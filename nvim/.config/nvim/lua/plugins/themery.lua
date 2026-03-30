-- Plugin que auxilia na persistência de temas
return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      -- add the config here
      themes = {
        "blue", "catppuccin", "catppuccin-frappe", "catppuccin-latte", "catppuccin-macchiato", "catppuccin-mocha",
        "catppuccin-nvim", "darkblue", "default", "delek", "desert", "elflord", "evening", "habamax", "industry",
        "koehler", "lunaperche", "morning", "murphy", "pablo", "peachpuff", "quiet", "retrobox", "ron", "rose-pine",
        "rose-pine-dawn", "rose-pine-main", "rose-pine-moon", "shine", "slate", "sorbet", "tokyonight", "tokyonight-day",
        "tokyonight-moon", "tokyonight-night", "tokyonight-storm", "torte", "unokai", "vim", "wildcharm", "zaibatsu",
        "zellner",
      },
    })
  end
}

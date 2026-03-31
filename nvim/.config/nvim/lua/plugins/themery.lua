-- Plugin que auxilia na persistência de temas
return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      -- add the config here
      themes = { "iblue", "catppuccin", "catppuccin-frappe", "catppuccin-latte", "catppuccin-macchiato",
        "catppuccin-mocha", "catppuccin-nvim", "darkblue", "default", "delek", "desert", "elflord",
        "evening", "gruber-darker", "habamax", "industry", "koehler", "lunaperche", "miniautumn", "minicyan",
        "minischeme", "minispring", "minisummer", "miniwinter", "morning", "murphy", "oasis", "oasis-abyss",
        "oasis-cactus", "oasis-canyon", "oasis-desert", "oasis-dune", "oasis-lagoon", "oasis-luna",
        "oasis-midnight", "oasis-mirage", "oasis-night", "oasis-rose", "oasis-scorpion", "oasis-sol",
        "oasis-starlight", "oasis-twilight", "pablo", "peachpuff", "quiet", "randomhue", "retrobox",
        "ron", "rose-pine", "rose-pine-dawn", "rose-pine-main", "rose-pine-moon", "shine", "slate",
        "sorbet", "tokyonight", "tokyonight-day", "tokyonight-moon", "tokyonight-night", "tokyonight-storm",
        "torte", "unokai", "vim", "wildcharm", "zaibatsu", "zellner" },
    })
  end
}

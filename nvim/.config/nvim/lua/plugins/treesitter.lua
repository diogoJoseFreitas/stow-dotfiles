return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master', -- <--- ADD THIS LINE
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" }, -- Carrega ao abrir um arquivo
  opts = {
    ensure_installed = { "lua", "javascript", "vim", "vimdoc" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

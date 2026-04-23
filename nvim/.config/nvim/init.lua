vim.g.mapleader = ' '

require("config.options")
require("config.motions")
require("config.lazy")
require("vim-options")

-- Nova sintaxe para nvim-lspconfig (Neovim 0.11+ / v1.0.0+)
vim.lsp.config('clangd', {
  cmd = {
    "distrobox-enter",
    "-n", "apd", -- <--- COLOQUE O NOME DO SEU DISTROBOX AQUI
    "--",
    "clangd",
    "--background-index",
    "--clang-tidy"
  },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_markers = { ".git", "compile_commands.json", "compile_flags.txt" },
})

vim.lsp.config('jdtls', {
  cmd = {
    "distrobox-enter",
    "-n", "java", -- nome da sua distrobox
    "--",
    "jdtls"
  },
  filetypes = { "java" },
  root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" },
})

-- Para ativar o servidor após configurar
vim.lsp.enable('clangd')

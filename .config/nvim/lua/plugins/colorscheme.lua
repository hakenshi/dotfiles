return {
  "ayu-theme/ayu-vim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.ayucolor = "mirage" -- opções: "dark", "light", "mirage"
    vim.cmd "colorscheme ayu"
  end,
}

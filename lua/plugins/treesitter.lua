return {
  "nvim-treesitter/nvim-treesitter",
  version = "v0.9.2",
  event = { "BufReadPost", "BufNewFile", "BufWritePre" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "javascript", "typescript", "python", "rust", "go" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}

return {
  {
    "folke/tokyonight.nvim",
    version = "v4.*",
    priority = 1000,
    init = function()
      vim.cmd.colorscheme("tokyonight-night")
      vim.cmd.hi("Comment gui=none")
    end,
  },
  {
    "folke/snacks.nvim",
    version = "v2.*",
    priority = 1000,
    lazy = false,
    opts = {
      statusline = {
        enabled = true,
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch" },
          lualine_c = { "filename" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      },
      indent = { enabled = true },
      words = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 3000,
      },
    },
  },
}

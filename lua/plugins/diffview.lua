return {
  "sindrets/diffview.nvim",
  version = "v3.*",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
  dependencies = "nvim-lua/plenary.nvim",
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git diff" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Git file history" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Git history" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
  },
  opts = {
    enhanced_diff_hl = true,
  },
}

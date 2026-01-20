return {
  "ibhagwan/fzf-lua",
  version = "v0.0.1829",
  cmd = "FzfLua",
  keys = {
    { "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Search help" },
    { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Search keymaps" },
    { "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Search files" },
    { "<leader>ss", "<cmd>FzfLua builtin<cr>", desc = "Search select" },
    { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Search word" },
    { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Search grep" },
    { "<leader>sd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Search diagnostics" },
    { "<leader>sr", "<cmd>FzfLua resume<cr>", desc = "Search resume" },
    { "<leader>s.", "<cmd>FzfLua oldfiles<cr>", desc = "Search recent" },
    { "<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
    { "<leader>/", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "Search in buffer" },
    { "<leader>s/", "<cmd>FzfLua live_grep<cr>", desc = "Search in open files" },
    { "<leader>sG", "<cmd>FzfLua live_grep_glob<cr>", desc = "Search all files" },
    { "<leader>sF", "<cmd>FzfLua files<cr>", desc = "Search hidden files" },
    { "<leader>sn", function() require("fzf-lua").files({ cwd = vim.fn.stdpath("config") }) end, desc = "Search neovim config" },
  },
  opts = {
    winopts = {
      height = 0.85,
      width = 0.80,
      preview = {
        default = "bat",
        layout = "flex",
        flip_columns = 120,
      },
    },
    fzf_opts = {
      ["--layout"] = "reverse",
      ["--info"] = "inline",
    },
  },
}

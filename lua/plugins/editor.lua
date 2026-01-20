return {
  {
    "echasnovski/mini.files",
    version = "v0.14.0",
    keys = {
      { "<leader>e", function() require("mini.files").open(vim.api.nvim_buf_get_name(0)) end, desc = "Toggle file explorer" },
      { "<leader>E", function() require("mini.files").open() end, desc = "Open file explorer (cwd)" },
    },
    config = function()
      require("mini.files").setup({
        windows = { preview = true, width_focus = 30, width_preview = 30 },
        options = { use_as_default_explorer = true },
      })
      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniFilesBufferCreate",
        callback = function(args)
          local buf_id = args.data.buf_id
          vim.keymap.set("n", "<CR>", function()
            local fs_entry = require("mini.files").get_fs_entry()
            if fs_entry and fs_entry.fs_type == "file" then
              require("mini.files").go_in({})
              require("mini.files").close()
            else
              require("mini.files").go_in({})
            end
          end, { buffer = buf_id, desc = "Open file or directory" })
        end,
      })
    end,
  },
  {
    "folke/which-key.nvim",
    version = "v3.*",
    event = "VimEnter",
    config = function()
      require("which-key").setup()
      require("which-key").add({
        { "<leader>c", group = "Code" },
        { "<leader>d", group = "Document" },
        { "<leader>r", group = "Rename" },
        { "<leader>s", group = "Search" },
        { "<leader>w", group = "Workspace" },
        { "<leader>g", group = "Git" },
        { "<leader>h", group = "Hunk", mode = { "n", "v" } },
        { "<leader>e", group = "Explorer" },
      })
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    version = "v0.9.*",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    version = "v0.8.*",
    opts = {},
  },
  {
    "echasnovski/mini.nvim",
    version = "v0.14.0",
    config = function()
      require("mini.ai").setup({ n_lines = 500 })
      require("mini.surround").setup()
    end,
  },
  {
    "tpope/vim-sleuth",
    version = "v2.0",
  },
  {
    "kdheepak/lazygit.nvim",
    version = "v1.*",
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}

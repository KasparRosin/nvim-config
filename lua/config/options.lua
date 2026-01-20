vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10
opt.wrap = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.termguicolors = true
opt.colorcolumn = "80"

vim.api.nvim_create_autocmd("FocusGained", {
  group = vim.api.nvim_create_augroup("auto-reload", { clear = true }),
  callback = function()
    if vim.fn.getcmdwintype() == "" then vim.cmd("checktime") end
  end,
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function() vim.highlight.on_yank() end,
})

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.perl_host_prog = "/opt/homebrew/bin/perl"
vim.g.python3_host_prog = os.getenv("HOME") .. "/.venvs/nvim/bin/python"

-- Configure LazyVim to use Intelephense for PHP
vim.g.lazyvim_php_lsp = "intelephense"

vim.opt.winbar = "%=%m %f"

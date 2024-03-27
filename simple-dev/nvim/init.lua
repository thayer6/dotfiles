-- init.lua
vim.cmd [[packadd packer.nvim]]
-- Load external configuration files
require('settings')         -- For Neovim settings
require('keymaps')          -- For key mappings
require('plugins')          -- For plugin management
require('autocmds')         -- For autocommands

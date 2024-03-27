require("cthayer.lazy")
require("theme.kanagawa")
vim.cmd("source $HOME/.config/nvim/lua/old_config.vim")
require("cthayer.set")
require("cthayer.remap")
vim.opt.listchars = { eol = "↵", tab = "→  ", trail = "·", extends = "$" }
--lead = '·',
vim.opt.list = true


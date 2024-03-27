local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "si", ui.toggle_quick_menu)
vim.keymap.set("n", "sm", mark.add_file)

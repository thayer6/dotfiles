require('litee.lib').setup()
require('litee.gh').setup({})

vim.api.nvim_set_keymap('n', '<leader>ghn', ':GHNotifcations<CR>', {noremap = true, silent = true})


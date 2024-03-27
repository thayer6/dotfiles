-- Group autocommands to avoid duplication
vim.cmd [[augroup MyAutoCmds]]
vim.cmd [[autocmd!]]

-- Highlight on yank
vim.cmd [[autocmd TextYankPost * lua vim.highlight.on_yank {on_visual = false}]]

-- More autocommands can be added here
-- zoom vim split views
vim.cmd([[
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=
]])

vim.cmd [[augroup END]]

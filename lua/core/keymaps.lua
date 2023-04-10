-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Copy/Paste
vim.keymap.set('n', 'yp', ':let @*=expand("%")<CR>')
vim.keymap.set('n', 'yP', ':let @*=expand("%:p")<CR>')

-- Yank entire file content
vim.keymap.set('n', 'yY', ':%y+<CR>')

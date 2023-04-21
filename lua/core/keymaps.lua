local map = vim.api.nvim_set_keymap
local defaults = { noremap = true, silent = true }
map("i", "jk", "<esc>l", defaults)

-- Navigate vim panes better
map('n', '<c-k>', ':wincmd k<CR>', defaults)
map('n', '<c-j>', ':wincmd j<CR>', defaults)
map('n', '<c-h>', ':wincmd h<CR>', defaults)
map('n', '<c-l>', ':wincmd l<CR>', defaults)

map('n', '<leader>h', ':set hlsearch! hlsearch?<CR>', defaults)

-- Copy/Paste
map('n', 'yp', ':let @*=expand("%")<CR>', defaults)
map('n', 'yP', ':let @*=expand("%:p")<CR>', defaults)

-- Yank entire file content
map('n', 'yY', ':%y+<CR>', defaults)

-- break out of insert mode
map('i', 'jj', '<ESC>', defaults)

-- toggle line numbers
map('n', 'mn', ':set number! number?<CR>', defaults)

-- toggle search highlight
map('n', 'mh', ':set hlsearch! hlsearch?<CR>', defaults)

-- shortcuts for quitting nvim
map('n', 'mq', ':qall<CR>', defaults)
map('n', 'mQ', ':qall!<CR>', defaults)

-- shortcuts for writing the file
map('n', 'mw', ':w<CR>', defaults)
-- map('i', 'mw', '<ESC>:w<CR>', defaults)

-- check an item
map('n', 'mx', 'r√<CR>', defaults)

-- set appfolio test_launcher
map('n', 'mtl', ":let test#ruby#rails#executable = 'test_launcher'<CR>", defaults)

-- additional telescope mappings 
-- see init.lua for mappings setup as part of kickstarter
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[S]earch [B]uffers' })

-- Rails.vim Alt file
map('n', 'mA', ':A<CR>', defaults)

-- run a neovim plugin test file
vim.keymap.set('n', '<leader>Tp', '<Plug>PlenaryTestFile<CR>', { desc = 'Test Plugin' })

-- ruby: insert pry debug below cursor
vim.keymap.set('n', '<leader>rP', 'orequire "pry";binding.pry<ESC>', { desc = 'Insert Pry' })

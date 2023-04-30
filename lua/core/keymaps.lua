local utils = require "core.utils"

local map = vim.api.nvim_set_keymap
local defaults = { noremap = true, silent = true }
map("i", "jk", "<esc>l", defaults)

-- Navigate vim panes better
map('n', '<c-k>', ':wincmd k<CR>', { noremap = false, silent = true })
map('n', '<c-j>', ':wincmd j<CR>', { noremap = false, silent = true })
map('n', '<c-h>', ':wincmd h<CR>', { noremap = false, silent = true })
map('n', '<c-l>', ':wincmd l<CR>', { noremap = false, silent = true })

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

-- use tab to cycle through buffers
vim.keymap.set('n', '<TAB>', utils.goto_next_buffer, defaults)

-- use tshift+tab to cycle through tabs
vim.keymap.set('n', '<S-TAB>', utils.goto_previous_buffer, defaults)

-- source the current file
vim.keymap.set('n', '<leader>x', ':source %<CR>')

-- close the current buffer
vim.keymap.set('n', '<M-w>', ':bd<CR>', defaults)

-- close all other buffers
vim.keymap.set('n', '<M-W>', utils.only_buffer, defaults)

-- goto tab #
vim.keymap.set('n', '<M-1>', ':tabnext 1<CR>', defaults)
vim.keymap.set('n', '<M-2>', ':tabnext 2<CR>', defaults)
vim.keymap.set('n', '<M-3>', ':tabnext 3<CR>', defaults)
vim.keymap.set('n', '<M-4>', ':tabnext 4<CR>', defaults)
vim.keymap.set('n', '<M-5>', ':tabnext 5<CR>', defaults)

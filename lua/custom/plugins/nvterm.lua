return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup()

    local ft_cmds = {
      irb = "irb " .. vim.fn.expand('%'),
      -- irb = "irb " .. vim.fn.expand('%'),
    }
    local toggle_modes = { 'n', 't' }
    local mappings = {
      { 'n',          '<C-l>', function() require("nvterm.terminal").send(ft_cmds[vim.bo.filetype]) end },
      { toggle_modes, '<A-h>', function() require("nvterm.terminal").toggle('horizontal') end },
      { toggle_modes, '<A-v>', function() require("nvterm.terminal").toggle('vertical') end },
      -- { toggle_modes, '<A-i>', function() require("nvterm.terminal").toggle('float') end },
      { {'t', 'i' }, 'jk', [[<C-\><C-n>]] },
      { toggle_modes, '<esc>', [[<C-\><C-n>]] },
      { toggle_modes, '<C-h>', [[<C-\><C-n><C-W>h]] },
      { toggle_modes, '<C-j>', [[<C-\><C-n><C-W>j]] },
      { toggle_modes, '<C-k>', [[<C-\><C-n><C-W>k]] },
      { toggle_modes, '<C-l>', [[<C-\><C-n><C-W>l]] },
    }
    local opts = { noremap = true, silent = true }
    for _, mapping in ipairs(mappings) do
      vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
    end
  end
}

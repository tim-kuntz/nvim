return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>tf", "<cmd>Neotree position=left toggle=true<cr>", desc = "Neotree Toggle Files" },
    { "<leader>tb", "<cmd>Neotree position=left toggle=true source=buffers<cr>", desc = "Neotree Toggle Buffers" },
    { "<leader>tg", "<cmd>Neotree position=left toggle=true source=git_status<cr>", desc = "Neotree Toggle Git Status" },
    { "<leader>tr", "<cmd>Neotree reveal %p<cr>", desc = "Neotree Reveal File" },
  },
}

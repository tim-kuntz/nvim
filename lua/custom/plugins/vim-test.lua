return {
  "vim-test/vim-test",

  keys = {
    { "<leader>Ts", "<cmd>TestSuite<cr>", desc = "Test Suite" },
    { "<leader>Tf", "<cmd>TestFile<cr>",  desc = "Test File" },
    { "<leader>Tn", "<cmd>TestNearest<cr>", desc = "Test Nearest" },
    { "<leader>Tl", "<cmd>TestLast<cr>", desc = "Test Last" },
    { "<leader>Tv", "<cmd>TestVisit<cr>", desc = "Test Visit" },
  },
}

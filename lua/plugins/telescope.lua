return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({})
    local builtin = require("telescope.builtin")

    -- Set keymaps
    vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope find diagnostics" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  tag = "0.1.8"
}

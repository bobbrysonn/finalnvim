return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    })
    telescope.load_extension("ui-select")

    local builtin = require("telescope.builtin")

    -- Set keymaps
    vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope find diagnostics" })
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "Telescope Lsp definitions" })
    vim.keymap.set("n", "<leader>gI", builtin.lsp_implementations, { desc = "Telescope Lsp implementations" })
    vim.keymap.set("n", "<leader>gR", builtin.lsp_references, { desc = "Telescope Lsp references" })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim"
  },
  tag = "0.1.8"
}

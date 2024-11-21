return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "cpp",
                "lua"
            },
            highlight = {
                enable = true
            },
            sync_install = true,
        })
    end
}

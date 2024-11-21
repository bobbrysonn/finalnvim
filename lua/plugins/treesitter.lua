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
            -- Experimental
            indent = {
                enable = true
            },
            rainbow = {
                enable = true,
                extended_mode = true,
            },
            sync_install = true,
        })
    end
}

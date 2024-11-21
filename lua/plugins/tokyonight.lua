return {
    "folke/tokyonight.nvim",
    
    config = function()
        vim.cmd([[ colorscheme tokyonight-moon ]])
    end,

    lazy = false,

    name = "tokyonight",

    priority = 1000
}

local custom_borders = {
	{ "╭", "FloatBorder" },
	{ "─", "FloatBorder" },
	{ "╮", "FloatBorder" },
	{ "│", "FloatBorder" },
	{ "╯", "FloatBorder" },
	{ "─", "FloatBorder" },
	{ "╰", "FloatBorder" },
	{ "│", "FloatBorder" },
}

return {
  "hrsh7th/nvim-cmp",

  -- Configuration
  config = function()
    local cmp = require "cmp"

    cmp.setup {
      mapping = {
        ["<C-n>"] = cmp.mapping.scroll_docs(4),
        ["<C-p>"] = cmp.mapping.scroll_docs(-4),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i" , "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" })
      },
      sources = {
        { name = "buffer" },
        { name = "nvim_lsp" }
      },
      window = {
        completion = { border = custom_borders },
        documentation = { border = custom_borders, winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None" }
      }
    }
  end,

  -- Dependencies
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp"
  }
}

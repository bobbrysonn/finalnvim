return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Enabling stuff
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if not client then
          return
        end

        local opts = { buffer = args.buf }

        if client.supports_method("textDocument/codeAction") then
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        end

        if client.supports_method("textDocument/declaration") then
          vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
        end

        if client.supports_method("textDocument/formatting") then
          vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, opts)
        end
      end
    })

    --
    lspconfig.clangd.setup({ capabilities = capabilities })
    lspconfig.cssls.setup({ capabilities = capabilities })
    lspconfig.lua_ls.setup({ capabilities = capabilities })
    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.ts_ls.setup({ capabilities = capabilities })
  end
}

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities();
      require("lspconfig").lua_ls.setup { capabilities = capabilities }
      require("lspconfig").clangd.setup { capabilities = capabilities }
      require("lspconfig").ts_ls.setup { capabilities = capabilities }
      require("lspconfig").tailwindcss.setup { capabilities = capabilities }
      require("lspconfig").gopls.setup {
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              nilness = true,
              unusedwrite = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      }
      --require("lspconfig").tailwindcss.setup {
      --capabilities = require('blink.cmp').get_lsp_capabilities(),
      --filetypes = { "html", "css", "scss", "javascript", "javascriptreact",
      --"typescript", "typescriptreact", "svelte", "vue" },
      --init_options = {
      --userLanguages = {
      --javascript = "javascript",
      --typescript = "typescript",
      --javascriptreact = "javascriptreact",
      --typescriptreact = "typescriptreact"
      --}
      --}
      --}
      vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end
          if client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end
            })
          end
        end
      })
    end
  }
}

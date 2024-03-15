return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-lspconfig").setup_handlers {
      -- The first entry (without a key) will be the default handler
      -- and will be called for each installed server that doesn't have
      -- a dedicated handler.
      function(server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup({})
      end,
      -- Next, you can provide a dedicated handler for specific servers.
      -- For example, a handler override for the `rust_analyzer`:
      ["lua_ls"] = function ()
        require("lspconfig").lua_ls.setup({
          settings = {
            Lua = {
              diagnostics = {
                globals = {'vim'}
              }
            }
          }
        })
      end
    }

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd(
      'LspAttach',
      {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set(
            'n',
            '<space>f',
            function()
              vim.lsp.buf.format { async = true }
            end,
            opts
          )
        end
      }
    )

    -- Workaround to only show diagnostics after saving buffer
    -- https://github.com/neovim/neovim/issues/13324#issuecomment-1592038788
    vim.api.nvim_create_autocmd(
      {"BufNew", "InsertEnter"},
      {
        callback = function(args)
          vim.diagnostic.disable(args.buf)
        end
      }
    )

    vim.api.nvim_create_autocmd(
      {"BufWrite"},
      {
        callback = function(args)
          vim.diagnostic.enable(args.buf)
        end
      }
    )
  end
}

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim"
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-lspconfig").setup_handlers({
      -- The first entry (without a key) will be the default handler
      -- and will be called for each installed server that doesn't have
      -- a dedicated handler.
      function(server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup({})
      end,
      -- Next, you can provide a dedicated handler for specific servers.
      -- For example, a handler override for the `rust_analyzer`:
      ["lua_ls"] = function()
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
    })

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd(
      'LspAttach',
      {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(args)
          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = args.buf }
          local client = vim.lsp.get_client_by_id(args.data.client_id)

          if client.server_capabilities.definitionProvider then
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          end

          if client.server_capabilities.hoverProvider then
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          end

          if client.server_capabilities.documentFormattingProvider then
            vim.keymap.set(
              'n',
              '<space>f',
              function()
                vim.lsp.buf.format({ async = true })
              end,
              opts
            )
          end
        end
      }
    )

    -- Reduce diagnostics noise by only keeping signcolumn signs enabled.
    -- vim.diagnostic.open_float keymap below can be used to show more details.
    vim.diagnostic.config({
      signs = true,
      underline = false,
      virtual_text = false
    })
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    -- Configures LSP hover window
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.max_height = opts.max_height or 30
      opts.max_width = opts.max_width or 120
      opts.border = opts.border or {
        {"🭽", "FloatBorder"},
        {"▔", "FloatBorder"},
        {"🭾", "FloatBorder"},
        {"▕", "FloatBorder"},
        {"🭿", "FloatBorder"},
        {"▁", "FloatBorder"},
        {"🭼", "FloatBorder"},
        {"▏", "FloatBorder"},
      }
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end
  end
}

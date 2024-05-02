return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local null_ls = require 'null-ls'
    local lsp_formatting = function(bufnr)
      vim.lsp.buf.format({
        filter = function(client)
          -- apply whatever logic you want (in this example, we'll only use null-ls)
          return client.name == "null-ls"
        end,
        bufnr = bufnr,
      })
    end

    -- if you want to set up formatting on save, you can use this as a callback
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    -- add to your shared on_attach callback
    local on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            lsp_formatting(bufnr)
          end,
        })
      end
    end
    local b = null_ls.builtins

    local goimports = b.formatting.goimports
    local e = os.getenv 'GOIMPORTS_LOCAL'
    if e ~= nil then
      goimports = goimports.with { extra_args = { '-local', e } }
    end
    local sources = {
      -- Go
      goimports,

      -- webdev stuff
      -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
      b.formatting.prettier.with { filetypes = { 'html', 'markdown', 'css' } }, -- so prettier works only on these filetypes

      -- Lua
      b.formatting.stylua,

      -- cpp
      b.formatting.clang_format,
    }
    null_ls.setup {
      debug = true,
      sources = sources,
      -- sources = {
      --   null_ls.builtins.diagnostics.djlint.with {
      --     diagnostic_config = {
      --       underline = false,
      --       virtual_text = false,
      --       signs = false,
      --     },
      --     method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
      --   },
      -- },
    }
  end,
}

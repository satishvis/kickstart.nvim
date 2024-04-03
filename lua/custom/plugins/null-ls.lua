return {
  'nvimtools/none-ls.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local null_ls = require 'null-ls'

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

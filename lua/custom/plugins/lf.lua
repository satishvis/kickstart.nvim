return {
  'lmburns/lf.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'akinsho/toggleterm.nvim', config = true },
  },
  config = function()
    require('lf').setup()
  end,
  keys = { -- load the plugin only when using it's keybinding:
    { '<leader><leader>', '<cmd>Lf<cr>', desc = 'Open Lf file manager' },
  },
}

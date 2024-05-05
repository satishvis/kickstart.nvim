return {
  'mikavilpas/yazi.nvim',
  config = function() end,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  event = 'VeryLazy',
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      '<leader>-',
      function()
        require('yazi').yazi()
      end,
      desc = 'Open Yazi',
    },
    {
      -- Open in the current working directory
      '<leader>cw',
      function()
        require('yazi').yazi(nil, vim.fn.getcwd())
      end,
      desc = "Open Yazi in nvim's working directory",
    },
  },
  ---@type YaziConfig
  opts = {
    open_for_directories = true,

    -- the type of border to use for the floating window. Can be many values,
    -- including 'none', 'rounded', 'single', 'double', 'shadow', etc. For
    -- more information, see :h nvim_open_win
    yazi_floating_window_border = 'rounded',
  },
}

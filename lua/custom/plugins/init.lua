-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'ellisonleao/glow.nvim', opts = {}, cmd = 'Glow' },
  { 'dstein64/vim-startuptime', lazy = false },
  { 'chentoast/marks.nvim', opts = {} },
  {
    'jacquesbh/vim-showmarks',
    config = function() end,
    cmd = 'DoShowMarks',
    lazy = false,
  },
  { 'ggandor/lightspeed.nvim', opts = {} },
  { 'notjedi/nvim-rooter.lua', opts = {}, lazy = false },
  { 'ledger/vim-ledger', opts = {}, lazy = true },
  { 'mattn/vim-gist', opts = {}, cmd = 'Gist', dependencies = { 'mattn/webapi-vim' } },
  { 'wakatime/vim-wakatime', lazy = false },
  { 'averms/black-nvim', lazy = false, ft = 'python' },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    opts = {},
    -- config = function()
    --   require('nvim-surround').setup {
    --     -- Configuration here, or leave empty to use defaults
    --   }
    -- end,
  },

  {
    'DreamMaoMao/yazi.nvim',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>gy', '<cmd>Yazi<CR>', desc = 'Toggle Yazi' },
    },
  },

  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true })
      vim.keymap.set('i', '<c-;>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true })
      vim.keymap.set('i', '<c-,>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true })
      vim.keymap.set('i', '<c-x>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true })
    end,
  },
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    event = {
      -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
      -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
      'BufReadPre '
        .. vim.fn.expand '~'
        .. '/vaults/**.md',
      'BufNewFile ' .. vim.fn.expand '~' .. '/vaults/**.md',
    },
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = 'personal',
          path = '~/vaults/personal',
        },
        {
          name = 'work',
          path = '~/vaults/work',
        },
      },

      -- see below for full list of options 👇
    },
  },
}

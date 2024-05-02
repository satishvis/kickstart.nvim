-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--          ╭─────────────────────────────────────────────────────────╮
--          │      This is the place I am getting all my plugins      │
--          ╰─────────────────────────────────────────────────────────╯
return {
  { 'ellisonleao/glow.nvim', opts = {}, cmd = 'Glow' },
  { 'dstein64/vim-startuptime', lazy = false },
  { 'chentoast/marks.nvim', opts = {} },
  { 'ggandor/lightspeed.nvim', opts = {} },
  { 'notjedi/nvim-rooter.lua', opts = {}, lazy = false },
  { 'ledger/vim-ledger', opts = {}, lazy = true },
  { 'mattn/vim-gist', opts = {}, cmd = 'Gist', dependencies = { 'mattn/webapi-vim' } },
  { 'wakatime/vim-wakatime', lazy = false },
  { 'averms/black-nvim', lazy = false, ft = 'python' },
  { 'jremmen/vim-ripgrep', lazy = false },
  { 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {} },
  { 'olexsmir/gopher.nvim', ft="go", opts = {} },
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = { 'kevinhwang91/promise-async' },
  -- },
  -- lazy = false,
  -- opts = {
  --   open_fold_hl_timeout = 150,
  --   close_fold_kinds_for_ft = {
  --     default = { 'imports', 'comment' },
  --     json = { 'array' },
  --     c = { 'comment', 'region' },
  --   },
  --   preview = {
  --     win_config = {
  --       border = { '', '─', '', '', '', '─', '', '' },
  --       winhighlight = 'Normal:Folded',
  --       winblend = 0,
  --     },
  --     mappings = {
  --       scrollU = '<C-u>',
  --       scrollD = '<C-d>',
  --       jumpTop = '[',
  --       jumpBot = ']',
  --     },
  --   },
  --   provider_selector = function(bufnr, filetype, buftype)
  --     return { 'treesitter', 'indent' }
  --   end,
  -- },
  -- },
  {
    'jacquesbh/vim-showmarks',
    config = function() end,
    cmd = 'DoShowMarks',
    lazy = false,
  },
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
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
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
      templates = {
        subdir = '../templates',
        date_format = '%Y-%m-%d-%a',
        time_format = '%H:%M',
      },
      -- see below for full list of options 👇
    },
  },
}

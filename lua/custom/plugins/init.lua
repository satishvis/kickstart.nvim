-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'ellisonleao/glow.nvim', config = function() end, cmd = 'Glow' },
  { 'dstein64/vim-startuptime', lazy = false },
  { 'chentoast/marks.nvim', config = function() end },
  { 'jacquesbh/vim-showmarks', config = function() end, cmd = 'DoShowMarks', lazy = false },
  { 'ggandor/lightspeed.nvim', config = function() end },
  { 'notjedi/nvim-rooter.lua', config = function() end, lazy = false },
  { 'vimwiki/vimwiki', config = function() end, lazy = true },
  { 'ledger/vim-ledger', config = function() end, lazy = true },
  { 'mattn/vim-gist', config = function() end, cmd = 'Gist', dependencies = { 'mattn/webapi-vim' } },
  { 'wakatime/vim-wakatime', lazy = false },
  { 'averms/black-nvim', lazy = false, ft = 'python' },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
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
}

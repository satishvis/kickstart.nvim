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
  { 'olexsmir/gopher.nvim', ft = 'go', opts = {} },
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
  },
  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
}

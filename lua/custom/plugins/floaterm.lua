vim.g.floaterm_opener = 'edit'
vim.api.nvim_create_user_command('LF', 'FloatermNew --width=0.9 --height=0.9 --name=LF lf', {})
vim.api.nvim_create_user_command('Rg', 'FloatermNew --width=0.9 --height=0.9 rg', {})
vim.keymap.set('t', '<leader>tf', '<C-\\><C-n>:FloatermToggle<CR>q', { desc = 'Floaterm Toggle' })

return {
  'voldikss/vim-floaterm',
  lazy = false,
  keys = {
    { '<leader>tf', '<cmd>FloatermToggle --height=0.9 --width=0.9 --wintype=floating --name=floaterm1 --autoclose=2<cr>', desc = 'Toggle floating terminal' },
    { '<leader>rg', '<cmd>Rg<cr>', desc = 'Open floating terminal with ripgrep' },
    { '<leader>lf', '<cmd>LF<cr>', desc = 'Open floating terminal with ripgrep' },
  },
}

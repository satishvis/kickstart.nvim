vim.g.floaterm_opener = 'edit'
vim.api.nvim_create_user_command('LF', 'FloatermNew --width=0.9 --height=0.9 --name=LF lf', {})
vim.api.nvim_create_user_command('Rg', 'FloatermNew --width=0.9 --height=0.9 rg', {})
return {
  'voldikss/vim-floaterm',
  lazy = false,
  keys = {
    { '<leader>tt', '<cmd>FloatermToggle --height=0.8 --width=0.8 --wintype=floating --name=floaterm1 --autoclose=2<cr>', desc = 'Open floating terminal' },
    { '<leader>rg', '<cmd>Rg<cr>', desc = 'Open floating terminal with ripgrep' },
    { '<leader>lf', '<cmd>LF<cr>', desc = 'Open floating terminal with ripgrep' },
  },
}

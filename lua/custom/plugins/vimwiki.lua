vim.g.vimwiki_ext = '.md'
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_use_calendar = 1
vim.g.vimwiki_list = {
  {
    path = '/home/satish/pCloudDrive/SharedFiles/Vimwiki/',
    syntax = 'markdown',
    ext = '.md',
  },
}
vim.g.vimwiki_folding = 'expr'
vim.g.vimwiki_dir_link = 'index'
return {
  'vimwiki/vimwiki',
  lazy = true,
  config = function() end,
}

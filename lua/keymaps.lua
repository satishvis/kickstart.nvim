-- My shortcuts
vim.keymap.set('n', ';', ':', { desc = 'Enter command mode' })
vim.keymap.set('n', ',w', '<cmd>update<CR>', { desc = 'Save' })
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Exit Insert mode' })
vim.keymap.set('n', '<leader>u', '<cmd>lua require("undotree").toggle()<CR>', { desc = 'Undotree Toggle' })
vim.keymap.set('n', '<leader>cd', '<cmd>lcd %:p:h<cr>:pwd<cr>', { desc = 'Change Directory' })
vim.keymap.set('n', '<leader>cb', '<cmd>lua require("comment-box").ccbox()<CR>', { desc = 'Comment Box Centered' })

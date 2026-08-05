vim.pack.add { 'https://github.com/mikavilpas/yazi.nvim' }
require('yazi').setup {
  open_for_directories = true,
}
vim.keymap.set('n', '<leader>e', '<cmd>Yazi<cr>', { desc = 'Open Yazi file manager' })
vim.keymap.set('n', '<leader>E', function() require('yazi').yazi() end, { desc = 'Open Yazi in current file parent directory' })

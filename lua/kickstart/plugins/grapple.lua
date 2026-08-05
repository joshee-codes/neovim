-- grapple.nvim: Pin frequently-used files, jump with <leader>1..4.
-- Per-git-branch scopes so tags don't bleed between branches.
--
-- Usage:
--   <leader>m  - Toggle grapple on current file
--   <leader>M  - Grapple menu (jump to pinned files)

vim.pack.add({ 'https://github.com/cbochs/grapple.nvim' })
require('grapple').setup({ scope = 'git_branch' })

vim.keymap.set('n', '<leader>m', '<cmd>Grapple toggle<cr>', { desc = 'Grapple toggle tag' })
vim.keymap.set('n', '<leader>M', '<cmd>Grapple toggle_tags<cr>', { desc = 'Grapple menu' })

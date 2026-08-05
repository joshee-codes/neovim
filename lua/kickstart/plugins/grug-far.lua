-- grug-far.nvim: Buffer-based find-and-replace across the project using ripgrep.
-- Live match preview, diff before applying.
--
-- Usage:
--   <leader>sr  - Search/Replace in project (normal and visual mode)
--
-- NOTE: Requires ripgrep >= 14. Install with: sudo apt install ripgrep

vim.pack.add({ 'https://github.com/MagicDuck/grug-far.nvim' })
require('grug-far').setup({})

vim.keymap.set({ 'n', 'v' }, '<leader>sr', function() require('grug-far').open() end, { desc = 'Search/Replace project' })

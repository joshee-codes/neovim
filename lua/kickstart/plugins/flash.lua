-- flash.nvim: Label-based jumping.
-- Type a trigger, then 1-2 characters — every match on screen gets a label.
-- Type the label to teleport there.
--
-- Usage:
--   <leader>fl  - Flash jump (normal/visual/operator mode)

vim.pack.add { 'https://github.com/folke/flash.nvim' }
require('flash').setup {}

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>fl', function() require('flash').jump() end, { desc = 'Flash jump' })

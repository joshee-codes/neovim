require('mini.files').setup {
  windows = {
    preview = true,
  },
}
vim.keymap.set('n', '\\', function() require('mini.files').open(vim.api.nvim_buf_get_name(0)) end, { desc = 'mini.files: reveal current files' })

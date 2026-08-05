-- smear-cursor.nvim: Smooth cursor animation (drag-and-snap effect)
-- https://github.com/sphamba/smear-cursor.nvim

vim.pack.add { 'https://github.com/sphamba/smear-cursor.nvim' }

require('smear_cursor').setup {
  -- Stiffness
  -- smear_between_buffers = true,
  -- stiffness = 0.9,
  -- trailing_stiffness = 0.8,
  -- distance_stop_animating = 0.3,
  -- How many frames to use for the animation
  max_length = 12,
  -- Animation duration in milliseconds
  duration = 120,
  -- Cursor types to animate (default: all)
  cursor_shapes = {
    ['n'] = 'block',
    ['i'] = 'verbar',
    ['r'] = 'horbar',
    ['v'] = 'block',
    ['V'] = 'block',
    ['c'] = 'block',
  },
  -- -- Smear colors (use terminal default or set specific colors)
  smear_colors = {
    ['n'] = '#ffffff',
    ['i'] = '#ffffff',
    ['v'] = '#ffffff',
    ['V'] = '#ffffff',
    ['r'] = '#ffffff',
    ['c'] = '#ffffff',
  },
  -- -- Enable smooth scrolling
  -- smooth_scroll = true,
}

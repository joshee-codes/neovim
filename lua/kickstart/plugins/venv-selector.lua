-- venv-selector.nvim: Python virtual environment selection without restart
-- Automatically detects .venv, venv, env directories and lets you pick one.
-- Points the LSP (basedpyright) at the right interpreter so completions/diagnostics work.
--
-- Usage:
--   :VenvSelector   - pick a venv from the list
--   .venv auto-detect on buffer enter
vim.pack.add({ 'https://github.com/linux-cultist/venv-selector.nvim' })

require('venv-selector').setup {
  detection_patterns = { '.venv', 'venv', '.env', 'env' },
  detection_priority = 1,
  show_venv_display_in_statusbar = false, -- mini.statusline already shows what we need
  parse_pyproject_toml = true,
  run_hook_on_activation = false,
  hook = nil,
}

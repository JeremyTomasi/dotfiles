local status, toggleterm = pcall(require,"toggleterm")
if (not status) then return end

toggleterm.setup {
  open_mapping = [[<C-s>]],
  direction = 'float',
  shell = vim.o.shell,
  float_opts = {
    border = "curved"
  }
}

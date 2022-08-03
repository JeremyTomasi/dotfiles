if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ;f <Cmd>Telescope find_files<CR>
nnoremap <silent> ;r <Cmd>Telescope live_grep<CR>
nnoremap <silent> \\ <Cmd>Telescope buffers<CR>
nnoremap <silent> ;t <Cmd>Telescope help_tags<CR>

lua << EOF
local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      }
    }
  }
}
EOF

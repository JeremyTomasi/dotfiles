if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF

local lspsaga = require('lspsaga')
lspsaga.setup({
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
  diagnostic_header_icon = " ",
  code_action_prompt = {
    enable = false
  }
})

EOF

nnoremap <silent> gj <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gk <Cmd>Lspsaga hover_doc<CR>
nnoremap <silent> gd <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent> gp <Cmd>Lspsaga preview_definition<CR>

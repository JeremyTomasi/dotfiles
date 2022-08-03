if !exists('g:lspconfig')
  finish
endif

lua << EOF

local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client,bufnr)
  local function buf_set_keymap(...) vim.api.nvim_set_buf_keymap(bufnr,...) end
  local function buf_set_option(...) vim.api.nvim_set_buf_option(bufnr,...) end

  -- Mappings options
  local opts = {noremap = true, silent = true}
end

require('nvim-lsp-installer').setup()

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = {"typescript", "typescriptreact"}
}

EOF

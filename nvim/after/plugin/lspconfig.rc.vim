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

  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }
end

require('nvim-lsp-installer').setup()

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = {"javascript","javascriptreact","typescript", "typescriptreact"}
}

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

nvim_lsp.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- icon
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      spacing = 4,
      prefix = ''
    }
  }
)

EOF

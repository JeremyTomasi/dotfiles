call plug#begin()
  Plug 'folke/tokyonight.nvim'

  if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
  endif
call plug#end()

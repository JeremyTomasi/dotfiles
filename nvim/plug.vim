call plug#begin()
  Plug 'folke/tokyonight.nvim'

  if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'

    Plug 'kkharji/lspsaga.nvim'
  endif
call plug#end()

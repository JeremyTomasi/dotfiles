call plug#begin()
  Plug 'folke/tokyonight.nvim'

  if has('nvim')
    Plug 'neovim/nvim-lspconfig'
  endif
call plug#end()

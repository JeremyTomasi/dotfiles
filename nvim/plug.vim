call plug#begin()
  Plug 'folke/tokyonight.nvim'

  if has('nvim')
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'

    Plug 'kkharji/lspsaga.nvim'

    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'windwp/nvim-autopairs'
  endif
call plug#end()

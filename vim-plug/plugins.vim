" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" ============== Themes ==============
    Plug 'joshdick/onedark.vim'
    Plug 'NLKNguyen/papercolor-theme'

" =========== Vim-Airline ============
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

" ============ LSP and Cmp ===========
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp-status.nvim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'

" ============ Telescope =============
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim' 

" ========= Git Integration ==========
    Plug 'TimUntersberger/neogit' 

call plug#end()

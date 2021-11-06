source $HOME/.config/nvim/vim-plug/plugins.vim

lua require "init"

" TODO: move lsp config somewhere else
lua require "lspconfig".ccls.setup{}

" ======== Themes (uncomment only one) ========
" source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/papercolor.vim

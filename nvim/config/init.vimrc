call plug#begin('~/.config/nvim/plugged')

" colorschemes
Plug 'arcticicestudio/nord-vim'

" general
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'haya14busa/incsearch.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'tmhedberg/SimpylFold'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" editing
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/camelcasemotion'
Plug 'lilydjwg/colorizer', { 'on': 'ColorToggle' }

call plug#end()

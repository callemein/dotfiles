filetype plugin indent on

" Theme
set bg=dark
let g:nord_italic_comments=1
colorscheme nord

" Statusline
set laststatus=2        " Always show statusbar
set noshowmode          " Dont show mode -> already in statusline

" make background transparent
hi Normal ctermbg=NONE
hi EndOfBuffer ctermbg=NONE
hi LineNr ctermbg=234

" deoplete
let g:deoplete#enable_at_startup = 1
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout = 1
let g:SuperTabClosePreviewOnPopupClose = 1

" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1

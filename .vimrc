execute pathogen#infect()
execute pathogen#helptags()
set nocompatible

" Enable syntax highlighting
syntax on
filetype plugin indent on
set background=dark

" Set tabbing=4 spaces
set expandtab " converts tabs to spaces
set tabstop=4 "use 4 spaces for a tab
set shiftwidth=4 "use 4 spaces for auto indent

" Auto reloading of .vimrc
autocmd! bufwritepost .vimrc source %
" Better control/pasting
set pastetoggle=<F2>
set clipboard=unnamed

" Improved indenting code blocks
vnoremap < <gv
vnoremap > >gv 

" Show whitespaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Show line numbers & length
set number
set tw=79 "width of doc
set nowrap "don't wrap on load
set fo-=t " don't wrap on text change
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Set window length & width
if has("gui_running")
    set lines=999 columns=100
else
    if exists("+lines")
        set lines=50
    endif
    if eixsts("+columns")
        set columns=100
    endif
endif
" Pathogen bundle - Background for less
" eye strain
colorscheme solarized

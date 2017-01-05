" Explanations:
" https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/

:imap jk <Esc>
:map q! q1
:nnoremap ; :
:nnoremap : ;
:map <M-up> ddkkp
:imap <M-up> jkddkkpi
:map <M-down> ddp
:imap <M-down> jkddpi
:nnoremap A a
:nnoremap a A
:nmap <Left> <<
:nmap <Right> >>

" Indent Options
set autoindent
set expandtab
" set filetype indent on
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Performance Options
set complete-=i
" set lazyredraw

" Text Rendering Options
set display+=lastline
set encoding=utf-8
set linebreak
set scrolloff=5
set sidescrolloff=5
syntax enable
set wrap

" User Interface Options
set laststatus=2
set ruler
set wildmenu
" set tabpagemax=50
" :colorscheme wombat256mod
set cursorline
set noerrorbells
set visualbell
set  mouse=a
set title
set background=dark

" Code Folding Options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Miscellaneous Options
set autoread
set backspace=indent,eol,start
" set confirm
set history=1000
set nomodeline
set spell

" set side numbers to show line num in insert mode
set rnu
function ToggleNumbersOn()
    set rnu!
    set nu
endfunction
function ToggleRelativeOn()
    set nu!
    set rnu
endfunction
autocmd FocusLost * :call ToggleNumbersOn()
autocmd FocusGained * :call ToggleRelativeOn()
autocmd InsertEnter * :call ToggleNumbersOn()
autocmd InsertLeave * :call ToggleRelativeOn()

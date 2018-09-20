call plug#begin('~/.local/share/nvim/plugged')
  """" Syntax
    Plug 'mhartington/oceanic-next'       " Syntax Highlighting & theme
    Plug 'pangloss/vim-javascript'        " Javascript syntax highlighting
    Plug 'mxw/vim-jsx'                    " Syntax highlighting for react
  """" END Syntax

  """" Themes and UI
    Plug 'vim-airline/vim-airline'        " Status Bar
    Plug 'ryanoasis/vim-devicons'         " Icon pack for term
    Plug 'Yggdroot/indentLine'            " white-space chars before code
    Plug 'christoomey/vim-tmux-navigator' " Vim and Tmux interaction
    Plug 'tmux-plugins/vim-tmux'          " Syntax and special funcs for .tmux.conf
  """" END Themes and UI

  """" Add-ons
    Plug 'scrooloose/nerdtree'            " File browser
    Plug 'scrooloose/nerdcommenter'       " Commenting tool
    Plug '~/.fzf'                         " Use fuzzy finder
    Plug 'mattn/emmet-vim'                " Auto-complete syntax
  """" END Add-ons
call plug#end()

"""" Emmet Vim
  let g:user_emmet_leader_key='<C-S>'
"""" END Emmet Vim

"""" Oceanic Next Plugin
  if (has("termguicolors"))
   set termguicolors
  endif
  
  " Theme
  syntax enable
  colorscheme OceanicNext
  
  " Airline Theme
  let g:airline_theme='oceanicnext'
"""" END Oceanic Next Plugin

"""" Airline Plugin
  let g:airline_left_sep='>'
  let g:airline_right_sep='<'
  let g:airline_detect_paste=1
  let g:airline_inactive_collapse=1
  let g:airline_symbols_ascii=1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
"""" END Airline Plugin

"""" Indent Line
  let g:indentLine_setColors=0
  let g:indentLine_char='|'
"""" ENDIndent Line

"""" Remaps
  :nnoremap ; :
  :nnoremap : ;
  " Jump to end of line
  :nnoremap a A
  :inoremap jk <esc><esc>
  :noremap <esc> <esc><esc>
  " Delete line with 1 stroke
  :nnoremap d dd
  " Quit file, but not if dirty
  :noremap  q1 :q<cr>
  " Cut till end of line
  :nnoremap c4 c$
  " Cut inside xx
  :nnoremap c" ci"
  :nnoremap c' ci'
  :nnoremap c) ci)
  :nnoremap c} ci}
  :nnoremap c] ci]
  " Cut entire word
  :nnoremap cw ciw
  " Move current line left
  :nnoremap H <<
  " Move current line right
  :nnoremap L >>
  " Move current line down
  :nnoremap J ddp
  " Move current line up
  :nnoremap K kddpk
  " Move block left
  :vnoremap H <gv
  " Move block right
  :vnoremap L >gv
  " Insert text multiline
  :vnoremap i I

  " Surrounds
  :inoremap "" ""<esc>i
  :inoremap '' ''<esc>i
  :inoremap () ()<esc>i
  :inoremap {} {}<esc>i
  :inoremap [] []<esc>i
  :inoremap <> <><esc>i
"""" END Remaps

"""" Leader maps
  let mapleader = '-'
  " Copy and paste to external buffer
  :vnoremap <leader>cop :'<,'>w! ~/.cp<cr>
  :nnoremap <leader>pas :r ~/.cp<cr>
  " Nerdtree
  :nnoremap <leader>n :NERDTreeToggle<cr>
  " Create vim splits
  :nnoremap <leader>y :vsp<cr><c-w>l
  :nnoremap <leader>x :sp<cr><c-w>j
  " Zoom a vim pane
  :nnoremap <leader>z :wincmd _<cr>:wincmd \|<cr>
  :nnoremap <leader>f :wincmd =<cr>
  " Switch to next buffer
  :nnoremap <leader>b :bn<cr>
  " Ctrl P but with fzf
  :nnoremap <C-p> :FZF<cr>
  " Ctrl P set directory
  :nnoremap <C-f> :FZF 
  " Ctrl P actions
  let g:fzf_action = {
    \'alt-x': 'split',
    \'alt-y': 'vsplit'}
"""" END Leader maps

"""" System Settings
  " Indent Options
  """"""""""""""""
    " Indent on creation of next line
    set autoindent
    " Convert tabs to spaces
    set expandtab
    " When shifting left/right round
    "  to the nearest multiple of
    "  the 'shiftwidth' param
    set shiftround
    " See shiftround
    set shiftwidth=2
    " Set tab to spaces
    set smarttab
    " Set tab to number of spaces
    set tabstop=2
  """"""""""""""""

  " Search Options
  """"""""""""""""
    " Enable Search Highlighting
    set hlsearch
    " Ignore case while searching
    set ignorecase
    " Incremental search that shows partial matches
    set incsearch
    " Auto switch to case sensitive search when
    "  query contains a capital
    set smartcase
  """"""""""""""""

  " User Interface Options
  """"""""""""""""""""""""
    " Show relative line numbers on left
    set relativenumber
    " Show line number at cursor
    set number
    " Display command line's tab complete options
    "  as a menu
    set wildmenu
    set wildmode=longest:full,full
    " Disable beep sounds
    set noerrorbells
    " Flash screen when beep sounds
    set visualbell
    set mouse=a
    " Change cursor for mode
    " Allow mouse for scroll
    set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
    " Prevent text wrapping
    set nowrap
  """"""""""""""""""""""""

"""" ENDSystem Settings

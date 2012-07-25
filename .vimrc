set nocompatible " be iMproved

" Vundle init
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundles
Bundle 'Command-T'
Bundle 'twilight'
Bundle 'twilight256.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'The-NERD-tree'
nmap <silent> <F2> :NERDTreeToggle<cr>
nmap <silent> <Leader>r :NERDTreeFind<cr>

" Tabs and spaces stuff.
set shiftwidth=2
set tabstop=2
set expandtab

" Folding.
set foldmethod=indent  " Oops, Need to tidy up my files
set foldlevelstart=9999

" Search
set hlsearch  " highlight results
set incsearch  " increment search

" Hide buffers instead of closing them.
set hidden

" Don't wrap lines. I don't like it.
set nowrap

" Indenting.
set autoindent

" Enable mouse
set mouse=a

" Do not backup.
set nobackup
set nowritebackup

" Show line numbers.
" set number

" Terminal colorscheme
set t_Co=256  " Force 256 colors
colorscheme twilight256

" GUI specific options
if has('gui_running')
  " Highlight current line.
  set cursorline

  " Change color scheme
  colorscheme twilight

  " Font
  set guifont=Ubuntu\ Mono\ 15

  " Remove menu bar
  set guioptions-=m
  set guioptions-=T
endif

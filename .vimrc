"dein Scripts----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/dateshima/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/dateshima/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/dateshima/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('preservim/nerdtree')
call dein#add('tpope/vim-figitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-surround')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('ryanoasis/vim-devicons')

call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1

call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts------------------------


" show line number
set number

" no swap file
set noswapfile

" no backup file
set nobackup

" setting charactor code
set fenc=utf-8

" clipboad
set clipboard=unnamedplus

" visual bell
set visualbell

" visual tabs
set list listchars=tab:\▸\-

" remove high light
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" tab -> space
set expandtab

" search result high light
set hlsearch

" incremental search
set incsearch

" status line always displayed
set laststatus=2

" syntax high light on
syntax enable
set background=dark
colorscheme solarized

" automation indent
set autoindent

" show command
set showcmd

" normal-mode command displayed at the bottom right 
set background=dark

" command-line input is wild-card
set wildmenu

" baffer is hidde
set hidden

" change the behavior of the backspace key 
set backspace=indent,eol,start

let g:airline_theme = 'wombat'               " テーマの指定
let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
let g:airline_powerline_fonts = 1            " Powerline Fontsを利用

" python run <F5>
nnoremap <silent><F5> :!python3 %<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" Insert-mode Esc - jj key bind
inoremap <silent> jj <ESC>

filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'hdima/python-syntax'
Bundle 'kevinw/pyflakes-vim'
Bundle 'Yggdroot/indentLine'
Bundle 'vim-scripts/matchit.zip'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-easymotion'

" 编辑相关设置
set shortmess=atl
set nu
set go=''
set confirm
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nobackup
set langmenu=zh_CN.UTF-8
set filetype=python
au BufNewFile,BufRead *.py,*.pyw setf python

" 显示相关设置
set t_Co=256
let g:solarized_termcolors=256
set background=dark
if has("gui_running")
    colorscheme solarized
endif
set guifont=DejaVu\ Sans\ Mono\ 12
set guioptions=aegic
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"colorscheme molokai
"colorscheme solarized

" 系统相关设置
set autochdir
set autoread


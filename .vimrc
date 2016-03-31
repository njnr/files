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

set t_Co=256
let g:solarized_termcolors=256
set background=dark

colorscheme molokai
"colorscheme solarized

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.hs,*.vim 2match Underlined /.\%81v/

" 超过80个的字符高亮
"au BufWinEnter * let w:m1=matchadd('Search', '\%<88v.\%>81v', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

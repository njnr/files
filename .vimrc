filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
"Bundle 'tomasr/molokai'
"Bundle 'altercation/vim-colors-solarized'
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
Bundle 'plasticboy/vim-markdown'

" 编辑相关设置
set shortmess=atl
set nu
set go=''
set confirm
"自动缩进
set autoindent
"智能缩进
set smartindent
"设置tab
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"不自动备份
set nobackup
set langmenu=zh_CN.UTF-8
set filetype=python
au BufNewFile,BufRead *.py,*.pyw setf python

" 显示相关设置
syntax enable
set ruler
"let g:solarized_termcolors=256
set background=dark
if has("gui_running")
    colorscheme solarized
endif
set guifont=DejaVu\ Sans\ Mono\ 12
set guioptions=aegic
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%79v.\+/

colorscheme solarized 
"colorscheme solarized

"自动切换当前目录 
set autochdir
"自动读取外部修改
set autoread
"设置历史纪录
set history=400
"设置命令行高
set cmdheight=2
"减少刷新
set lz
"设置退格键
set backspace=eol,start,indent
"设置跨行键
set whichwrap+=<,>,h,l
"搜索时忽略大小写
set ignorecase
"搜索时高亮关键字
set hlsearch
"设置magic
set magic
"关闭提示音
set noerrorbells
set novisualbell
"所有数字都以10进制处理
set nrformats=
"对YAML支持
let g:vim_markdown_frontmatter=1

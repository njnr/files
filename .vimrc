filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" 插件管理
Bundle 'gmarik/vundle'
"Bundle 'tomasr/molokai'
"Bundle 'altercation/vim-colors-solarized'
" python语法检查
Bundle 'hdima/python-syntax'
"Bundle 'kevinw/pyflakes-vim'
" 对齐线插件
Bundle 'Yggdroot/indentLine'
" 扩展了％范围
Bundle 'vim-scripts/matchit.zip'
" 加强了目录搜索
Bundle 'kien/ctrlp.vim'
" 模拟目录结构
Bundle 'scrooloose/nerdtree'
" 快速注释取消注释
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/rainbow_parentheses.vim'
" 智能补全
Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'plasticboy/vim-markdown'
" 状态栏插件带切换buffer功能
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
" 语法检查
Bundle 'scrooloose/syntastic'

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
" 打开状态标尺
set ruler
" 突出现实当前行
set cursorline
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
set cmdheight=1
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

" 以下是对airline的设置
let g:airline_theme="luna" 

"这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   

 "打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
 "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
" nnoremap <C-P> :bp<CR>

set laststatus=2

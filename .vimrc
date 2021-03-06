filetype off
set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" 插件管理
Bundle 'gmarik/vundle'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
" python语法检查
Bundle 'hdima/python-syntax'
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
" 括号高亮
Bundle 'kien/rainbow_parentheses.vim'
" 智能补全
"Bundle 'Valloric/YouCompleteMe'
" 智能搜索
Bundle 'Lokaltog/vim-easymotion'
" 状态栏插件带切换buffer功能
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
" python 自动缩进
Bundle 'hynek/vim-python-pep8-indent'
" 自动设置格式排版
Bundle 'godlygeek/tabular'
" 快速执行当前文件
Bundle 'thinca/vim-quickrun'

" 编辑相关设置
set shortmess=atl
set nu
set relativenumber
set go=''
set confirm
"自动缩进
set autoindent
"智能缩进
set smartindent
"设置tab
set cindent
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"根据文本类型进行缩进，覆盖掉默认的
autocmd FileType python set textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79

"不自动备份
set nobackup
set nowritebackup
set noswapfile
set langmenu=zh_CN.UTF-8
"中文帮助
set helplang=cn
set filetype=python
au BufNewFile,BufRead *.py,*.pyw setf python
" 显示相关设置
syntax enable
" 打开状态标尺
set ruler
" 突出现实当前行
set cursorline
set cursorcolumn
"set cc=80
"let g:solarized_termcolors=256
"set background=dark

"match OverLength /\%79v.\+/
colorscheme molokai 
" mac系统下访问剪贴板
"set clipboard=unnamed
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


" 将leader键设为,
let mapleader=","
let g:mapleader=","

"set novisualbell
"隐藏 .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
"让代码变的漂亮
let python_highlight_all=1
"所有数字都以10进制处理
set nrformats=
"对YAML支持
"let g:vim_markdown_frontmatter=1

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
" 这个很重要，不然底部无法正常显示airline
set laststatus=2
" YouCompleteme
let g:ycm_autoclose_preview_window_after_completion=0
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 若是html文件就加入文件模式
autocmd BufNewFile *html exec ":call SetHtmlTitle()"
func SetHtmlTitle()
    call setline(1,"<!DOCTYPE html>")
    call append(line("."),"<html lang='zh'>")
    call append(line(".")+1,"<head>")
    call append(line(".")+2,"<meta charset='UTF-8'>")
    call append(line(".")+3,"<title></title>")
    call append(line(".")+4,"</head>")
    call append(line(".")+5,"<body>")
    call append(line(".")+6,"</body>")
    call append(line(".")+7,"</html>")
endfunc
    
" Suzzz：  模仿上面，新建python文件时，添加文件头

autocmd BufNewFile *py exec ":call SetPythonTitle()"

func SetPythonTitle()
    call setline(1,"#!/usr/bin/env python")
    call append( line("."),"#-*- coding: utf-8 -*-" )
    call append(line(".")+1," ")
    call append(line(".")+2, "\# File Name: ".expand("%")) 
    call append(line(".")+3, "\# Author: imguagua") 
    call append(line(".")+4, "\# mail: harry.fan@foxmail.com") 
    call append(line(".")+5, "\# Created Time: ".strftime("%Y-%m-%d",localtime()))    
endfunc

" tmux模式下，设定底色
if exists('$TMUX')
    set term=xterm-256color
endif

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:acp_enableAtStartup = 0

" enable completion from tags
let g:ycm_collect_identifiers_from_tags_files = 1

" remap Ultisnips for compatibility for YCM
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Haskell post write lint and check with ghcmod
" $ `cabal install ghcmod` if missing and ensure
" ~/.cabal/bin is in your $PATH.
if !executable("ghcmod")
    autocmd BufWritePost *.hs GhcModCheckAndLintAsync
endif

" For snippet_complete marker.
if !exists("g:spf13_no_conceal")
    if has('conceal')
        set conceallevel=2 concealcursor=i
    endif
endif

" Disable the neosnippet preview candidate window
" When enabled, there can be too much visual noise
" especially when splits are used.
set completeopt-=preview

" set Ctags
set tags=tags;

" set NerdCommenter

filetype plugin on

" 设置键位以对应自动折行
noremap <silent><expr> j (v:count==0 ? 'gj':'j')
noremap <silent><expr> k (v:count==0 ? 'gk':'k')

"设置背景透明
hi Normal  ctermfg=252 ctermbg=none

map <F8> <Esc>:NERDTree <CR>

"设置easymotion
"nmap s <Plug>(easymotion-s2)
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap <leader>s <Plug>(easymotion-overwin-f)
nmap <leader>s <Plug>(easymotion-overwin-f2)

"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

" thinca/vim-quickrun
let g:quickrun_config = {
    \   "_" : {
        \       "outputter" : "message",
        \   },
    \}

let g:quickrun_no_default_key_mappings = 1
    nmap <Leader>r <Plug>(quickrun)
    map <F10> :QuickRun<CR>

"自定义的一些键盘映射
nmap <leader>w :w!<CR>

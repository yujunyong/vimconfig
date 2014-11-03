"***********************************************************************
" ===> Vundle.vim Plugin 管理
"***********************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

" ---> vim界面
"*************************************************
" 显示以空格缩进的线
Plugin 'Yggdroot/indentLine'

" vim 的theme
Plugin 'altercation/vim-colors-solarized'

" js语法高亮
Plugin 'JavaScript-syntax'

" velocity语法高亮
Plugin 'lepture/vim-velocity'

" markdown语法高亮
Plugin 'plasticboy/vim-markdown'

" less语法高亮
Plugin 'groenewege/vim-less'

" 状态栏加强，美化
Plugin 'bling/vim-airline'

" 在terminal下,不同模式中改变光标的形状
" Plugin 'jszakmeister/vim-togglecursor'

" 使terminal的colortheme和gui的有相同效果
" Plugin 'godlygeek/csapprox'

" ---> 效率
"*************************************************
" js语法，规范检察工具
Plugin 'Shutnik/jshint2.vim'

" 格式化代码工具
Plugin 'editorconfig/editorconfig-vim'

" 管理wordpress blog
" Plugin 'pkufranky/VimRepress'

" 快速编写html，css的代码
Plugin 'mattn/emmet-vim'

" xml document tag completion and tag jumping.
Plugin 'sukima/xmledit'

" 代码自动补全
" Plugin 'Valloric/YouCompleteMe'

" 编辑选中字符的两边符号
Plugin 'tpope/vim-surround'

" 添加注释
Plugin 'tpope/vim-commentary'

" 扩展'.'命令，支持surround.vim, commentary.vim
Plugin 'tpope/vim-repeat'

" 代码对齐
Plugin 'godlygeek/tabular'

" awk文本分析处理
Plugin 'tejr/vawk'

" 在insert-modes, command-line modes在绑定emacs快捷键
Plugin 'maxbrunsfeld/vim-emacs-bindings'

" Sublime text 的多标签功能
" Plugin 'terryma/vim-multiple-cursors'

" 整合ack
Plugin 'Ack.vim'

" 浏览代码的方法，变量
Plugin 'taglist.vim'

" 浏览文件
Plugin 'The-NERD-tree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"***********************************************************************
" ===> Plugin 配置
"***********************************************************************

" ---> jshint2 配置
"*************************************************
" set JSHint command path if it installed locally
let jshint2_command='/usr/local/bin/jshint'

" Lint JavaScript files after reading it
" let jshint2_read=1

" Lint JavaScript files after saving it
" let jshint2_save=1

" Do not automatically close orphaned error lists
let jshint2_close=0

" Skip lint confirmation for non JavaScript files
let jshint2_confirm=0

" Do not use colored messages
" let jshint2_color=0

" Hide error codes in error list (if you don't use error ignoring or error codes confuses you)
let jshint2_error=0

" Set default height of error list
let jshint2_height=20

" ---> indentLine 配置
"*************************************************
let g:indentLine_color_term=239
let g:indentLine_char='┆'

" ---> JavaScript syntax 配置 javascript语法高亮Plugin
"*************************************************
" 打开javascript折叠
let b:javascript_fold=1

" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

" ---> vimRepress 配置
"*************************************************
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''

" ---> vimRepress 配置
"*************************************************
" let VIMPRESS=[{'username':'michael', 'password':'michael_geek', 'blog_url':'http://localhost/wordpress/'}]

" ---> vim-surround 配置
"*************************************************
" let g:surround_37="{% \r %}"
" let g:surround_123="{{ \r }}"

" ---> terryma/vim-multiple-cursors 配置
"*************************************************
" 允许visual mode下的多光标
" g:multi_cursor_exit_from_visual_mode

" 允许insert mode下的多光标
" g:multi_cursor_exit_from_insert_mode

" Default highlighting (see help :highlight and help :highlight-link)
" highlight multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
" highlight link multiple_cursors_visual Visual



"***********************************************************************
" ===> 基本设置
"***********************************************************************
" 设置vim保存的命令数
set history=700

" 设置map leader 用来绑定自定义快捷键, 默认值是'\'
let mapleader = ","
let g:mapleader = ","

" 配置backspace,使它在terminal能正确使用
set backspace=eol,start,indent

" 禁用scroll bar
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"打开 WiLd menu
set wildmenu

" 忽略下列文件
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" 设置快速保存快捷键
nmap <leader>w w !sudo tee % > /dev/null

" ---> 文件相关
"*************************************************
" 设置当文件在外面被改变时自动加载
set autoread

" 设置unix为标准文件类型
set ffs=unix,dos,mac

" 关闭备份文件功能
set nobackup
set writebackup
set noswapfile

"***********************************************************************
" ===> vim 界面
"***********************************************************************
" 显示行号
set number

" 设置折叠方式为手动折叠
set foldmethod=manual

" 总是显示状态栏
set laststatus=2

" ---> theme 和 font
"*************************************************
" 开启语法高亮
syntax enable

" 高亮当前行
set cursorline

" 设置theme
" 需要 'export TERM=screen-256color'
if $TERM =~ '^xterm' || $TERM =~ '^screen' || $TERM=~ '256color$'
	set background=dark
	let g:solarized_termcolors = 256
	colorscheme solarized
elseif has('gui_running')
	set background=dark
	let g:solarized_termcolors = 256
	colorscheme solarized
elseif $TERM =~ 'cons25'
	colorscheme default
endif

" 当在gui时设置额外的参数
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set guioptions-=m
	set t_Co=256
endif

" 设置字体
set guifont=Monaco:h12

" 设置utf8为标准编码，en_US为标准语言
set encoding=utf-8

set fileencodings=utf-8,chinese,latin-1
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif

" 解决菜单乱码
if has("gui_running")
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
endif

" 解决consle输出乱码
language messages zh_CN.utf-8


" ---> tab 和 indent
"*************************************************
" 设置smarttab
set smarttab

" 显示空格和tab
set list

" 设置tab和空格样式,每行末尾的空格显示为'-'
set lcs=tab:\┆\ ,nbsp:%,trail:-

" Tab键显示的宽度设置为4个空格
set tabstop=4

" Tab键编辑的宽度设置为4个空格
set softtabstop=4

" 换行时自动缩进设置为4个空格
set shiftwidth=4

" 设置缩进方式为自动缩进
set autoindent

" 自动换行
set wrap

" ---> 搜索
"*************************************************
set hlsearch
set incsearch


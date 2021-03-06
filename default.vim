"================================================
" 加载一些配置
"================================================
" 加载自己定义的一些function
source ~/.vimconfig/config/function.vim

" 加载Plugin及其配置
source ~/.vimconfig/config/plugin.vim





"================================================
" 基本设置
"================================================

" 设置vim保存的命令数
set history=700

" 配置backspace,使它在terminal能正确使用
set backspace=eol,start,indent

" 禁用scroll bar
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" 打开WiLd menu
set wildmenu

" 忽略下列文件
set wildignore=*.o,*~,*.pyc
if WINDOWS()
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
  set wildignore+=.git\*,.hg\*,.svn\*
endif

" 设置一些常用的快捷键
noremap <Leader>d :NERDTree<CR>
noremap <Leader>o :Tagbar<CR>
noremap <Leader>s :CtrlP<CR>
noremap <Leader>u :UndotreeToggle<CR>

" 保存只读文件
noremap <Leader>w :w !sudo tee %<CR>
noremap q :q<CR>




" 文件相关
"=================
" 设置当文件在外面被改变时自动加载
set autoread

" 设置unix为标准文件类型
set ffs=unix,dos,mac

" 关闭备份文件功能
set nobackup
set writebackup
set noswapfile







"================================================
" vim 界面
"================================================
" 显示行号
set number

" 设置折叠方式为手动折叠
set foldmethod=manual

" 总是显示状态栏
set laststatus=2




" theme 和 font
"=================

" 开启语法高亮
syntax enable

" 高亮当前行
set cursorline

" 设置theme
" 需要 'export TERM=screen-256color'
" DODO:判断colorscheme是否存再进行设置
set background=dark
if $TERM =~ 'cons25'
  colorscheme default
else
  let g:solarized_termcolors = 256
  colorscheme solarized
endif

" 当在gui时设置额外的参数
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set guioptions-=m
  set t_Co=256
endif

" 设置字体，必须是'https://github.com/powerline/fonts'里面的字体，
" 否则airline里面的特殊字符无法正常显示
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14

" 设置utf8为标准编码，en_US为标准语言
set encoding=utf-8

set fileencodings=utf-8,chinese,latin-1
if WINDOWS()
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif

" 解决菜单中文乱码
if has("gui_running")
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim
endif

" 解决window下控制台中文输出乱码
if WINDOWS()
  language messages zh_CN.utf-8
endif



" tab 和 indent
"=================

" 设置smarttab
set smarttab

" 显示空格和tab
set list

" 设置tab和空格样式,每行末尾的空格显示为'-'
set lcs=tab:\|\ ,nbsp:%,trail:-

" 使用空格代替tab
set expandtab

" Tab键显示的宽度设置为4个空格
set tabstop=2

" Tab键编辑的宽度设置为4个空格
set softtabstop=2

" 换行时自动缩进设置为4个空格
set shiftwidth=2

" 设置缩进方式为自动缩进
set autoindent

" 自动换行
set wrap




" 搜索
"=================
set hlsearch
set incsearch

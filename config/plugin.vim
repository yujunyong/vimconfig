"================================================
" Vundle.vim Plugin管理
"================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if !WINDOWS()
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
else
  set rtp+=~/vimfiles/bundle/Vundle.vim/
  let path='~/vimfiles/bundle'
  call vundle#begin(path)
endif




" 使用Vundle管理插件，必装
Plugin 'gmarik/Vundle.vim'




" vim界面
"=================

" 语法检查
Plugin 'scrooloose/syntastic'

" 显示以空格缩进的线
Plugin 'Yggdroot/indentLine'

" vim的theme
Plugin 'altercation/vim-colors-solarized'

" js语法高亮和缩进
Plugin 'pangloss/vim-javascript'

" velocity语法高亮
Plugin 'lepture/vim-velocity'

" markdown, textile语法高亮, octopress命令
Plugin 'tangledhelix/vim-octopress'

" less语法高亮
Plugin 'groenewege/vim-less'

" build.gradle语法高亮
Plugin 'tfnico/vim-gradle'

" 状态栏加强，美化
Plugin 'bling/vim-airline'

" 行尾空格处理
Plugin 'ntpeters/vim-better-whitespace'


" 效率
"=================

" 快速编写html，css的代码
Plugin 'mattn/emmet-vim'

" 关闭xml和html的标签
Plugin 'docunext/closetag.vim'

" 自动补全括号
Plugin 'jiangmiao/auto-pairs'

" 扩展'%'，使它适合html和xml
Plugin 'vim-scripts/matchit.zip'

" 使用tab补全代码
Plugin 'ervandew/supertab'

" sublime text多选功能
Plugin 'terryma/vim-multiple-cursors'

" 实现snippets功能，以tab扩展代码
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" snippets库
Plugin 'honza/vim-snippets'

" 编辑选中字符的两边符号
Plugin 'tpope/vim-surround'

" 添加注释
Plugin 'tpope/vim-commentary'

" 扩展'.'命令，支持surround.vim, commentary.vim
Plugin 'tpope/vim-repeat'

" 代码对齐
Plugin 'godlygeek/tabular'

" 在insert-modes, command-line modes在绑定emacs快捷键
Plugin 'maxbrunsfeld/vim-emacs-bindings'

" 查找文件，buffer，最近使用文件，tag等
Plugin 'kien/ctrlp.vim'

" 浏览文件
Plugin 'The-NERD-tree'

" 可视化undo tree
Plugin 'mbbill/undotree'




" 整合其它工具
"=================
" git插件, 需要安装git，http://git-scm.com/
Plugin 'tpope/vim-fugitive'

" 在行首显示git diff标记, 需要安装git，http://git-scm.com/
Plugin 'airblade/vim-gitgutter'

" 整合ack, 快速搜索文件内容，需要安装ack，http://beyondgrep.com/
Plugin 'Ack.vim'

" outline插件, 需要安装ctags, http://ctags.sourceforge.net/
Plugin 'majutsushi/tagbar'

" python插件
Plugin 'klen/python-mode'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required





"================================================
" Plugin配置
"================================================

" 'Yggdroot/indentLine'配置
"=================
let g:indentLine_color_term=239




" 'bling/vim-airline'配置
"=================
" 使用powerline的字符，这个可以显示字符型icon
let g:airline_powerline_fonts = 1

" 顶部显示airline类型的tab标签
let g:airline#extensions#tabline#enabled = 1

" 单个tab时不显示buffers
let g:airline#extensions#tabline#show_buffers = 0




" 'tpope/vim-surround'配置
"=================
" let g:surround_37="{% \r %}"
" let g:surround_123="{{ \r }}"

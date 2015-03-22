# 我的vim配置

## 截图

### 终端下的截图
![vim 截图](http://5xi7es.com1.z0.glb.clouddn.com/vim.png)

## 配置简介
* 采用[Vundle](https://github.com/gmarik/Vundle.vim)管理vim的插件
* 字体使用[powerline fonts](https://github.com/powerline/fonts), window下需要手动安装DejaVn Sans Monn for Powerline字体，才能正常使用vim
* 在终端下需要设置`export TERM=screen-256color`，solarized theme才能正常使用，请看[Vim 配色问题](http://yujunyong.github.io/blog/2014/11/04/vim-pei-se-wen-ti/)

## 安装
### linux
1. 在终端输入`git clone https://github.com/yujunyong/vimconfig.git ~/.vimconfig`
2. 进入~/.vimconfig目录使用`./install.sh`安装

### window
1. 下载[powerline fonts](https://github.com/powerline/fonts), 安装其中的DejaVn Sans Monn for Powerline字体
2. 打开终端进入用户目录
3. 输入命令`git clone https://github.com/yujunyong/vimconfig.git .vimconfig`
4. 安装Vundle `git clone https://github.com/gmarik/Vundle.vim.git vimfiles/bundle/Vundle.vim`
5. 将`.vimconfig/vimrc.template`文件拷贝到用户目录，重命名为`_vimrc`

#!/bin/sh

# if a command has a non-zero exit status, execute the ERR trap
set -e

PRO = "vim config"

if [ ! -n "$VIM" ]; then
  VIM = ~/.vimconfig
fi

echo "\033[0;34m安装${PRO}的包管理器Vundle ..."
if [ ! -d "~/.vim/bundle" ]; then
  mkdir -p ~/.vim/bundle
fi
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo "\033[0;34m查找已经存在的vim配置文件 ..."
if [ -f ~/.vimrc || -h ~/.vimrc ]; then
  echo "\033[0;33m找到~/.vimrc备份到~/.vimrc.bak"
  mv ~/.vimrc ~/.vimrc.bak
fi

echo "\033[0;34m使用${PRO}模板文件, 将它添加到~/.vimrc"
cp $VIM/vimrc.template ~/.vimrc

echo "${PRO}安装完成，请进入vim使用':PluginInstall'命令完成插键的安装"

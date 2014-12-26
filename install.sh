#!/bin/sh

# if a command has a non-zero exit status, execute the ERR trap
set -e

PRO="vim config"

if [ ! -n "$VIM" ]; then
  VIM=~/.vimconfig
fi

echo "\033[0;34m安装${PRO}的包管理器Vundle ...\033[0m"
if [ ! -d "~/.vim/bundle" ]; then
  mkdir -p ~/.vim/bundle
fi
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo "\n\033[0;34m查找已经存在的vim配置文件 ...\033[0m"
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
  echo "\033[0;33m找到~/.vimrc备份到~/.vimrc.bak\033[0m"
  mv ~/.vimrc ~/.vimrc.bak
fi

echo "\n\033[0;34m使用${PRO}模板文件, 将它添加到~/.vimrc\033[0m"
cp $VIM/vimrc.template ~/.vimrc

echo "\n\033[0;34m${PRO}安装完成，请进入vim使用':PluginInstall'命令完成插键的安装\033[0m"

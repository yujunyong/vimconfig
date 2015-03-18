"================================================
" 定义一些需要的函数
"================================================
silent function! OSX()
  return has('macunix')
endfunction

silent function! LINUX()
  return has('unix') && !has('macunix') && !has('win32unix')
endfunction

silent function! WINDOWS()
  return  (has('win16') || has('win32') || has('win64'))
endfunction

silent function! TAB2()
  set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
endfunction

silent function! TAB4()
  set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
endfunction

silent function! SPACE2()
  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
endfunction

silent function! SPACE4()
  set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
endfunction

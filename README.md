# vim4arkts
Vim支持ArkTS语言的语法高亮脚本
#安装
将arkts.vim放入~/.vims/syntax文件夹中
在原有的filetype.vim中增加如下代码：

augroup filetypedetect
au BufNewFile,BufRead *.ets	setf arkts
augroup END


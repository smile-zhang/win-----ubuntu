set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
runtime! debian.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim' 
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set background=light or dark 
set background=light 
"set colorscheme solarized
"set compatible

"syntax 语法高亮
if has("syntax")
  syntax on
endif

"设置背景为深色 
"set background=dark

"根据文件类型,使用vim加载的缩进规则和插件
if has("autocmd")
  filetype plugin indent on
endif

"这是声明了一个全局配置文件,如果存在的话
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif




""""""""""""""""""  开始我自己的设置  
set nu
set nowrap "不自动折行
set showmatch "显示匹配的括号
set scrolloff=3 "距离顶部和底部3行
set encoding=utf-8 "编码
set fenc=utf-8  " 编码
set mouse=a   "启用鼠标
set hlsearch  "搜索高亮


""""""""""""""""""   为py文件添加支持PEP8风格的配置
au BufNewFile,BufRead *.py,*.pyw set tabstop=4
au BufNewFile,BufRead *.py,*.pyw set shiftwidth=4
au BufNewFile,BufRead *.py,*.pyw set softtabstop=4
au BufNewFile,BufRead *.py,*.pyw set expandtab  "tab替换为空格
au BufNewFile,BufRead *.py,*.pyw set textwidth=79 
au BufNewFile,BufRead *.py,*.pyw set autoindent   "自动缩进

"""""""""""""""""  新开窗口在右边或下边打开
set splitright  "右边 
"set splitbolow "下边

"ctrl+j 代替ctrl+W + ctrl+J 以下同理
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

"用空格代替 za 打开折叠
nnoremap <space> za	   
   
""""""""""""""""  python 代码提示工具 pydiction
filetype plugin on  
autocmd FileType python set omnifunc=pythoncomplete#Complete  
autocmd FileType javascr¨©pt set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete  

""""""""""""""""  指定python 字典的位置
let g:pydiction_location = '~/.vim/pydiction/complete-dict'
set autoindent
set tabstop=4  
set shiftwidth=4  
set expandtab  
set number
"""""""""""""""  相关样式 配置
let Tlist_Auto_Highlight_Tag=1  
let Tlist_Auto_Open=1  
let Tlist_Auto_Update=1  
let Tlist_Display_Tag_Scope=1  
let Tlist_Exit_OnlyWindow=1  
let Tlist_Enable_Dold_Column=1  
let Tlist_File_Fold_Auto_Close=1  
let Tlist_Show_One_File=1  
let Tlist_Use_Right_Window=1  
let Tlist_Use_SingleClick=1  
nnoremap <silent> <F8> :TlistToggle<CR>
""""""""""""""""""""" python 代码提示配置完成


""""""""""""""""""""" python 代码补全工具 vim snipmate 


syntax on                      "语法支持

"common conf {{             通用配置
let leader = ","

set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "括号匹配
set laststatus=2            "总是显示状态行
set matchtime=5				"匹配括号高亮的时间
set incsearch				"搜索时，逐字符高亮
set autoindent				"继承前一行的缩进方式
set smartindent				"自动缩进

set expandtab               "以下三个配置配合使用，设置tab和缩进空格
set shiftwidth=4
set tabstop=4
set softtabstop=4

set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8 "使用utf-8打开文件
set hls                     "检索时高亮显示匹配项
set encoding=utf-8
set cursorline
set tags=.tags
set helplang=cn

"}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ';'
nnoremap <C-h> gt
nnoremap <C-i> gT
nnoremap <leader>t : tabe<CR>

"{cscope settings
if has("cscope")
	set csprg=/usr/local/bin/cscope
	set csto=1
	set cst
	set nocsverb
	"add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	"else add database pointed by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif
"}

"{设置自动补全
filetype on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"}

"{theme settings
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"字体设置
set guifont=Menlo\ regular:h14
"}

"状态栏配置
"powerline {
set nocompatible
set t_Co=256
"}

"{Marks settings
"忽略help，quickfix，non-modifiable缓冲
let showmarks_ignore_type="hqm"
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
"Highlight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black
"}

"{Markdown settings
let g:vim_markdown_folding_disabled=1
let g:PreviewCSSPath='/Users/Zach/.vim/bundle/vim-preview/GithubTheme/github.css'
"]

"pathogen是Vim用来管理插件的插件
"pathogen{
call pathogen#infect()
"}



"基本键位设置
"============
"     ^
"     k
" < h   l >
"     j
"     v
" === Auto load for first time usesneovim 配置文件最前面，有这么一段代码：neovim+vim-plug
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" === Auto load for first time usesneovim 配置文件最前面，有这么一段代码：vim+vim-plug
" ===
" if empty(glob('~/.vim/autoload/plug.vim'))
"     silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"     autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
" endif

"如果你用的是 Vim，请把~/.config/nvim/autoload/plug.vim换成~/.vim/autoload/plug.vim

let mapleader = '\'
"不适用vi的键盘模式，使用vim自己的
set nocompatible                             " required
filetype on                                  " required开启探测文件类型,on off
filetype plugin on           " 载入文件类型插件
filetype indent on           " 为特定文件类型载入相关缩进文件

" 打开文件类型检测, 加了这句才可以用智能补全
filetype plugin indent on

"sheerun/vim-polyglot插件配置disable
let g:polyglot_disabled = ['markdown.plugin','autoindent','sensible','ftdetect','latex']

"set the runtime path to include Vundle and initialize

call plug#begin('~/.config/nvim/plugged')
" :PlugStatus 检查现在 plug 负责的插件状态
" :PlugInstall 安装配置好的插件
" :PlugUpdate 更新已安装的插件
" :PlugClean 清理插件，需要现在 .vimrc 里面删除或注释掉
" :PlugUpgrade 升级自身

"以下是颜色主题
Plug 'flazz/vim-colorschemes'       "大批颜色集合
Plug 'liuchengxu/space-vim-theme'
Plug 'ashfinal/vim-colors-violet'
Plug 'nlknguyen/papercolor-theme'
Plug 'nightsense/snow'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'chriskempson/base16-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'nightsense/vimspectr'
Plug 'nightsense/carbonized'
Plug 'nightsense/stellarized'
Plug 'junegunn/seoul256.vim'
Plug 'ayu-theme/ayu-vim' " or other package manager
Plug 'nightsense/cosmic_latte'
Plug 'crusoexia/vim-monokai'               " 配色方案
Plug 'morhetz/gruvbox'                     " 配色方案
Plug 'jnurmine/Zenburn'
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'romainl/flattened'
Plug 'overcache/NeoSolarized'
"主题插件
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'glepnir/oceanic-material'
Plug 'mhartington/oceanic-next'
Plug 'Rigellute/rigel'
Plug 'raphamorim/lucario'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'rakr/vim-one'
Plug 'wadackel/vim-dogrun'
Plug 'john2x/flatui.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'evturn/cosmic-barf'
Plug 'kjssad/quantum.vim'
Plug 'protesilaos/prot16-vim'
Plug 'yassinebridi/vim-purpura'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tamlok/detorte'
Plug 'rakr/vim-colors-rakr'
Plug 'wimstefan/Lightning'
Plug 'machakann/vim-colorscheme-kemonofriends'
Plug 'romgrk/github-light.vim'
Plug 'schickele/vim-fruchtig'
Plug 'ashfinal/vim-colors-paper'
Plug 'machakann/vim-colorscheme-tatami'
Plug 'machakann/vim-colorscheme-snowtrek'
Plug 'wsniper/vim-color-theme-protect-eyes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-scripts/donbass.vim'
Plug 'tjammer/blandon.vim'
Plug 'lorry-lee/vim-ayumi'
Plug 'severij/vadelma'
Plug 'megantiu/true.vim'
Plug 'whzup/greent.vim'
Plug 'stulzer/mitormk-laser'
Plug 'atrnh/magical-girl-vim'
Plug 'rktjmp/lush.nvim'
Plug 'alaric/nortia.nvim'
Plug 'stulzer/mitormk-laser'
Plug 'stulzer/heroku-colorscheme'
Plug 'vim-scripts/nightshade.vim'
Plug 'rainglow/vim'
Plug 'rafamadriz/neon'
Plug 'bluz71/vim-moonfly-colors'
Plug 'shaunsingh/moonlight.nvim'
Plug 'mangeshrex/everblush.vim'
Plug 'Iron-E/nvim-highlite'
Plug 'folke/twilight.nvim'

" 超强插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" 翻译
Plug 'voldikss/vim-translator', { 'on':'<Plug>Translate' }

" 行尾空格处理
Plug 'bronson/vim-trailing-whitespace'

" 让光标所在单词高亮或者下划线
" 让光标所在单词高亮或者下划线
Plug 'lfv89/vim-interestingwords'  "可以使用不同颜色同时高亮多个单词，浏览或者给别人讲解代码的时候比较有用
Plug 'itchyny/vim-cursorword'  "给当前光标下的单词增加下划线
" General Highlighter
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'
Plug 'winston0410/range-highlight.nvim'

" 多层括号配色
Plug 'luochen1990/rainbow'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mechatroner/rainbow_csv'

" Plug 'kristijanhusak/vim-packager'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

Plug 'wincent/terminus'   " 终端增强
Plug 'craigemery/vim-autotag'

" Git
Plug 'rhysd/conflict-marker.vim'          " Highlight, jump and resolve conflict markers quickly.
" Plug 'tpope/vim-fugitive'                 " 在vim中执行git命令
" Plug 'gisphm/vim-gitignore', " { 'for': ['gitignore', 'vim-plug'] }
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'          " git/svn版本控制插件vim-signify
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'cohama/agit.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }


" 查找替换
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }       "查找替换
" CSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'liuchengxu/vim-clap'                              " 在vim中搜索文件
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }       " 在vim中搜索文件
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }    " 在vim中搜索文件
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'                          " 强大的文本搜索工具
Plug 'easymotion/vim-easymotion'                " 强大的搜索定位，快速移动
Plug 'tpope/vim-surround'                         "快速将括号、‘’、“”、[]等替换


" 滚动条
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'dstein64/nvim-scrollview'

if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" 代码调试
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}  " Debugger,代码调试IDE

" 调整窗口大小
Plug 'justincampbell/vim-eighties'
Plug 'wahidrahim/resize-font'


"美化
" Plug 'akinsho/nvim-bufferline.lua'                                        " 基于lua编写的 buffer栏插件
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}                       "基于lua编写的 状态栏插件
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'kdheepak/tabline.nvim'
" Plug 'yamatsum/nvim-nonicons'
Plug 'NTBBloodbath/galaxyline.nvim'
Plug 'itchyny/calendar.vim'             "日历，:Calendar 在 Vim 中查看日历
Plug 'Yggdroot/indentLine', { 'for': ['lua', 'c', 'h', 'cpp', 'py', 'json', 'go', 'java', 'vim', 'hs'] }              " 缩进指示线
" Plug 'nathanaelkane/vim-indent-guides'                                    " 缩进指示线
Plug 'fadein/vim-FIGlet'                                                    " 出现有趣的文字图像
Plug 'lambdalisue/suda.vim'                                                 " do stuff like :sudowrite
Plug 'junegunn/goyo.vim'                                                    " 提供一个专注阅读和写作的环境
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'
Plug 'dpelle/vim-LanguageTool'
Plug 'ron89/thesaurus_query.vim'
Plug 'junegunn/limelight.vim'               " 与 Goyo, seoul256 为同一开发者，联合使用效果最佳。不适用于写代码和看代码
Plug 'junegunn/vim-peekaboo'                "  当你按下双引号键时，它会在右侧打开一个寄存器备忘单
" Plug 'matze/vim-move'                     " 代码块移动
" Plug 'DoxygenToolkit.vim'                 " 注释文档生成
" Plug 'VimTweak'                            " 背景透明插件
Plug 'kshenoy/vim-signature'                " 增加书签
Plug 'makerj/vim-pdf'                       "阅读pdf
Plug 'chrisbra/changesPlugin'               " 显示vim文档哪些行被修改
Plug 'vim-utils/vim-man'                    " 在vim中查看相关函数等的man手册，支持水平窗口和垂直窗口打开。
Plug 'machakann/vim-highlightedyank'        " 使 yank 的文档半透明高亮
Plug 'glepnir/dashboard-nvim'                " 启动vim时启动界面美化
Plug 'mhinz/vim-startify'                   " 此插件为 Vim 和 Neovim 提供一个启动屏幕
" :h startify
" :h startify-faq
Plug 'goolord/alpha-nvim'
Plug 'chxuan/change-colorscheme'                     "快速改变颜色主题
" Plug 'norcalli/nvim-colorizer.lua'                 " 自动更改包含十六进制值文本的背景颜色
Plug 't9md/vim-choosewin'                            " 指定窗口中打开文件
Plug 'tyru/open-browser.vim'                         " 打开浏览器
Plug 'lucasicf/vim-smooth-scroll'                    " 支持平滑滚动
Plug 'Shougo/echodoc.vim'                            " 函数参数提示
Plug 'mtdl9/vim-log-highlighting'                    "日志高亮
Plug 'myusuf3/numbers.vim'                           "相对行号
Plug 'MattesGroeger/vim-bookmarks'                   " 书签

" 时钟
Plug 'danilamihailov/beacon.nvim'
" 快捷键菜单插件
Plug 'skywind3000/quickmenu.vim'

" Plug 'rhysd/accelerated-jk', {'on':['<Plug>(accelerated_jk_gj)' , '<Plug>(accelerated_jk_gk)']}

" 编辑器配置插件。
Plug 'editorconfig/editorconfig-vim'   

"FPGA
Plug 'vhda/verilog_systemverilog.vim'     "verilog

" 快速对齐
Plug 'godlygeek/tabular'                            " 快速对齐
Plug 'junegunn/vim-easy-align'                      " 用来对齐指定符号的工具

Plug 'fholgado/minibufexpl.vim'                           " 多文档编辑
Plug 'bagrat/vim-buffet'                                  " 类似minibuf管理多buffer的
Plug 'vim-scripts/winmanager'                             " 多窗口管理器
Plug 'terryma/vim-multiple-cursors'                       " vim多重光标选取插件
Plug 'mg979/vim-visual-multi', {'branch': 'master'}       " 比vim-multiple-cursor更好用的多光标插件
Plug 'gorodinskiy/vim-coloresque'                         " 颜色符号显示对应颜色

"补全
Plug 'vim-scripts/indentpython.vim'        " 写python代码自动缩进
Plug 'jiangmiao/auto-pairs'                " 自动补全括号等
Plug 'Valloric/YouCompleteMe'              " 自动补全
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
" Plug 'davidhalter/jedi-vim'                " Python自动补齐和静态分析的开源库
" Plug 'ervandew/supertab'                   " 补全记忆插件
" Plug 'ncm2/ncm2'
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'
" Plug 'ncm2/ncm2-github'
" Plug 'ncm2/ncm2-jedi'
" Plug 'ncm2/ncm2-pyclang'
" Plug 'ncm2/ncm2-vim'
" Plug 'ncm2/ncm2-match-highlight'
" Plug 'oncomouse/ncm2-biblatex'

Plug 'octol/vim-cpp-enhanced-highlight'    " C++  IDE
Plug 'Raimondi/delimitMate'
Plug 'chxuan/cpp-mode'                     " 提供生成函数实现、函数声明/实现跳转、.h .cpp切换等功能
Plug 'tenfyzhong/CompleteParameter.vim',{'for':['lua', 'c', 'h', 'cpp', 'py', 'go', 'java', 'vim', 'json', 'hs']}
if has('nvim')
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'zchee/deoplete-jedi'

" latex插件
Plug 'lervag/vimtex', {'for': ['tex', 'plaintex', 'bst']}

" 浮动终端
Plug 'voldikss/vim-floaterm', { 'on': 'FloatermNew' }
Plug 'nikvdp/neomux'

"代码块
Plug 'SirVer/ultisnips'                    " 安装引擎
Plug 'honza/vim-snippets'                  " 安装代码块集合


"格式化代码
" Plug 'Chiel92/vim-autoformat'              "格式化代码（或保存时自动格式化）
Plug 'tell-k/vim-autopep8'                 " 按照pep8的标准自动格式化代码
Plug 'sbdchd/neoformat', {'on':'Neoformat'}
" Plug 'rhysd/vim-clang-format'
Plug 'skywind3000/vim-rt-format'
Plug 'nvie/vim-flake8'


" 目录树
Plug 'vim-scripts/taglist.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'                   "taglist的增强版，显示变量函数宏等
Plug 'liuchengxu/vista.vim',                " tagbar的增强版
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'cquery-project/cquery'
Plug 'mbbill/undotree'                                  " Undo Tree
Plug 'scrooloose/nerdtree'                              " 添加树形目录
Plug 'jistr/vim-nerdtree-tabs'                          " 想用tab键
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'          " 增强图标
"新一代目录树defx
Plug 'Shougo/defx.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'kristijanhusak/defx-git', {'on':'Defx'}
Plug 'kristijanhusak/defx-icons'

" vim集成Ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'Lokaltog/neoranger'
Plug 'kevinhwang91/rnvimr'


" go主要插件
Plug 'fatih/vim-go',{ 'for': ['go', 'vim-plug'], 'tag': '*' }


"快速跳转
Plug 'pechorin/any-jump.vim'


"Markdown
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown'] }
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'   , {'for': 'markdown', 'do': 'yarn install'}
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'
Plug 'ferrine/md-img-paste.vim'        "从粘贴板 paste
Plug 'demonlord1997/markdown-org', {'for':'markdown'}
Plug 'ellisonleao/glow.nvim'

Plug 'tmhedberg/SimpylFold'                " 自动折叠


Plug 'sheerun/vim-polyglot'                  " 语法高亮
" Plug 'w0rp/ale'

" 美化状态栏
Plug 'vim-airline/vim-airline'                   " 美化状态栏，显示正在编辑的文件
Plug 'vim-airline/vim-airline-themes'            " 美化状态栏，显示正在编辑的文件
Plug 'ryanoasis/vim-devicons'                        " 在目录中为文件增加图标
" Plug 'itchyny/lightline.vim'                     " 美化状态栏，显示正在编辑的文件
" Plug 'glepnir/spaceline.vim'                    " 美化状态栏，
Plug 'scrooloose/nerdcommenter'                   "快速注释，取消注释
Plug 'tpope/vim-commentary'                     " 快速注释插件，相比于 nerdcommenter 更加简洁实用
" Plug 'bling/vim-bufferline'

"python
Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }   "为 Python 提供语义高亮

" css,js
Plug 'othree/html5.vim'                    " html全能补全
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'                                        " 格式化js css等文件
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier', {
            \ 'do': 'yarn install',
            \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'php'] }


"All of your Plugins must be added before the following line
call plug#end()


:set vb t_vb=        "可以关闭错误提示音
set secure   "会关闭项目中的 shell autocmd write 等命令。


" Prevent incorrect backgroung rendering
let &t_ut=''     " 防止vim背景颜色错误
set indentexpr=

set t_Co=256

set virtualedit=block,onemore


"让补全行为与一般IDE一样
"set completeopt = preview,meun
set completeopt=longest,noinsert,menuone,noselect,preview


"开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 块选择快速跳转问题

set nostartofline

let python_highlight_all=1
" 允许有未保存的修改时切换缓冲区
set hidden

"显示行号
set number

"高亮显示匹配的括号
set showmatch
set viewoptions=folds,cursor,curdir,slash,unix
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=4

"为c语言自动缩进
"smartindent 在这种缩进模式中，每一行都和前一行有相同的缩进量，同时这种缩进形式能正确的识别出花括号，当遇到右花括号（}），则取消缩进形式。此外还增加了识别 C 语言关键字的功能。如果一行是以 #开头的，那么这种格式将会被特殊对待而不采用缩进格式
set smartindent

" 使用C样式的缩进
set cindent

"自动缩进, 继承前一行的缩进方式，适用于多行注释,
"autoindent 在这种缩进形式中，新增加的行和前一行使用相同的缩进形式。可以使用以下命令，
set autoindent

" 字符间插入的像素行数目
set linespace=0

" 设置 VIM 字体及大小
" Linux/Unix 命令格式：set guifont = 字体 +\\+ 空格 + 字体大小
"  Windows/Mac 命令格式：set guifont = 字体 + : + 字体大小
" 不同的是，关于字体大小的表述。Linux/Unix 字体大小直接写字号，Windows/Mac 字号需要加上 h 的高度名。
" Linux/Unix: set guifont=Monospace\空格14 注意这里需要对空格使用 \ 进行转意
" Windows: set guifont=Monospace:h14 注意这里的字体大小需要有 h 的标识
" set guifont=-misc-simsun-medium-r-normal-*-*-120-*-*-c-*-iso10646-1
" 在Gvim中我设置了英文用Hermit， 中文使用 YaHei Mono "


  
 if has('gui_running')
    "colorscheme desert" 下面的滚动条开启
    " let g:netrw_winsize = 20
    "添加水平滚动条。如果你指定了不折行，那为窗口添加一个水平滚动条就非常有必要了
    :set guioptions+=b

    " " 隐藏/不隐藏工具栏
    set guioptions+=T
    " " 隐藏/不隐藏菜单栏
    set guioptions+=m

    set guioptions+=r
    set guioptions+=L
    " 设置为双字宽显示，否则无法完整显示如:☆
    set lines=60 columns=108 linespace=0
    if has('gui_win32')
        " set guifont=DejaVu_Sans_Mono:h10:cANSI
        " set guifont=Fira_Code:h10:cANSI
        " set guifont=JetBrains_Mono_Regular:h8:cANSI
        " set guifont=FiraCode_Nerd_Font_Mono:h8:cANSI
        """ set guifont=JetBrainsMono_Nerd_Font:h8:cANSI
        " set guifont=JetBrainsMono_NF:h8:cANSI
        " set guifont=JetBrainsMono_Nerd_Font_Mono:h8:cANSI
        " set guifont=SauceCodePro_Nerd_Font_Mono:h8:cANSI


        " set guifont=Monaco:h8:cANSI
        " set guifont=InconsolataGo_Nerd_Font:h8:cANSI
        " set guifont=InconsolataGo_Nerd_Font_Mono:h8:cANSI
        " set guifont=InconsolataLGC_Nerd_Font_Medium:h8:cANSI
        set guifont=YaHei_Consolas_Hybrid:h12:cANSI
        " set guifont=YaHei_Consolas_Hybrid_YaHei_Consolas_Hybrid_Regular:h8:cANSI
        set guifont=Cascadia_Code:h12:cANSI
        set guifont=CaskaydiaCove_Nerd_Font_Mono:h12:cANSI
    else
        " set guifont=DejaVu\ Sans\ Mono\ 12
        " set guifont=Fira\ Code\ 12
        " set guifont=JetBrains\ Mono\ Regular\ 9
        " set guifont=FiraCode\ Nerd\ Font\ Mono\ 9
        """ set guifont=JetBrainsMono\ Nerd\ Font\ 9
        " set guifont=JetBrainsMono\ NF:h8:cANSI
        " set guifont=JetBrainsMono\ Nerd\ Font\ Mono\ 9
        " set guifont=SauceCodePro\ Nerd\ Font\ Mono\ 9
        " set guifont=DejaVu\ Sans\ Mono\ 10

        " set guifont=Monaco:h8:cANSI
        " set guifont=InconsolataGo\ Nerd\ Font:h8:cANSI
        " set guifont=InconsolataGo\ Nerd\ Font\ Mono:h8:cANSI
        " set guifont=InconsolataLGC\ Nerd\ Font\ Medium:h8:cANSI
        set guifont=YaHei\ Consolas\ Hybrid:h12:cANSI
        " set guifont=YaHei\ Consolas\ Hybrid\ YaHei\ Consolas\ Hybrid\ Regular:h8:cANSI
        set guifont=Cascadia\ Code:h12:cANSI
        set guifont=CascadiaCove\ Nerd\ Font\ Mono:h12:cANSI
    endif
  endif


" ===
" === Window behaviors在普通模式下输入 :split 可以上下分屏，同时光标会在上面的屏幕，:vsplit 可以左右分屏，光标会停留在左边，使光标停在右边的指令是 :set splitright，然后再输入分屏指令，但是这样太麻烦了，可以修改键位：map sl :set splitright< CR >:vsplit< CR > ，设置完成后，在普通模式下按 sl 即可分屏并且使光标停留在右边屏幕。同理可设置其他几个方向：
" ===
set splitright
set splitbelow

" 设定默认解码
set bsdir=buffer
set modifiable
set langmenu=zh_CN.UTF-8
set fileencodings=utf-8,ucs-bom,latin1,gb2312,gb18030,cp936,gbk,big5
set encoding=utf-8  "支持UTF8编码
set fencs=utf-8,gbk,chinese,big5,cs-bom,shift-jis,gb18030,gb2312,cp936
set termencoding=utf-8

" 可以在 buffer 的任何地方使用鼠标（类似 office 中在工作区双击鼠标定位）
set mouse=a
" set selectmode=mouse,key
"指定在选择文本时，光标所在位置也属于被选中的范围。
set selection=inclusive


" 在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\
set fillchars=vert:\|


" 设置路径，多个路径用逗号分隔
set path+=**


" 显示 TAB 键-,空格-
set list
"set listchars=tab:▸\ ,trail:▫
" set listchars=tab:▸\ ,trail:▫,extends:>,precedes:<,eol:$
set listchars=tab:▸\ ,nbsp:+,trail:▫,extends:→,precedes:←
" set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←

"折叠
"允许折叠,启动vim时关闭折叠
set nofoldenable

"更具每行的缩进开启折叠 ，manual为手动折叠
set foldmethod=indent
" set foldmethod=syntax

" 用空格代替za进行折叠代码
nnoremap <space> za

" za :打开或者关闭折叠
" zm ：关闭所有折叠
" zM ：关闭所有折叠及其嵌套的折叠
" zr：打开所有折叠及其嵌套的折叠
" zR：打开所有折叠
" zc：折叠
" zC：对所在范围内所有嵌套进行折叠
" zo：展开折叠
" zO：对所在范围内所有嵌套的折叠垫展开
" zd：删除在光标下的折叠
" zD：删除循环光标下的折叠，即嵌套删除折叠


set foldlevel=100
set tw=0
set formatoptions-=tc

" What to save for views and sessions:
set viewoptions=folds,cursor,curdir,slash,unix
set sessionoptions=curdir,help,tabpages,winsize
"自动换行是每行超过 n 个字的时候 vim 自动加上换行符用
" set textwidth=70                   "来设置 n
"自动折行 是把长的一行用多行显示 , 不在文件里加换行符用
set  nowrap
"不自动折行
" set wrap

"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。
" set  linebreak
" 我们可以使用以下命令，取消自定义折行：
set nolinebreak


"指定折行处与编辑窗口的右边缘之间空出的字符数。"
set  wrapmargin=2
"水平滚动时，光标距离行首或行尾的位置（单位：字符）。该配置在不折行时比较有用。"
set  sidescrolloff=15

" 默认设置 set sidescroll=0 之下，当光标到达屏幕边缘时，将自动扩展显示 1/2 屏幕的文本。
" 通过使用 set sidescroll=1 设置，可以实现更加平滑的逐个字符扩展显示。
set sidescroll=1

set  novisualbell
"出错时，不要闪烁 set novisualbell 。

"系统剪切板
" set clipboard+=unnamed
set clipboard^=unnamed,unnamedplus
" set clipboard=unnamedplus  "使得vim剪切板和系统剪切板一致，这样就可以使用ctrl c/v了
" 其中unnamed代表*寄存器，unnamedplus代表+寄存器。在mac系统中，两者都一样；一般在linux系统中+和*是不同的，+对应ctrl + c,ctrl + v的桌面系统剪贴板，*对应x桌面系统的剪贴板（用鼠标选择复制，用鼠标中键粘贴



"搜索逐字符高亮
set hlsearch
exec "nohlsearch"
" 开启增量搜索模式
set incsearch
"忽略大小写
set ignorecase
set smartcase
set infercase
set wrapscan

set ts=4
set ar
set updatetime=300
set shortmess+=c
set signcolumn=yes

set autoread

""可使切换文件时，修改的文件被自动保存
"set autowriteall

set autowrite
" 设置自动保存

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-


set laststatus=2
" 2为总显示最后一个窗口的状态行
" 设为1则窗口数多于一个的时候显示最后一个窗口的状态行；
" 0不显示最后一个窗口的状态行

"光标所在行一横线
set cursorline

set cursorcolumn
"光标所在行一竖线
" 设置中文帮助
set helplang=cn

autocmd InsertLeave * call ToggleCursor()
autocmd InsertEnter * call ToggleCursor()
function ToggleCursor() abort
	set cursorline!
	set cursorcolumn!
endfunction

" 输入的命令显示出来，看的清楚些
set showcmd


" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
"打开状态栏标尺
set showmode
set ruler

set backspace=2
set backspace=indent,eol,start
" indent: 如果用了:set indent,:set ai 等自动缩进，想用退格键将字段缩进的删掉，必须设置这个选项。否则不响应。
" eol: 如果插入模式下在行开头，想通过退格键合并两行，需要设置 eol。
" start：要想删除此次插入前的输入，需设置这个。

set confirm
"在处理未保存或只读文件的时候，弹出确认

" 不要生成 swap 文件，当 buffer 被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

"允许backspace和光标跨越行边界
set whichwrap+=<,>,b,s,[,]


" 命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令。
" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.dll,*.exe,*.jpg,*.gif,*.png
set wildmenu                      " show a navigable menu for tab completion
" set wildmode=list:longest,full
set wildchar=<Tab> wildcharm=<C-Z>
set suffixes=.bak,~,.o,.h,.info,.swp,.obj

hi BadWhitespace  ctermfg=15 ctermbg=15  guifg= gray guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/          "表示不必要的空白字符

" 让 vim 把连续数量的空格视为一个制表符,使得按退格键时可以一次删除4个空格"
set softtabstop=4

" 设置编辑时制表符占用空格数,设置所有的Tab和缩进为4个空格
set tabstop=4

" 设置格式化时制表符占用空格数,设定<<和>>命令移动时的宽度为4
set shiftwidth=4

" 在行和段开始处使用制表符
set smarttab

" 将制表符扩展为空格,使用空格来替换Tab
set expandtab


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
""""""""""""""""""""""""""""""""快捷键定义"""""""""""""""""""""""""""""""""""""""""""''
" 实现按 \sa 全选当前文件所有文本的效果
map <leader>sa ggVG"
" Disable the default s key
noremap s <nop>

" 定义快捷键关闭当前分割窗口
" nmap ;q :q<CR>
" 定义快捷键保存当前窗口内容并离开
nmap ;wq :wq<CR>
nmap ;w :w<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
map Q :q<CR>
let g:wintabs_autoclose_vim = 1

map S :w!<CR>

if has('nvim')
    nnoremap pi  :PlugInstall<CR>
    nnoremap pcl  :PlugClean<CR>
    nnoremap ps  :PlugStatus<CR>
    nnoremap pu  :PlugUpdate<CR>
    nnoremap pU  :PlugUpgrade<CR>
else
    nnoremap pi  :PluginInstall<CR>
endif

" Call figlet
map ;x :r !figlet


" Search
map <LEADER><CR> :nohlsearch<CR>
nnoremap = nzz
nnoremap - Nzz



" 水平滚动
" 向左
map  `ll 20zh
" imap <F8> <ESC>10zhi
" 向右
map `rr 20zl
" imap <F9> <ESC>10zli
" 这个时候在 Normal 和 Insert 模式下都可以按 <F8><F9> 来水平滚动了。


" ===
" === Other useful stuff
" ===
" 打开新标签页并在新标签页打开终端
"nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>
" nnoremap \t :tabe<CR>:term sh -c 'st'<CR>

" 打开终端并切换到输入模式
map <leader>t :sp term://zsh<CR><c-w>J:res 10<CR>A
tnoremap <Esc> <C-\><C-n>


" 上下分屏并在下方打开终端
noremap ;t :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
" 左右分屏并在下方打开终端
noremap ;r :set splitright<CR>:vsplit<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <SPACE><SPACE> <Esc>/<++><CR>:nohlsearch<CR>c4l

" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell
" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>


" Open the vimrc file anytime

if has('nvim')
    " map <Leader>ev :e ~/.config/nvim/init.vim<CR>  "新缓冲去打开文件"
    map <Leader>e :tabe ~/.config/nvim/init.vim<CR>    "新标签页打开"
else
    " map <Leader>ev :e ~/.vimrc<CR>
    map <Leader>e :tabe ~/.vimrc<CR>
endif

if has('nvim')
    map <Leader>s :source  ~/.config/nvim/init.vim<cr>
else
    map <Leader>s :source  ~/.vimrc<cr>
endif

" 快速编辑 init.vim
map <leader>e :e! ~/.config/nvim/init.vim<CR>

" 自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc
" autocmd! bufwritepost $HOME/.vimrc source %
autocmd! BufWritePost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim
" 读文件时自动设定当前目录为刚读入文件所在的目录
" autocmd BufReadPost * cd %:p:h
" 进入当前编辑的文件的目录
autocmd BufEnter * exec "cd %:p:h"

" Indentation
nnoremap < <<
nnoremap > >>
" =====================================================
" === Insert Mode Cursor Movement
" =====================================================

inoremap <C-a> <ESC>A
inoremap <C-e> <ESC>I
" =======================
" === Command Mode Cursor Movement
" ==================================
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <M-a> <S-Left>
cnoremap <M-e> <S-Right>


" Space 转化为 Tab
nnoremap <LEADER>st :%s/    /\t/g
vnoremap <LEADER>st :s/    /\t/g
"===============================================================
"============快捷键
"============================================================

""""""""""""""""""""""""""""""""""""""""""" 行号   """"""""""""""""""""""""""""""""""""""""""""
" <F3> 行号开关
nnoremap <F3> :call HideNumber()<CR>

function! HideNumber()
    if(&relativenumber == &number)
        set  relativenumber!  number!
    elseif(&number)
        set   number!
    else
        set relativenumber!
    endif
    set number?
endfunc


" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunction


" TN进行相对行号/绝对行号切换
nnoremap  TN :call NumberToggle()<cr>



let &t_SI = "\<Esc>]12;green\x7"
" let &t_SR = "\<Esc>]12;yellow\x7"
" let &t_EI = "\<Esc>]12;green\x7"


" 默认下，不管是插入状态还是非插入状态，都是小方块，但是我更希望能看到插入时光标变成小竖线。
" Mode Settings

let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)


" ===
" === Terminal Behaviors
" ===
set termguicolors
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
let g:space_vim_transp_bg = 1
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

"###################################################
"当文件在外部被修改，自动更新该文件
"####################################################


"方法2:
if ! exists("g:CheckUpdateStarted")
    let g:CheckUpdateStarted=1
    call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
    silent! checktime
    call timer_start(2000,'CheckUpdate')
endfunction

" ======= 设置当文件被外部改变的时侯自动读入文件 ======= "



"重新打开已创建的文件时自动定位光标到上次关闭文件时的位置,包括具体的列，如果只需要定位到行，不需要列，则把g`(右撇)改为g'(左撇)
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"================================== 能够漂亮地显示.NFO文件===========================
" set encoding=utf-8
function! SetFileEncodings(encodings)
    let b:myfileencodingsbak=&fileencodings
    let &fileencodings=a:encodings
endfunction
function! RestoreFileEncodings()
    let &fileencodings=b:myfileencodingsbak
    unlet b:myfileencodingsbak
endfunction

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
au BufReadPost *.nfo call RestoreFileEncodings()

"=======================高亮显示普通txt文件（需要txt.vim脚本）=======================================
"au BufRead, BufNewFile  *   setfiletype txt
if has("autocmd")
       autocmd BufNewFile,Bufread *.txt set syntax=help
endif
"""""""""""""""""""""""""""""""""""  Numbers.vim   """""""""""""""""""""""""""""""""""
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

nnoremap NT :NumbersToggle<CR>
nnoremap NO :NumbersOnOff<CR>

" MattesGroeger/vim-bookmarks  配置"""""""""""""""""""""""""""""""""""""""""""""""""""
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE


" let g:bookmark_no_default_key_mappings = 1
" highlight BookmarkSign ctermbg=whatever ctermfg=whatever
" highlight BookmarkAnnotationSign ctermbg=whatever ctermfg=whatever
" highlight BookmarkLine ctermbg=whatever ctermfg=whatever
" highlight BookmarkAnnotationLine ctermbg=whatever ctermfg=whatever

" 书签可视化插件  MattesGroeger/vim-bookmarks  配置

" 使用说明
" 功能                                    快捷键          命令
" 添加/删除书签(当前行)                     mm        :BookmarkToggle
" 添加/编辑/删除当前行注释书签              mi        :BookmarkAnnotate <TEXT>
" 跳转到当前 buffer 的下一个书签            mn        :BookmarkNext
" 跳转到当前 buffer 的前一个书签            mp        :BookmarkPrev
" 在 quickfix 窗口中列出所有书签(toggle)    ma        :BookmarkShowAll
" 清除当前 buffer 内的所有书签              mc        :BookmarkClear
" 清除所有 buffer 内的书签                  mx        :BookmarkClearAll
" 保存书签到文件                                      :BookmarkSave <FILE_PATH>
" 从文件加载书签                                      :BookmarkLoad <FILE_PATH>
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
" 配置
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'                     " 书签符号设置（默认⚑）
"let g:bookmark_annotation_sign = '##'          " 注释(说明)书签符号(默认☰)
"let g:bookmark_highlight_lines = 1             " 默认值为0(否)，是否高亮显示书签行
"let g:bookmark_no_default_key_mappings = 1     " 默认值为0(否)，是否使用默认的快捷键
let g:bookmark_center = 1                      " 默认值为0(否)，是否跳转后的书签行居中
let g:bookmark_show_warning = 0                " 默认值为1(是)，删除所有书签时，是否显示警告信息
let g:bookmark_highlight_lines = 1             " 默认值为0(否)，是否高亮书签行
let g:bookmark_auto_close = 1                  " 默认值为0(否)，在 quickfix 窗口选中书签后，是否自动关闭 quickfix 窗口
let g:bookmark_save_per_working_dir = 1        " 默认值为0(否)，是否针对工作目录保存书签
let g:bookmark_auto_save = 0                   " 默认值为1(是)，是否自动保存书签

"""""""""""""""""""""""""""" danilamihailov/beacon.nvim """"""""""""""""""""""""""""
highlight Beacon guibg=white ctermbg=15
let g:beacon_size = 40
let g:beacon_show_jumps = 1
let g:beacon_minimal_jump = 10
let g:beacon_shrink = 1
let g:beacon_fade = 1
" let g:beacon_ignore_buffers = [\w*git*\w]
" let g:beacon_ignore_filetypes = ['fzf']

" :Beacon highlight current position (even if plugin is disabled)
" :BeaconToggle toggle g:beacon_enable variable
" :BeaconOn enable Beacon
" :BeaconOff disable Beacon

""""""""""""""""""""""""""""""""""""" 快捷菜单插件 skywind3000/quickmenu.vim 配置""""""""""""""""""""""""""""""""""""""""""""""""

" clear all the items
call quickmenu#reset()

" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"

" use your favorite key to show / hide quickmenu
noremap <silent><F12> :call quickmenu#toggle(0)


" 由井号开始的字符串表示一个分组
" 分组1 : UI
call g:quickmenu#append('# UI', '')
call g:quickmenu#append('打开首页',               ':Startify',               '执行:Startify')
call g:quickmenu#append('自动换行',               ':set wrap!',              '执行:set wrap! 快捷键 <leader>sw')
call g:quickmenu#append('制表符换行符显隐',       ':set list!',              '执行:set list! 快捷键 <leader>sl')
call g:quickmenu#append('目录树NERDTree',         ':NERDTReeToggle',         '执行:NERDTReeToggle')
call g:quickmenu#append('撤销树Undotree',         ':UndotreeToggle',         '执行:UndotreeToggle')
call g:quickmenu#append('标签列表Tlist',          ':TlistToggle',            '执行:TlistToggle')
call g:quickmenu#append('任务标签列表Tasklist',   ':TaslistToggle',          '执行:TaslistToggle')
call g:quickmenu#append('缩进指示线indentLine',   ':IndentLinesToggle',      '执行:IndentLinesToggle')

" 分组2 : Git
call g:quickmenu#append('# Git', '')
call g:quickmenu#append('查看git日志',   ':Glog',   '执行:Glog')
call g:quickmenu#append('查看git blame', ':Gblame', ':执行:Gblame')

" 第三方软件打开
call g:quickmenu#append('# 第三方软件预览', '')
call g:quickmenu#append('chrome预览',   ':Chrome', '执行:Chrome')
call g:quickmenu#append('PowerShell',   'call OpenFolderWithApp("PowerShell")', ':执行:call OpenFolderWithApp("PowerShell")')
"call g:quickmenu#append('Git-bash',     'call OpenFolderWithApp("Git-Bash")', ':执行:call OpenFolderWithApp("Git-Bash")')
"call g:quickmenu#append('Git-gui',      'call OpenFolderWithApp("Git-Gui")', ':执行:call OpenFolderWithApp("Git-Gui")')

" 自定义函数
call g:quickmenu#append('# 自定义函数', '')
call g:quickmenu#append('复制当前文件目录地址到剪贴板',   ':call GetCurFilePath()', '执行: call GetCurFilePath()')

" 帮助/助记
call g:quickmenu#append('# 帮助/助记','')
call g:quickmenu#append('底部打开命令窗口 快捷键Alt+=',':Term','执行快捷键，或用相关插件的配置Alt+=')
call g:quickmenu#append('关闭Buff',':bd', '执行:bd')



"""""""""""""""""""""""""""  wakatime/vim-wakatime """"""""""""""""""""""""""""""
let g:wakatime_PythonBinary = '/usr/bin/python'  " (Default: 'python')
let g:wakatime_OverrideCommandPrefix = '/usr/bin/wakatime'  " (Default: '')


"""""""""""""""""""""""""""""""""voldikss/vim-translator设置'"""""""""""""""""
nmap <silent> <Leader>ts <Plug>TranslateW
vmap <silent> <Leader>ts <Plug>TranslateWV
let g:translator_window_max_width=0.3
let g:translator_window_max_height=0.3
let g:translator_default_engines=['youdao' , 'google']


""""""""""""""""""""""" vim自带插件matchit配置 """""""""""""""""""""""""""""""""
let b:match_word='\<begin\>:\<end\>,'
    \ . '\<while\>:\<continue\>:<break\>:\<endwhile\>,'
    \ . '\<if\>:\<else if\>:<else\>,'
    \ . '\<module\>:\<endmodule\>,'
    \ . '\<task\>:\<endtask\>,'
    \ . '\<function\>:\<endfunction\>,'
    \ . '\<program\>:\<endprogram\>'
let b:matchit_ignorecase=1    "开启 忽略大小写

" 设置完成后，在关键字如begin上按%，光标就会跳转到与之匹配的end上，灰常慌便

"""""""""""" Goyo和junegunn/limelight"""""""""""
map <LEADER>gy    :Goyo<CR>
xmap <Leader>gy   :Goyo<CR>
let g:limelight_default_coefficient = 0.5   " 设置隐藏区域的黑暗度, 值越大越暗
let g:limelight_paragraph_span = 2      " 设置暗光的跨度, 暗光所能照亮的范围
let g:limelight_priority = -1        " 暗光优先级, 防止搜索的高亮效果被覆盖
autocmd! User GoyoEnter Limelight   " 进入 Goyo 专注插件时, 同时开启暗光效果
autocmd! User GoyoLeave Limelight!   " 离开 Goyo 专注插件时, 同时退出暗光效果

""""""""""""""""""""""""altercation/vim-colors-solarized"""""""""""""""""""""

let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_italic=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:solarized_hitrail=0
let g:solarized_menu=1

"""""""""""""""""""""""lfv89/vim-interestingwords""""""""""""""""""""""""""""""

let g:interestingWordsDefaultMappings = 0
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> n :call WordNavigation(1)<cr>
nnoremap <silent> N :call WordNavigation(0)<cr>

let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']

let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1


"""""""""""""""""""""""""""""""""""""""""""""COC-vim配置"""""""""""""""""""""""""""
" :checkhealth
" 安装命令:CocInstall 插件名
" 移除命令:CocUninstall 插件名
" 查看已安装:CocList extensions
" 更新命令:CocUpdate
let g:coc_global_extensions = [
	\ 'coc-css',
    \ 'coc-clangd',
    \ 'coc-cmake',
	\ 'coc-diagnostic',
	\ 'coc-docker',
	\ 'coc-eslint',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-import-cost',
	\ 'coc-jest',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-omnisharp',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tailwindcss',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vetur',
	\ 'coc-vimlsp',
	\ 'coc-yaml',
    \ 'coc-yank']

inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" :  <SID>check_back_space() ? "\<TAB>" : coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
    " inoremap <silent><expr> <c-o> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

function! Show_documentation()
    call CocActionAsync('highlight')
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
nnoremap <LEADER>h :call Show_documentation()<CR>
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> <LEADER>- <Plug>(coc-diagnostic-prev)
nmap <silent> <LEADER>= <Plug>(coc-diagnostic-next)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap cc :CocCommand<CR>
" Text Objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>aw  <Plug>(coc-codeaction-selected)w
" coctodolist
" nnoremap <leader>tn :CocCommand todolist.create<CR>
" nnoremap <leader>tl :CocList todolist<CR>
" nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
" coc-tasks
noremap <silent> <leader>ct :CocList tasks<CR>
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'jj.Chen'
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc



""""""""""""""""""""""""""""""""""""""vim-trailing-whitespace" **********
  " <leader> + space 去掉末尾空格快捷键
  nnoremap <leader><space> :FixWhitespace<cr>


" ********** """"""""""""""""""""""""""""""vim-utils/vim-man" **********
" <leader>m 新建水平窗口打开man
map <leader>hh <Plug>(Man)
" <leader>v 新建垂直窗口打开man
map <leader>vh <Plug>(Vman)


 " ********** "chrisbra/ChangesPlugin 文件显示修改痕迹" **********
let g:changes_autocmd=1
let g:changes_use_icons = 1
" let g:changes_respect_SignColumn = 1
let g:changes_sign_text_utf8 = 1

let g:changes_linehi_diff = 0
hi ChangesSignTextAdd ctermbg=None ctermfg=green guibg=None  guifg=green
hi ChangesSignTextDel ctermbg=None  ctermfg=red   guibg=None  guifg=red
hi ChangesSignTextCh  ctermbg=None   ctermfg=blue guibg=None   guifg=blue

"""""""""""""""""""""""""RRethy/vim-illuminate""""""""""""""""""""""""""""""""""
let g:Illuminate_ftblacklist = ['nerdtree']
let g:Illuminate_ftwhitelist = ['vim', 'sh', 'python', 'cpp', 'tex', 'js', 'java', 'v', 'sv']
augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END


let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl

""""""""""""""""""""""""""""" Xuyuanp/scrollbar.nvim配置"""""""""""""""""""""""""""""""""""""""""
augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

""""""""""""""""""""""""""""" dstein64/nvim-scrollview配置"""""""""""""""""""""""""""""""""""""""""
let g:scrollview_excluded_filetypes = ['nerdtree','defx','tarbar','taglist']
let g:scrollview_current_only = 1
let g:scrollview_winblend = 10
" Position the scrollbar at the 80th character of the buffer
let g:scrollview_base = 'buffer'
let g:scrollview_column = 200


""""""""""""""""""""""""""""" gelguy/wilder.nvim配置"""""""""""""""""""""""""""""""""""""""""
call wilder#setup({'modes': [':', '/', '?']})

call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#cmdline_pipeline(),
      \     wilder#search_pipeline(),
      \   ),
      \ ])

call wilder#set_option('renderer', wilder#wildmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ }))


""""""""""""""""""""""""""""" justincampbell/vim-eighties配置"""""""""""""""""""""""""""""""""""""""""
let g:eighties_enabled = 1
let g:eighties_minimum_width = 80
let g:eighties_extra_width = 0 " Increase this if you want some extra room
let g:eighties_compute = 1 " Disable this if you just want the minimum + extra
let g:eighties_bufname_additional_patterns = ['fugitiveblame'] " Defaults to [], 'fugitiveblame' is only an example. Takes a comma delimited list of bufnames as strings.


""""""""""""""""""""""""""""" wahidrahim/resize-font配置"""""""""""""""""""""""""""""""""""""""""
map ;fs :ResizeFontSmaller<CR>
map ;fl :ResizeFontBigger<CR>


"""""""""""""""""""""""""""""luochen1990/rainbow配置"""""""""""""""""""""""""""""""""""""""""

" rainbow 对于不同的括号，渲染成不同颜色
let g:rainbow_active = 1
let g:rainbow_operators=2
let g:rainbow_conf = {
            \   'guifgs': ['magenta1', 'maroon1', 'red1', 'orange1'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,\|+\|-_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred', 'darkgreen'],
            \       },
            \       'vim': {
            \           'parentheses': [['fu\w* \s*.*)','endfu\w*'], ['for','endfor'], ['while', 'endwhile'], ['if','_elseif\|else_','endif'], ['(',')'], ['\[','\]'], ['{','}']],
            \       },
            \       'tex': {
            \           'parentheses': [['(',')'], ['\[','\]'], ['\\begin{.*}','\\end{.*}']],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \       'stylus': 0,
            \   }
            \}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""rainbow_parenthsis配置""""""""""""""""""""""""""""""""""""""""""""""""""


let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
"RainbowParenthesesLoadRound 选项用于开启对 圆括号 () 的多彩色高亮匹配，该选项默认被开启；
au Syntax * RainbowParenthesesLoadRound
"RainbowParenthesesLoadSquare 选项用于开启对 方括号 [] 的多彩色高亮匹配；
au Syntax * RainbowParenthesesLoadSquare
"RainbowParenthesesLoadBraces 选项用于开启对 大括号 {} 的多彩色高亮匹配；
au Syntax * RainbowParenthesesLoadBraces
"RainbowParenthesesLoadChevrons 选项用于开启对 尖括号 <> 的多彩色高亮匹配。
"au Syntax * RainbowParenthesesLoadChevrons "


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""" mechatroner/rainbow_csv """"""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile,BufRead *.csv   set filetype=csv_semicolon
autocmd BufNewFile,BufRead *.dat   set filetype=csv_pipe
let g:rcsv_delimiters = ["\t", ",", "^", "~#~"]
let g:disable_rainbow_csv_autodetect = 1

let g:rcsv_colorpairs = [['red', 'red'], ['blue', 'blue'], ['green', 'green'], ['magenta', 'magenta'], ['NONE', 'NONE'], ['darkred', 'darkred'], ['darkblue', 'darkblue'], ['darkgreen', 'darkgreen'], ['darkmagenta', 'darkmagenta'], ['darkcyan', 'darkcyan']]

"""""""""""""""""""""""""""""""""""""""""""""""""" kristijanhusak/vim-dadbod-ui """"""""""""""""""""""""""""""""""""""""""""""""""
let g:db_ui_use_nerd_fonts=1



"""""""""""""""""""""""""""""""""""""""""""""""""" francoiscabrol/ranger.vim """"""""""""""""""""""""""""""""""""""""""""""""""
let g:ranger_map_keys = 0

nnoremap ;rg :Ranger<CR>
let g:NERDTreeHijackNetrw = 0 " add this line if you use NERDTree
let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

"""""""""""""""""""""""""""""""""""""""""""""""""  kevinhwang91/rnvimr """""""""""""""""""""""""""""""""""""""""""""""""

" 设置<F3> 启动文件管理器
nnoremap ;rn :RnvimrToggle<CR>
" 让Ranger取代Netrw并成为文件浏览器
let g:rnvimr_enable_ex = 1
" 选择文件后隐藏游侠
let g:rnvimr_enable_picker = 1
" 使用multipane模式启动(单列)可以按~手动切换
let g:rnvimr_ranger_cmd = 'ranger --cmd="set viewmode multipane"'

" Draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'


" Replace `$EDITOR` candidate with this command to open the selected file
let g:rnvimr_edit_cmd = 'drop'

" Disable a border for floating window
let g:rnvimr_draw_border = 0

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70


" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Add views for Ranger to adapt the size of floating window
let g:rnvimr_ranger_views = [
            \ {'minwidth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {'width': 0.600, 'height': 0.600},
            \ {},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            \ ]

" Fullscreen for initial layout
let g:rnvimr_layout = {
           \ 'relative': 'editor',
           \ 'width': &columns,
           \ 'height': &lines - 2,
           \ 'col': 0,
           \ 'row': 0,
           \ 'style': 'minimal'
           \ }
"
" Only use initial preset layout
" let g:rnvimr_presets = [{}]


"""""""""""""""""""""""""""""""""""""""""""""""""" Lokaltog/neoranger """"""""""""""""""""""""""""""""""""""""""""""""""
" Open ranger at current file with "-"
nnoremap <silent> _ :RangerCurrentFile<CR>

" Open ranger in current working directory
nnoremap <silent> + :Ranger<CR>
" for setting ranger viewmode values
let g:neoranger_viewmode='multipane' " supported values are ['multipane', 'miller']

" for setting any extra option passed to ranger params
let g:neoranger_opts='--cmd="set show_hidden true"' " this line makes ranger show hidden files by default



"""""""""""""""""""""""""""""""""""""""""""""""""" dkarter/bullets.vim """"""""""""""""""""""""""""""""""""""""""""""""""
" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

let g:bullets_enable_in_empty_buffers = 0 " default = 1
let g:bullets_set_mappings = 0 " default = 1
let g:bullets_mapping_leader = '<M-b>' " default = ''
let g:bullets_delete_last_bullet_if_empty = 0 " default = 1
let g:bullets_line_spacing = 2 " default = 1
let g:bullets_pad_right = 1 " default = 1
" let g:bullets_pad_right = 0
let g:bullets_max_alpha_characters = 2 " default = 2
" let g:bullets_max_alpha_characters = 1
let g:bullets_outline_levels = ['ROM', 'ABC', 'num', 'abc', 'rom', 'std-', 'std*', 'std+'] " default
" let g:bullets_outline_levels = ['num', 'abc', 'std-']
let g:bullets_renumber_on_change = 1 " default = 1



""""""""""""""""""""""""""""""""wincent/terminus插件"""""""""""""""""""""""""""""""
let g:TerminusFocusReporting=0

"""""""""""""""""" vim-signify插件配置""""""""""""""""""""
let g:signify_vcs_list = ['git','svn']

"""""""""""""""""""""""""" cohama/agit.vim插件"""""""""""""""""""""""""""""""""""""""""
nnoremap <LEADER>gl :Agit<CR>
let g:agit_no_default_mappings = 1

"""""""""""""""""""""""""" skywind3000/vim-rt-format插件"""""""""""""""""""""""""""""""""""""""""
" 默认情况下，它将在插入模式下由“ENTER”触发。
" 将此设置为 1 以使用`CTRL+ENTER`，并保持
" 默认的“ENTER”行为不变。
let g:rtf_ctrl_enter = 0

" 离开 INSERT 模式的时候再格式化一次
let g:rtf_on_insert_leave = 1


"""""""""""""""""""""""""""""""""""""""""""""" jesseduffield/lazygit.nvim插件"""""""""""""""""""""""""""""""""""""
noremap <c-g> :LazyGit<CR>
nnoremap <silent> <leader>lg :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available

if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
"""""""""""""""""""""""""""""""""airblade/vim-gitgutter插件"""""""""""""""""""""""""""""""""""

" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)
nmap <leader>hd :GitGutterDisable<CR>
nmap <leader>he :GitGutterEnable<CR>

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:gitgutter_sign_added = 'xx'
let g:gitgutter_sign_modified = 'yy'
let g:gitgutter_sign_removed = 'zz'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = 'ww'



""""""""""""""""""""""""""""" fszymanski/fzf-gitignore  插件"""""""""""""""""""""""""""
noremap ;gi :FzfGitignore<CR>


"""""""""""""""""""""""""""""" tpope/vim-fugitive""""""""""""""""""""""""""""""""""""""

" :Gblame其实就是执行git blame命令，然后直接在vim中将git的输出结果与源代码一一对应起来。这样当你读团队代码的时候发现了一个坑，然后想知道是谁写的这个坑的时候，只需要:Gblame一下，结果立马呈现。



"""""""""""""""""""""""""" brooth/far.vim插件""""""""""""""""""""""""""""""""""""

" noremap <Leader>f :F  **/*<left><left><left><left><left>
noremap <Leader>f :F   %<left><left>
let g:far#mapping = {
        \ "replace_undo" : ["l"],
        \ }

set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
set ignorecase smartcase  " ignore case only when the pattern contains no capital letters

" shortcut for far.vim find
nnoremap <silent> ;f  :Farf<cr>
vnoremap <silent> ;f  :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <Leader>r  :Farr<cr>
vnoremap <silent> <Leader>r  :Farr<cr>


" """"""""""""""""""""""""OmniSharp/omnisharp-vim插件"""""""""""""""""""""""""

let g:OmniSharp_typeLookupInPreview = 1
let g:omnicomplete_fetch_full_documentation = 1

let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_selector_ui = 'ctrlp'

autocmd Filetype cs nnoremap <buffer> gd :OmniSharpPreviewDefinition<CR>
autocmd Filetype cs nnoremap <buffer> gr :OmniSharpFindUsages<CR>
autocmd Filetype cs nnoremap <buffer> gy :OmniSharpTypeLookup<CR>
autocmd Filetype cs nnoremap <buffer> ga :OmniSharpGetCodeActions<CR>
autocmd Filetype cs nnoremap <buffer> <LEADER>rn :OmniSharpRename<CR><C-N>:res +5<CR>

sign define OmniSharpCodeActions text=💡

augroup OSCountCodeActions
    autocmd!
    autocmd FileType cs set signcolumn=yes
    autocmd CursorHold *.cs call OSCountCodeActions()
augroup END

function! OSCountCodeActions() abort
    if bufname('%') ==# '' || OmniSharp#FugitiveCheck() | return | endif
    if !OmniSharp#IsServerRunning() | return | endif
    let opts = {
                \ 'CallbackCount': function('s:CBReturnCount'),
                \ 'CallbackCleanup': {-> execute('sign unplace 99')}
                \}
    call OmniSharp#CountCodeActions(opts)
endfunction

function! s:CBReturnCount(count) abort
    if a:count
        let l = getpos('.')[1]
        let f = expand('%:p')
        execute ':sign place 99 line='.l.' name=OmniSharpCodeActions file='.f
    endif
endfunction


"""""""""""""""""" ctrlpvim/ctrlp.vim (Dependency for omnisharp)"""""""""""""""""""""""

let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'


""""""""""""""""""""""""""""""""""""""""""""" liuchengxu/vim-clap 配置""""""""""""""""""""""""""""""""""""""""""""""
let g:clap_layout = { 'relative': 'editor' }
" let g:clap_layout = { 'width': '95%', 'col': '5%' }
let g:clap_theme = 'material_design_dark'
let g:clap_theme = { 'search_text': {'guifg': 'red', 'ctermfg': 'red'} }

" vim-clap
nnoremap <silent><nowait> <space>op  :<C-u>Clap<CR>
nnoremap <silent><nowait> <space>ob  :<C-u>Clap buffers<CR>
nnoremap <silent><nowait> <space>oc  :<C-u>Clap command<CR>
nnoremap <silent><nowait> <space>oh  :<C-u>Clap history<CR>
nnoremap <silent><nowait> <space>of  :<C-u>Clap files ++finder=rg --ignore --hidden --files<CR>
nnoremap <silent><nowait> <space>oq  :<C-u>Clap quickfix<CR>
nnoremap <silent><nowait> <space>oj  :<C-u>Clap jumps<CR>
nnoremap <silent><nowait> <space>om  :<C-u>Clap marks<CR>
nnoremap <silent><nowait> <space>ow  :<C-u>Clap windows<CR>
nnoremap <silent><nowait> <space>ot  :<C-u>Clap tags<CR>
nnoremap <silent><nowait> <space>os  :<C-u>Clap colors<CR>
nnoremap <silent><nowait> <space>og  :<C-u>Clap grep2<CR>

let g:which_key_map = {
			\ 'name' : '+clap',
			\ 'p' : 'clap',
			\ 'b' : 'buffers',
			\ 'c' : 'command',
			\ 'h' : 'file history',
			\ 'f' : 'search file',
			\ 'q' : 'quickfix list',
			\ 'j' : 'jumps',
			\ 'm' : 'marks',
			\ 'w' : 'windows',
			\ 't' : 'tags',
			\ 's' : 'colors',
			\ 'g' : 'find word',
			\ }
let g:clap_provider_quick_open = {
      \ 'source': ['~/.vimrc','~/.config/nvim/init.vim', '~/.spacevim', '~/.bashrc', '~/.tmux.conf'],
      \ 'sink': 'e',
      \ 'description': 'Quick open some dotfiles',
      \ }
""""""""""""""""""""""""""""""""""""""""""""" junegunn/fzf.vim配置""""""""""""""""""""""""""""""""""""""""""""""


" Ctrl + , 查看当前 Buffer，两次 Ctrl + e 快速切换上次打开的 Buffer
nmap <C-,> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

"<Leader>f在当前目录搜索文件
" Ctrl + f 查看文件列表
nnoremap <silent> <Leader>ff :Files<CR>


"<Leader>b切换Buffer中的文件
nnoremap <silent> <Leader>fb :Buffers<CR>

"<Leader>p在当前所有加载的Buffer中搜索包含目标词的所有行，:BLines只在当前Buffer中搜索
nnoremap <silent> <Leader>fp :Lines<CR>

"<Leader>h在Vim打开的历史文件中搜索，相当于是在MRU中搜索，:History：命令历史查找
nnoremap <silent> <Leader>fh :History<CR>




" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10split enew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.

let g:fzf_history_dir = '~/.local/share/fzf-history'


" [Buffers] 如果可能跳到已存在窗口
let g:fzf_buffers_jump = 1

" [[B]Commits] 自定义被'git log'使用的选项
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] 定义用来产生tag的命令
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


" Command for git grep
" - fzf#vim#grep(command, with_column, [options], [fullscreen])
command! -bang -nargs=* GGrep
            \ call fzf#vim#grep(
            \   'git grep --line-number '.shellescape(<q-args>), 0,
            \   { 'dir': systemlist('git rev-parse --show-toplevel')[0] }, <bang>0)

"调用Rg进行搜索，包含隐藏文件
"这样输入:Rg <keyword>会调用ripgrep来递归搜索当前目录
command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always --smart-case --hidden '.shellescape(<q-args>), 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%:hidden', '?'),
            \   <bang>0)
" Override Colors command. You can safely do this in your .vimrc as fzf.vim
" will not override existing commands.
command! -bang Colors
            \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'}, <bang>0)


command! -bang -nargs=* Ag
            \ call fzf#vim#ag(<q-args>,
            \                 <bang>0 ? fzf#vim#with_preview('up:60%')
            \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
            \                 <bang>0)
nnoremap <silent> <Leader>A :Ag<CR>


" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
            \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)



""""""""""""""""""""""""""""""""""""""""" LeaderF 设置  """""""""""""""""""""""""""""""""""""""""""""""

" 安装ctags
" sudo apt-get install ctags

" Ctrl + p 打开文件搜索
let g:Lf_ShortcutF = '<C-s>'

"\p 打开函数列表
noremap lf :LeaderfFunction<cr>
"函数搜索（仅当前文件里），依赖ctags插件
nnoremap <silent> lf :Leaderf function<CR>
nnoremap <silent> lf :LeaderfFunction<CR>
"文件搜索
nnoremap <silent> <Leader>lf :Leaderf file<CR>
nnoremap <silent> <Leader>lf :LeaderfFile<CR>
"历史打开过的文件
nnoremap <silent> <Leader>lh :Leaderf mru<CR>
nnoremap <silent> <Leader>lh :LeaderfMru<CR>
"Buffer
nnoremap <silent> <Leader>lb :Leaderf buffer<CR>
nnoremap <silent> <Leader>lb :LeaderfBuffer<CR>

" 搜索当前文件中有的某个单词
nnoremap <silent> <Leader>lw :Leaderf line<CR>

" 更换颜色
nnoremap <silent> <Leader>lc :Leaderf colorscheme<CR>

" 是召回上一个命令的最后搜索结果
nnoremap <silent> <Leader>lr Leaderf --recall<CR>
"模糊搜索，很强大的功能，迅速秒搜
nnoremap <silent> <Leader>rg :Leaderf rg<CR>

" <C-C>, <ESC> : 退出 LeaderF.
" <C-R> : 在模糊匹配和正则式匹配之间切换
" <C-F> : 在全路径搜索和名字搜索之间切换
" <Tab> : 在检索模式和选择模式之间切换
" <C-J>, <C-K> : 在结果列表里选择
" <C-X> : 在水平窗口打开
" <C-]> : 在垂直窗口打开
" <C-T> : 在新标签打开
" <C-P> : 预览结果

" 使用 popup window /floating window 预览
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""   ack配置   """""""""""""""""""""""""""""""""""""""""
" ack插件首先需要安全ag
" # OSX
" brew install the_silver_searcher
" # ArchLinux
" pacman -S the_silver_searcher
" # Ubuntu
" apt-get install silversearcher-ag

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ack_prg = "ag --vimgrep --smart-case"


" map <F4> :Ack -i
" imap <F4> :Ack -i

" 以后在普通模式下输入Ctrl+U便可以自动输入:Ack 了
map <Leader>ak :Ack <space>-i<space>


"""""""""""""""""""""""""""""""""""""" easymotion/vim-easymotion配置 """"""""""""""""""""""""""""""""""""""
" \\w    # 向后查找单词(find word after),定位到词首
" \\W    # 向后查找单词(find word before)
" \\e    # 向后查找，定位到词尾(find word end after)
" \\E    # 向后查找，位位到词尾(find word end before)
" \\b    # 向前查找单字，定位到词尾(find word end after)
" \\B    # 向前查找单字，位位到词尾(find word end before)
" \\f    # 向后查找单字(find letter after)
" \\F    # 向前查找单字(find letter before)
" \\s    #快捷键<leader><leader>s(即\\s), 然后输入要搜索的字母, 这个跳转是双向的

let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" 行内跳转(hl)
map <Leader><leader>h <Plug>()
map <Leader><leader>l <Plug>(easymotion-lineforward)

" 行级跳转(jk)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

" 使用 ss 启用
nmap ss <Plug>(easymotion-s2)
"注意：以上操作都是在本界面，也就是在当前所在屏幕的大小里面能显示的界面

"""""""""""""""""""""""""""""""""" 'tpope/vim-surround'配置 """"""""""""""""""""""""""""""""""""""""""
" 命令行模式
" ds "              删除一个配对符号 (delete a surrounding)
" cs "              更改一个配对符号 (change a surrounding)
" cS "              更改一个配对符号 (change a  surrounding),原配对号内的文本做新一行
" ys "              增加一个配对符号 (yank a surrounding)
" yS "              在新的行增加一个配对符号并进行缩进
" yss "             在整行增加一个配对符号
" ySs/Yss  "        在整行增加一个配对符号，配对符号单独成行并进行缩进

"  插入模式
" Ctrl + s                    增加一个配对符号
" Ctrl +s, Ctrl +s        在整行增加一个配对符号，配对符号单独成行并进行缩进

" 可视模式
" S         选中的部分括起来
" gS        选中的括起来，括号内文本做新一行

" 如
" ds"回车           删除"hello, world" -> hello,world
" cs"(回车          替换 "hello,world"  -> (hello,world)
" cst" 回车            替换-标签(t=tag)  ==> <a>abc</a>a>  -> "abc"
" cst<html>回车        替换标签 ==> <a>abc</a>a>  -> <html>abc</html>html>
" cS"(回车           "hello,world"  -> (
"                                 hello,world
"                          )
" ysw(回车           会在当前光标所在单词w的周围增加一个 () 配对   hello world  ->  hello ( world )

" ysw<em回车         hello world  ->   <em>hello</em> world


" ySw[         hello world -> hello [
"                                         world
"                                     ]

" yss"        添加一整行 Hello,world -> "Hello,world"
" ySS"        添加括起来，括号内文本做新一行 Hello,world -> "
"                                                            Hello,world
"                                                           "
" ySS<div回车               hello world  ->       <div>
"                                                 hello world
"                                                 </div>

" 可视模式：
" S(回车         hello world ->  ( hello world )
" gS(          hello world   ->         (
"                                           hello world
"                                       )
vmap " S"
vmap ' S'
vmap ` S`
vmap [ S[
vmap ( S(
vmap { S{
vmap } S}
vmap ] S]
vmap ) S)
vmap . S>

" 比如下面代码我想快速在 iostream加上<>那么可以这样操作：
"
" ve 选中iostream这个单词
" > 给iostream加上尖括号

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""vimspector插件"""""""""""""""""""""""""""""""""""""
"安装对应语言调试工具
" cd ~/.vim/plugged/vimspector
" # c, c++
" ./install_gadget.py --enable-c
" # python
" ./install_gadget.py --enable-python
" # go
" ./install_gadget.py --enable-go

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
function! s:read_template_into_buffer(template)
    " has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
" noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad

""""""""""""""""""machakann/vim-highlightedyank 设置""""""""""""""""""""""""""""""

hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 1000 " 高亮持续时间为 1000 毫秒



""""""""""""""""""glepnir/dashboard-nvim设置""""""""""""""""""""""""""""""
" let g:dashboard_default_header = "eval"
" let g:dashboard_custom_header = [
"        \ '',
"        \ '███████╗██╗   ██╗ ██████╗ ██╗    ██╗   ██╗███████╗    ██╗',
"        \ '██╔════╝██║   ██║██╔═══██╗██║    ██║   ██║██╔════╝    ██║',
"        \ '█████╗  ██║   ██║██║   ██║██║    ██║   ██║█████╗      ██║',
"        \ '██╔══╝  ╚██╗ ██╔╝██║   ██║██║    ╚██╗ ██╔╝██╔══╝      ╚═╝',
"        \ '███████╗ ╚████╔╝ ╚██████╔╝███████╗╚████╔╝ ███████╗    ██╗',
"        \ '╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═══╝  ╚══════╝    ╚═╝',
"        \ '',
"        \ '                       [Hello jj.Chen]',
"        \ '',
" \ ]
"
"
" let g:dashboard_preview_command = 'cat'
" let g:dashboard_preview_pipeline = 'lolcat'
" let g:dashboard_preview_file_height = 10
" let g:dashboard_preview_file_width = 80
" " let g:dashboard_default_executive ='telescope'
" " let g:dashboard_default_executive ='clap'
" let g:dashboard_default_executive ='fzf'
nmap ;ss :<C-u>SessionSave<CR>
nmap ;sl :<C-u>SessionLoad<CR>
nnoremap <silent> ;dh :DashboardFindHistory<CR>
nnoremap <silent> ;df :DashboardFindFile<CR>
nnoremap <silent> ;dc :DashboardChangeColorscheme<CR>
nnoremap <silent> ;fa :DashboardFindWord<CR>
nnoremap <silent> ;fb :DashboardJumpMark<CR>
nnoremap <silent> ;dn :DashboardNewFile<CR>
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }

" let g:dashboard_custom_shortcut_icon['last_session'] = ' '
" let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
" let g:dashboard_custom_shortcut_icon['find_file'] = ' '
" let g:dashboard_custom_shortcut_icon['new_file'] = ' '
" let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
" let g:dashboard_custom_shortcut_icon['find_word'] = ' '
" let g:dashboard_custom_shortcut_icon['book_marks'] = ' '
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""nvim-telescope/telescope.nvim配置"""""""""""""""""""""""""""""""""
" Find files using Telescope command-line sugar.
nnoremap [tf <cmd>Telescope find_files<cr>
nnoremap [tg <cmd>Telescope live_grep<cr>
nnoremap [tb <cmd>Telescope buffers<cr>
nnoremap [th <cmd>Telescope help_tags<cr>

" Using lua functions
nnoremap ]tf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap ]tg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap ]tb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap ]th <cmd>lua require('telescope.builtin').help_tags()<cr>


highlight TelescopeSelection      guifg=#D79921 gui=bold  ctermfg=11 " selected item
highlight TelescopeSelectionCaret guifg=#CC241D  ctermfg=9  " selection caret
highlight TelescopeMultiSelection guifg=#928374  ctermfg=241  " multisections
highlight TelescopeNormal         guibg=#000000   ctermfg=0 " floating windows created by telescope.

" Border highlight groups.
highlight TelescopeBorder         guifg=#ffffff      ctermfg=15
highlight TelescopePromptBorder   guifg=#ffffff      ctermfg=15
highlight TelescopeResultsBorder  guifg=#ffffff      ctermfg=15
highlight TelescopePreviewBorder  guifg=#ffffff      ctermfg=15

" Used for highlighting characters that you match.
highlight TelescopeMatching       guifg=blue        ctermfg=12

" Used for the prompt prefix
highlight TelescopePromptPrefix   guifg=red        ctermfg=9
""""""""""""""""""""""""""suda配置"""""""""""""""""""""""""""""""""
"This plugin was built while :w !sudo tee % > /dev/null trick does not work on neovim.
" Re-open a current file with sudo
"  :SudaRead

" Open /etc/sudoers with sudo
"  :SudaRead /etc/sudoers

" Forcedly save a current file with sudo
" :SudaWrite

" Write contents to /etc/profile
" :SudaWrite /etc/profile

" 'Password' in french
let g:suda#prompt = 'Mot de passe:'


""""""""""""""""""""""""""""""""""""""""glepnir/galaxyline.nvim设置"""""""""""""""""""""""""""""""
" luafile ~/.config/nvim/eviline.lua

""""""""""""""""""""junegunn/vim-easy-align 插件"""""""""""""""""""""""''
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


""""""""""""""""""""itchyny/calendar.vim插件"""""""""""""""""""""""''

"noremap \c :Calendar -position=here<CR>
let g:calendar_frame = 'default'
noremap \\ :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
    autocmd!
    " diamond cursor
    autocmd FileType calendar nmap <buffer> k <Plug>(calendar_up)
    autocmd FileType calendar nmap <buffer> h <Plug>(calendar_left)
    autocmd FileType calendar nmap <buffer> j <Plug>(calendar_down)
    autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
    autocmd FileType calendar nmap <buffer> <c-k> <Plug>(calendar_move_up)
    autocmd FileType calendar nmap <buffer> <c-h> <Plug>(calendar_move_left)
    autocmd FileType calendar nmap <buffer> <c-j> <Plug>(calendar_move_down)
    autocmd FileType calendar nmap <buffer> <c-l> <Plug>(calendar_move_right)
    autocmd FileType calendar nmap <buffer> k <Plug>(calendar_start_insert)
    autocmd FileType calendar nmap <buffer> K <Plug>(calendar_start_insert_head)
    " unmap <C-n>, <C-p> for other plugins
    autocmd FileType calendar nunmap <buffer> <C-n>
    autocmd FileType calendar nunmap <buffer> <C-p>
augroup END



""""""""""""""""""""""""""Yggdroot/indentLine插件"""""""""""""""""""""""""""""""""
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['defx', 'denite','startify','tagbar','vista_kind','vista','coc-explorer','dashboard']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel =1

" """"""""""""""""""""""""""""""""  nathanaelkane/vim-indent-guides """"""""""""""""""""""""""""""""
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" hi IndentGuidesOdd  guibg=red   ctermbg=3
" hi IndentGuidesEven guibg=green ctermbg=4

""""""""""""""""""""""""""""""""  vim-move配置   """""""""""""""""""""""""""""""""""""""""""

" let g:move_key_modifier = 'C'

" <C-k>   Move current line/selection up
" <C-j>   Move current line/selection down
" <C-h>   Move current character/selection left
" <C-l>   Move current character/selection right


""""""""""""""""""""""""""kshenoy/vim-signature插件"""""""""""""""""""""""""

let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoNextLineAlpha'  :  "m<LEADER>",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoNextSpotAlpha'  :  "m<LEADER>",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

""""""""""""""""""""""vim-startify""""""""""""""""""""""""""""""""""
"设置书签
let g:startify_bookmarks            = [
            \ '~/Project/test.cpp',
            \]
"起始页显示的列表长度
let g:startify_files_number = 20
"自动加载session
let g:startify_session_autoload = 1
"过滤列表，支持正则表达式
let g:startify_skiplist = [
       \ '^/tmp',
       \ ]
"自定义Header和Footer
let g:startify_custom_header = [
            \ '+------------------------------+',
            \ '|                              |',
            \ '|    Still waters run deep!    |',
            \ '|                              |',
            \ '+----------------+-------------+',
            \]
let g:startify_custom_footer = [
            \ '+------------------------------+',
            \ '|     Keep an open mind!       |',
            \ '+----------------+-------------+',
            \]

"""""""""""""""""""""""""""""""Undotree插件"""""""""""""""""""""""""""""""""""""""""""

let g:undotree_DiffAutoOpen = 0
nnoremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
    nmap <buffer> u <plug>UndotreeNextState
    nmap <buffer> e <plug>UndotreePreviousState
    nmap <buffer> U 5<plug>UndotreeNextState
    nmap <buffer> E 5<plug>UndotreePreviousState
endfunc



""""""""""""""""""""""""""""""""""""""开始配置scrooloose/nerdtree""""""""""""""""""""""""""""
" 启动vim时 自动打开NERDTree
" autocmd vimenter * NERDTree

let g:NERDTreeChDirMode = 2  "Change current folder as root
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif

"打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif

" 当vim打开一个目录时，nerdtree自动使用
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap fl :NERDTreeToggle<CR>

" ctrl + d 打开目录
" map <C-d> :NERDTreeToggle<CR>
nmap nt :NERDTreeToggle<CR>

" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"

" 开启Nerdtree时自动显示Bookmarks
let NERDTreeShowBookmarks=1

"光标自动显示在编辑区
autocmd VimEnter * wincmd w

" 设置宽度
let NERDTreeWinSize=25

" 是否显示隐藏文件
let NERDTreeShowHidden=1

let g:NERDTreeHidden=1     " Don't show hidden files

" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

"是否打开目录树
let g:nerdtree_tabs_open_on_console_startup=0

let NERDTreeQuitOnOpen=1   " Close NERDtree when files was opened
let NERDTreeMinimalUI=1    " Start NERDTree in minimal UI mode (No help lines)
let NERDTreeDirArrows=1    " Display arrows instead of ascii art in NERDTree
let NERDTreeChDirMode=2    " Change current working directory based on root directory in NERDTree

" 显示目录行号
let NERDTreeShowLineNumbers=1
"设置树的显示图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

let NERDTreeAutoCenter=1
let NETDTreeIgnore=['\~$','\.pyc$','\.swp$'] "隐藏.pyc等文件

"-----------------------------打开目录树-------------------------
" \fl    打开或关闭 NERDTree，此键可以根据自己需求定义。
" :NERDTreeToggle
" :NERDTree 打开 NERDTree
" :NERDTreeClose    关闭 NERDTree
" q 关闭这个 NERDTree 窗口；
" A 调整 NERDTree 窗口大小（最大化、最小化）

"-----------------------------书签-------------------------
" :Bookmark <name>  将目录树保存为指定名字的书签；
" :NERDTreeFromBookmark <name>  打开指定书签名的目录树；
" :ClearBookmarks <name>    删除指定书签；
" :ClearAllBookmarks    删除所有书签；

"-----------------------------过滤-------------------------
" I 大写 "i"，显示或者隐藏 "." 号开头的文件和目录；
" f 切换是否使用文件筛选；
" F 切换是否显示文件；
" B 切换是否显示书签表；

"-----------------------------根目录-------------------------
" :NERDTreeCWD  将 CWD 设为目录树根目录；
" CD    将 CWD 目录作为目录树的根目录；
" C 将当前目录作为目录树的根目录；
" u 将当前根目录的上级目录作为根目录；
" U 同 u;
" cd    将选定的目录作为 CWD 目录；

"-----------------------------刷新-------------------------
" R 刷新当前根目录
" r 刷新当前目录

"-----------------------------目录-------------------------
" o 打开 \ 关闭文件或目录，打开文件时光标会跳到编辑区域；
" O 递归打开当前目录下的所有目录
" x 关闭父目录；
" X 关闭所有子目录；

"-----------------------------定位-------------------------
" :NERDTreeFind 在目录树中定位到当前打开的文件；
" P 跳转到根目录
" p 跳转到上层目录
" K 到同级第一个节点
" J 到同级最后一个节点
" k 跳转到上一个节点；
" j 跳转到下一个节点；
" <C-K> 跳转到同级上一个节点；
" <C-J> 跳转到同级下一个节点；

"-----------------------------文件-------------------------
" m 显示文件系统管理菜单（添加、删除、移动、复制、现在属性等操作）
" o 打开/关闭文件或目录，打开文件时光标会跳到编辑区域；
" go    打开目录树光标所在文件，但光标依然保留在目录树中；
" i 在水平分割割的窗口中打开选定文件；
" gi    同 i，但光标依然保留在目录树中；
" s 在垂直分割割的窗口中打开选定文件；
" gs    同 s，但光标依然保留在目录树中；
" t 在新标签页中打开文件，并使新的标签到 focus 状态；
" T 在新标签页中打开文件，保留原标签的 focus 状态；

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nerdtree-git-plugin 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:NERDTreeGitStatusShowIgnored =1
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

let g:NERDSpaceDelims =1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
            \ 'javascript': { 'left': '//', 'leftAlt': '/**', 'rightAlt': '*/' },
            \ 'less': { 'left': '/**', 'right': '*/' }
            \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""vim-nerdtree-syntax-highlight配置"""""""""""""""""""""""""""""""""""""""
" let g:NERDTreeDisableFileExtensionHighlight=1
" let g:NERDTreeDisableExactMatchHighlight=1
" let g:NERDTreeDisablePatternMatchHighlight=1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1

"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1

" 禁用不常见的文件扩展名突出显示 (这是一个好主意，当你在滚动时遇到延迟时。 在下一次会话中查找有关延迟的更多信息。)
" let g:NERDTreeLimitedSyntax=1

" 禁用所有默认文件扩展名 (你可以使用它轻松自定义你想要突出显示的扩展名)
" let g:NERDTreeSyntaxDisableDefaultExtensions=1

" 缓解延迟问题
let g:NERDTreeLimitedSyntax=1
let g:NERDTreeHighlightCursorline=0

let g:NERDTreeSyntaxEnabledExtensions= ['c', 'h', 'c++', 'php', 'py', 'md', 'java', 'rb', 'js', 'css']

"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:Cyan1 = "00FFFF"
let s:DarkOliveGreen = "556B2F"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

let g:NERDTreeExtensionHighlightColor = {}
" this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray
" sets the color of o files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:blue
" sets the color of h files to blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green
" sets the color of c files to blue
let g:NERDTreeExtensionHighlightColor['cpp'] = s:green
" sets the color of cpp files to blue
let g:NERDTreeExtensionHighlightColor['css'] = s:purple

let g:NERDTreeExtensionHighlightColor['py'] = s:yellow

let g:NERDTreeExtensionHighlightColor['sh'] = s:red

let g:NERDTreeExtensionHighlightColor['coffee'] = s:red

let g:NERDTreeExtensionHighlightColor['md'] = s:salmon

let g:NERDTreeExtensionHighlightColor['java'] = s:brown

let g:NERDTreeExtensionHighlightColor['php'] = s:brown

let g:NERDTreeExtensionHighlightColor['c++'] = s:green

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""Shougo/defx.nvim设置"""""""""""""""""""""""""""""""""''
noremap <LEADER>df :Defx<CR>

" 开关快捷键,【-search=`expand('%:p')`】表示打开defx树后，光标自动放在当前buffer上
noremap <LEADER>df :Defx  -search=`expand('%:p')` -toggle <cr>
nnoremap <silent> df :Defx  -search=`expand('%:p')` -toggle <cr>


call defx#custom#option('_', {
			\ 'resume': 1,
			\ 'winwidth': 30,
			\ 'split': 'vertical',
			\ 'direction': 'topleft',
			\ 'show_ignored_files': 0,
			\ 'columns': 'mark:indent:git:icons:filename',
			\ 'root_marker': '',
			\ 'buffer_name': '',
			\ 'toggle': 1,
			\ })

call defx#custom#column('git', {
			\   'indicators': {
			\     'Modified'  : '•',
			\     'Staged'    : '✚',
			\     'Untracked' : 'ᵁ',
			\     'Renamed'   : '≫',
			\     'Unmerged'  : '≠',
			\     'Ignored'   : 'ⁱ',
			\     'Deleted'   : '✖',
			\     'Unknown'   : '⁇'
			\   }
			\ })

call defx#custom#column('mark', { 'readonly_icon': '', 'selected_icon': '' })

augroup user_plugin_defx
	autocmd!
	autocmd FileType defx call <SID>defx_mappings()
	autocmd WinEnter * if &filetype == 'defx' && winnr('$') == 1 | bdel | endif
	autocmd TabLeave * if &filetype == 'defx' | wincmd w | endif
augroup END

function! s:jump_dirty(dir) abort
	let l:icons = get(g:, 'defx_git_indicators', {})
	let l:icons_pattern = join(values(l:icons), '\|')

	if ! empty(l:icons_pattern)
		let l:direction = a:dir > 0 ? 'w' : 'bw'
		return search(printf('\(%s\)', l:icons_pattern), l:direction)
	endif
endfunction

autocmd FileType defx call s:defx_mappings()

function! s:defx_mappings() abort
  nnoremap <silent><buffer><expr> z     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
endfunction
" 上面的配置我们可以使用. 键来显示和隐藏忽略文件，l 键来打开关闭文件或者文件夹。其他的内容就需要你们自己配置了。

function! s:defx_toggle_tree() abort
	if defx#is_directory()
		return defx#do_action('open_or_close_tree')
	endif
	return defx#do_action('multi', ['drop'])
endfunction

function! s:defx_mappings() abort
	setlocal signcolumn=no expandtab
	nnoremap <silent><buffer><expr> <CR>     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
	nnoremap <silent><buffer><expr> <C-h>     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
    nnoremap <silent><buffer><expr> dd       defx#do_action('remove_trash')
    nnoremap <silent><buffer><expr> >        defx#do_action('resize',  defx#get_context().winwidth - 10)
    nnoremap <silent><buffer><expr> <        defx#do_action('resize',  defx#get_context().winwidth + 10)
    nnoremap <silent><buffer><expr> j        line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k        line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> h
                    \ defx#is_opened_tree() ?
                    \ defx#do_action('close_tree', defx#get_candidate().action__path) :
                    \ defx#do_action('search',  fnamemodify(defx#get_candidate().action__path, ':h'))
    nnoremap <silent><buffer><expr> l        defx#do_action('open_tree')
    nnoremap <silent><buffer><expr> o        defx#do_action('open_directory')
    nnoremap <silent><buffer><expr> r        defx#do_action('redraw')
    nnoremap <silent><buffer><expr> E        defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P        defx#do_action('preview')
	nnoremap <silent><buffer><expr> c   defx#do_action('copy')
	nnoremap <silent><buffer><expr> m   defx#do_action('move')
	nnoremap <silent><buffer><expr> p   defx#do_action('paste')
	nnoremap <silent><buffer><expr> e   defx#do_action('open')
	nnoremap <silent><buffer><expr> nd   defx#do_action('new_directory')
	nnoremap <silent><buffer><expr> N   defx#do_action('new_file')
	nnoremap <silent><buffer><expr> M   defx#do_action('new_multiple_files')
	nnoremap <silent><buffer><expr> C   defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
	nnoremap <silent><buffer><expr> S   defx#do_action('toggle_sort', 'time')
	nnoremap <silent><buffer><expr> X   defx#do_action('remove')
	nnoremap <silent><buffer><expr> R   defx#do_action('rename')

	nnoremap <silent><buffer><expr> !   defx#do_action('execute_command')
	nnoremap <silent><buffer><expr> x   defx#do_action('execute_system')
	nnoremap <silent><buffer><expr> yy  defx#do_action('yank_path')
	nnoremap <silent><buffer><expr> <C-h> defx#do_action('toggle_ignored_files')
	nnoremap <silent><buffer><expr> ;   defx#do_action('repeat')
	nnoremap <silent><buffer><expr> a   defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> ~   defx#do_action('cd')
	nnoremap <silent><buffer><expr> q   defx#do_action('quit')
	nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
	nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> csa        defx#do_action('clear_select_all')
	nnoremap <silent><buffer><expr> j   line('.') == line('$') ? 'gg' : 'j'
	nnoremap <silent><buffer><expr> k   line('.') == 1 ? 'G' : 'k'
	nnoremap <silent><buffer><expr> <C-g> defx#do_action('print')
	nnoremap <silent><buffer><expr> cd  defx#do_action('change_vim_cwd')
	nnoremap <silent><buffer><expr> u   defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> 2u  defx#do_action('cd', ['../..'])
	nnoremap <silent><buffer><expr> 3u  defx#do_action('cd', ['../../..'])
	nnoremap <silent><buffer><expr> 4u  defx#do_action('cd', ['../../../..'])
endfunction

let g:defx_icons_column_length = 2
let g:defx_icons_mark_icon = ''
let g:defx_icons_parent_icon = ""


"""""""""""""""""""""""""""""""""""t9md/vim-choosewin配置""""""""""""""""""""""""""""""""""""""""""
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1

"""""""""""""""""""""""""""""""""""open-browser配置打开浏览器""""""""""""""""""""""""""""""""""""""""""
" 参考：https://mounui.com/343.html
"1. 正常模式下光标移动到url上输入 gx 即可打开网址，光标移动到词组上可用设置的引擎搜索改词组；
"2. 可视模式下输入 gx  即可搜索选中的内容；

let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-open)
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
" 搜索引擎配置
let g:openbrowser_default_search = 'goole'
let g:openbrowser_search_engines = {
            \  'goole': 'https://www.google.com',
            \}


"""""""""""""""""""""""""""""" editorconfig/editorconfig-vim """"""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

let g:EditorConfig_disable_rules = ['trim_trailing_whitespace']

""""""""""""""""""""'lucasicf/vim-smooth-scroll插件""""""""""""""""""""""""""""""
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

""""""""""""""""""""""" godlygeek/tabular插件""""""""""""""""
vmap ;t= :Tabularize /=<CR>


" :Tabularize /,/ : 将整个缓冲区的所有行按照 , 符号进行对齐
" :'<,'>Tabularize /,/ : 对高亮选中范围内的行进行对齐
" :Tabularize /,/l1/c1/r0 : 按照 , 进行对齐，并且为每个分割的文本区域内的文本指定对齐方式，l, c, r 分别为左中右对齐，1 代表空距离分隔符一个空格
" abc,def,ghi a,b a,b,c :Tabularize /,/r1c1l0 abc , def, ghi a , b a , b , c'>'


"""""""""""""""""""""""""""""""""""""""vim-devicons配置"""""""""""""""""""""""""""""""""""""""
"加上这样一句配置，作用是当剩余的窗口都不是文件编辑窗口时，自动退出 vim。就是你都不编辑文件了，还剩个 NerdTree 窗口在那里时自动退出 GVim（执行:qa!)。
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif

"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1

"whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""vhda/verilog_systemverilog.vim配置""""""""""""""""""""""""""""""""""""""""""""

au BufRead,BufNewFile *.sv,  set filetype=verilog_systemverilog
au! BufNewFile,BufRead *.vh,*.vp,*.sv,*.svi,*.svh,*.svp set filetype verilog_systemverilog

au! BufNewFile,BufRead *.v set filetype verilog_systemverilog.verilog
au BufNewFile,BufRead *.sv,*.v set autoindent

autocmd filetype verilog setlocal tabstop=3 softtabstop=3 shiftwidth=3 expandtab
autocmd filetype systemverilog setlocal tabstop=3 softtabstop=3 shiftwidth=3
autocmd filetype verilog set autoindent
autocmd filetype systemverilog set autoindent

set tags=tags

"   let mapleader="\<Space>"
nnoremap <leader><Space>i :VerilogFollowInstance<CR>
nnoremap <leader><Space>I :VerilogFollowPort<CR>
nnoremap <leader><Space>u :VerilogGotoInstanceStart<CR>
set foldmethod=syntax
let b:match_ignorecase=0
let b:match_words=
  \ '\<begin\>:\<end\>,' .
  \ '\<if\>:\<else\>,' .
  \ '\<module\>:\<endmodule\>,' .
  \ '\<class\>:\<endclass\>,' .
  \ '\<program\>:\<endprogram\>,' .
  \ '\<clocking\>:\<endclocking\>,' .
  \ '\<property\>:\<endproperty\>,' .
  \ '\<sequence\>:\<endsequence\>,' .
  \ '\<package\>:\<endpackage\>,' .
  \ '\<covergroup\>:\<endgroup\>,' .
  \ '\<primitive\>:\<endprimitive\>,' .
  \ '\<specify\>:\<endspecify\>,' .
  \ '\<generate\>:\<endgenerate\>,' .
  \ '\<interface\>:\<endinterface\>,' .
  \ '\<function\>:\<endfunction\>,' .
  \ '\<task\>:\<endtask\>,' .
  \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
  \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
  \ '`ifdef\>:`else\>:`endif\>,'


:ab zuhe always @(*)<Enter>begin<Enter>if ()begin<Enter><Enter>end<Enter>else begin<Enter><Enter>end<Enter>end
:ab shixu always @(posedge clk_i or negedge rst_n_i)<Enter>begin<Enter>if ()begin<Enter>end<Enter>else begin<Enter>end<Enter>end
:ab zhushi //

"建立一个库
nmap <Leader>vb <Esc>:!vlib work<CR>
"编译一个vhd/v文件
nmap <silent> <Leader>ms :ModSimComp<cr><cr>
"------------------------------------------------------------------------------
"Function    : Model_Sim_Compile()
 "Description : Compile with ModelSim
"------------------------------------------------------------------------------
function! Model_Sim_Compile()
    let l:file_type_temp = expand("%:e")
    if l:file_type_temp == "vhd"
        set makeprg=vcom\ -work\ work\ %
        execute ':make'
        execute ':cw'
    else
        if l:file_type_temp == "v"
            set makeprg=vlog\ -work\ work\ %
            execute ':make'
            execute ':cw'
        else
            echohl ErrorMsg
            echo "This filetype can't be compiled by modelsim vcom/vlog!"
            echohl None
        endif
    endif
 endfunction

"set error format
set errorformat=\*\*\ %tRROR:\ %f(%l):\ %m,\*\*\ %tRROR:\ %m,\*\*\ %tARNING:\ %m,\*\*\ %tOTE:\ %m,%tRROR:\ %f(%l):\ %m,%tARNING\[%*[0-9]\]:\ %f(%l):\ %m,%tRROR:\ %m,%tARNING\[%*[0-9]\]:\ %m



"""""""""""""""""""""""""""""""""""  多文档编辑fholgado/minibufexpl.vim """""""""""""""""""""""""""""""""""
" vim 的多文档编辑涉及三个概念:buffer、window、tab。vim 把加载进内存的文件叫做 buffer,buffer 不一定可见；
" 若要 buffer 可见，则必须通过 window 作为载体呈现；同个看面上的多个 window 组合成一个 tab。
" vim 中每打开一个文件，vim 就对应的创建一个 buffer, 多个文件就有多个 buffer, 但默认你只能看到最后 buffer 对应 window，通过插件 MiniBufExplorer
" 可以把所有 buffer 罗列出来，并且可以显示多个 buffer 对应的 Window。


" Enter : 打开光标所在的buffer
" d : 删除光标所在的buffer
" 命令
" 在一般模式下

" // 打开当前buffer的下一个buffer
" :bn

" // 打开当强buffer的上一个buffer
" :bp

" // 打开编号为<num>(即每个buffer前面的数字)的buffer,
" :b<num>

" C-w,h j k l    向"左,下,上,右"切换窗口.
let g:miniBufExplMapWindowNavVim = 1

" 是用<C-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1

"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=0

"该配置含义为minibufexplorer窗口最大高度为2行，默认是没有上限的，你打开的buffer足够多，一会一直增长下去，为了方便阅读我一般将它设为2
let g:miniBufExplMaxSize = 2
let g:miniBufExplSplitBelow = 0

" 设置taglistbuffer的最高限制：
let g:bufExplorerMaxHeight=23

" 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
let g:miniBufExplModSelTarget = 1

"启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
" let g:miniBufExplMapCTabSwitchBufs = 1
" 试用了下MiniBufferExplore，发现其支持Buffer Explorer的快捷键
" 输入\be在当前窗口浏览缓存
" \bv垂直打开一个窗口浏览缓存。

" \bs水平打开一个窗口浏览缓存
" 如果打开的文件太多在一个平面显示不下，还可以在buffer中用“s” 快捷键排序

"  启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
let g:miniBufExplMapCTabSwitchWindows = 1

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>hm :MBEToggle<cr>

" buffer 切换快捷键
" ctrl + tab下一个buffer
map bn :MBEbn<CR>
" ctrl + shift + tab下一个buffer
map bp :MBEbp<CR>


" MiniBufExpl 配色
hi MBENormal               guifg=#808080 guibg=fg   ctermfg=8     ctermbg=253
hi MBEChanged              guifg=#CD5907 guibg=fg   ctermfg=202   ctermbg=240
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg   ctermfg=39    ctermbg=253
hi MBEVisibleChanged       guifg=#F1266F guibg=fg   ctermfg=1     ctermbg=240
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg   ctermfg=118   ctermbg=253
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg   ctermfg=196   ctermbg=240

"""""""""""""""""""""bagrat/vim-buffet设置""""""""""""""""""""""
" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#00FF00 guifg=#000000
endfunction
"Vim-buffet设置
nmap ;1 <Plug>BuffetSwitch(1)
nmap ;2 <Plug>BuffetSwitch(2)
nmap ;3 <Plug>BuffetSwitch(3)
nmap ;4 <Plug>BuffetSwitch(4)
nmap ;5 <Plug>BuffetSwitch(5)
nmap ;6 <Plug>BuffetSwitch(6)
nmap ;7 <Plug>BuffetSwitch(7)
nmap ;8 <Plug>BuffetSwitch(8)
nmap ;9 <Plug>BuffetSwitch(9)
nmap ;0 <Plug>BuffetSwitch(10)

""""""""""""""""""""" romgrk/barbar.nvim 设置""""""""""""""""""""""
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    ;1 :BufferGoto 1<CR>
nnoremap <silent>    ;2 :BufferGoto 2<CR>
nnoremap <silent>    ;3 :BufferGoto 3<CR>
nnoremap <silent>    ;4 :BufferGoto 4<CR>
nnoremap <silent>    ;5 :BufferGoto 5<CR>
nnoremap <silent>    ;6 :BufferGoto 6<CR>
nnoremap <silent>    ;7 :BufferGoto 7<CR>
nnoremap <silent>    ;8 :BufferGoto 8<CR>
nnoremap <silent>    ;9 :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent>   ;bs    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used



" """"""""""""""""""""""""""""""""""""" WinManager 配置 """""""""""""""""""""""""""""""""""""

" let g:winManagerWindowLayout='FileExplorer'
" nmap wm :WMToggle<cr>


" " 配置Ctrl + 方向键在窗口之间切换
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-down> :wincmd j<CR>
nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-right> :wincmd l<CR>

" 配置Ctrl + h j k l在窗口之间切换
" nmap <silent> <C-k> :wincmd k<CR>
" nmap <silent> <C-j> :wincmd j<CR>
" nmap <silent> <C-h> :wincmd h<CR>
" nmap <silent> <C-l> :wincmd l<CR>

" 以上两种方式根据快捷键分配来选择用哪种

""""""""""""""""""""""""""""" Vim-multiple-cursors(vim多重光标选取插件)   """""""""""""""""""""""""""""
" 2G - 跳转到第2行
" fp - 移动光标到字符p
" <C-n> - 即Ctrl+n, 选择当前单词poorly_named_var
" <C-n><C-n> - 每按一次<C-n>向下选取一个同样的单词, 这里选择下面的两个pooly_named_var
" c - 按c开始修改,选中后, 可以进行增删替换a/c/x等
" name - 输入要修改的内容, 这里是name
" 按<Esc>回到正常的模式

" 关闭插件默认映射
let g:multi_cursor_use_default_mapping=0
" " Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

""""""""""""""""""""""""""""" mg979/vim-visual-multi(vim多重光标选取插件)   """""""""""""""""""""""""""""

" https://yaocc.cc/2021/05/17/VIM%E5%A4%9A%E5%85%89%E6%A0%87%E6%8F%92%E4%BB%B6%E2%80%94%E2%80%94%E6%95%88%E7%8E%87MAX/
let g:VM_maps = {}                            "取消默认按键映射。
let g:VM_theme = 'iceblue'
let g:VM_highlight_matches = 'underline'
let g:VM_maps['Find Under']         = '<c-n>' "进入多光标模式并选中光标下字符串。
let g:VM_maps['Find Subword Under'] = '<c-n>' "选中下一个字符串。
let g:VM_maps['Select All']         = '<c-d>'   "进入多光标模式并选中所有同光标下的字符串。
let g:VM_maps["Select h"]           = '<C-Left>' " 从光标往左选中文本(ctrl+n继续向下选中相同文本)
let g:VM_maps["Select l"]           = '<C-Right>' "从光标往右选中文本(ctrl+n继续向下选中相同文本)
let g:VM_maps['Add Cursor Up']      = '<C-Up>'   " 向上添加一个光标(原光标+上光标 继续使用则继续添加)
let g:VM_maps['Add Cursor Down']    = '<C-Down>' " 向下添加一个光标(原光标+下光标 继续使用则继续添加)
let g:VM_maps["Select Cursor Up"]   = '<C-Up>'   " 
let g:VM_maps["Select Cursor Down"] = '<C-Down>'
let g:VM_maps['Add Cursor At Pos']  = '<C-x>'    " 将当前光标添加入多光标列表中
let g:VM_maps['Add Cursor At Word'] = '<C-w>'    " 将当前光标所在词的词首加上多光标列表中
let g:VM_maps['Find Next']          = 'n'     "往下查找并增加光标。
let g:VM_maps['Find Prev']          = 'N'     "网上查找并增加光标。
let g:VM_maps['Skip Region']        = 'q'     "跳过当前光标到下一个。
let g:VM_maps['Remove Region']      = 'Q'     "取消当前光标。
let g:VM_maps['Undo']               = 'u'     "Undo.
let g:VM_maps['Redo']               = '<c-r>' "Redo.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""" AutoComplPop配置 """""""""""""""""
" 输入一个字母即可补全
"let g:acp_behaviorKeywordLength = 1
" 自动弹出是由键映射，对于通过移动来避免自动弹出是很有用
let g:AutoComplPop_MappingDriven = 1
" 修改GUI高亮参数 该设置全局有效
hi Pmenu     ctermfg=0    ctermbg=241    guibg=#444444
hi PmenuSel   ctermfg=196    ctermbg=251   guibg=#555555 guifg=#ffffff

" 加载PHP函数字典，配置PHP函数自动补全，注意文件位置
au FileType php setlocal dict+=$VIM/vimfiles/bundle/AutoComplPop/dict/php_funclist.txt
" PHP提示触发
if !exists('g:AutoComplPop_Behavior')
    let g:AutoComplPop_Behavior = {}
    let g:AutoComplPop_Behavior['php'] = []
    call add(g:AutoComplPop_Behavior['php'], {
                \ 'command' : "\<C-x>\<C-o>",
                \ 'pattern' : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
                \ 'repeat' : 0,
                \ })
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""  cpp-mode   """""""""""""""""""""""""""""""""""""""""""


" nnoremap <leader>y :CopyCode<cr>
" nnoremap <leader>p :PasteCode<cr>
" nnoremap <leader>U :GoToFunImpl<cr>
" nnoremap <silent> <leader>a :Switch<cr>
" nnoremap <leader><leader>fp :FormatFunParam<cr>
" nnoremap <leader><leader>if :FormatIf<cr>

""""""""""""""""""""""""""""""""""""""""""" tenfyzhong/CompleteParameter.vim   """""""""""""""""""""""""""""""""""""""""""

" CompleteParameter设置
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

""""""""""""""""""""""""""""""""""" vimtex插件配置  """""""""""""""""""""""""""""""""""""""""""
" 按键    效果                                   模式
" \li     文件信息显示                           n
" \lt     打开目录                               n
" \ll     编译文档                               n
" \lv     查看文档                               n
" \lc     清除latex编译文件                      n
" \ls     查看文档, 并跳到当前光标所在的位置.    n
" dse     删除光标周围的\begin \end环境          n
" dsc     删除光标周围的\command{}环境           n
" ds$     删除光标周围的$$ 环境                  n
" dsd     删除光标周围的括号                     n
" cse     修改光标周围的\begin \end环境          n
" cs$     修改光标周围的\command{}环境           n
" csd     修改光标周围的括号模式                 n
" tsc     \command{}和\command*{}的互换          n
" tse     \begin{env}和\begin{env*}的互换        n
" tsd     (...)和\left( ... \right )的互换       n

let g:tex_flavor='latex'
let g:vimtex_texcount_custom_arg=' -ch -total'
"映射VimtexCountWords！\lw 在命令模式下enter此命令可统计中英文字符的个数
au FileType tex map <buffer> <silent>  <leader>lw :VimtexCountWords!  <CR><CR>
"let g:vimtex_view_method = ''
" let g:vimtex_view_general_viewer = 'llpp'
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method='zathura'
let g:Tex_ViewRule_pdf='zathura'
let g:vimtex_mappings_enabled = 0
let g:vimtex_text_obj_enabled = 0
let g:vimtex_motion_enabled = 0
let maplocalleader=' '
"编译过程中忽略警告信息
let g:vimtex_quickfix_open_on_warning=0
"如果用了自动补全的插件, 需要设置:不然会变得好慢.
let g:vimtex_fold_manual=1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_latexmk_options='-pdf -pdflatex="xelatex -synctex=1 \%S \%O" -verbose -file-line-error -interaction=nonstopmode'
let g:livepreview_previewer='open -a Skim'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_automatic=1
set conceallevel=1
let g:tex_conceal='abdmg'

"估计大家都打开了换行时自动对齐的功能，但是有没有发现这样一个问题，在用 itemize 的时候，每一个 item 都会自动缩进两个，非常麻烦
let g:tex_indent_items=0


let g:Tex_Com_frac = "\\frac{<++>}{<++>}<++>"
let g:Tex_EnvLabelprefix_equation = "eq:"

"%! Tex program = xelatex
"我们知道, 在Terminal里, 用pdflatex testLaTeX.tex
"在vim里, 我们可以用: !pdflatex %   来编译当前文档. 其中, %代表当前文档名. 结果如下

nmap <Leader>tx <ESC>:w<CR>:!xelatex  % &&<ESC> :VimtexView<CR><CR>
nmap tc <ESC>:VimtexTocToggle<CR><CR>
" 当你再按一下\tx键, 就可以编译+打开文档了. 在这里, 我们解析一下这一行代码的含义.

" imap和nmap是定义映射的命令. 开头的i代表insert模式的映射, n代表normal模式下的映射. 如果想定义一个对于所有模式的映射, 可以直接用map来定义.
" <F2>: 是映射的快捷键.
" <ESC>:w<CR>: 退出编辑模式, 并保存.
" :!pdflatex %: 用pdflatex编译该文件.
" open %:r.pdf<CR><CR>打开编译出来的pdf文件.
" &&: 命令的连接.
" ~/.vim/ftplugin/tex.vim: 这是tex文件的local配置文件, 如果没有, 可以自己创建.


let g:vimtex_delim_toggle_mod_list = [
            \ ['\left', '\right'],
            \ ['\mleft', '\mright'],
            \ ['\bigl', '\bigr'],
            \ ['\Bigl', '\Bigr'],
            \ ['\biggl', '\biggr'],
            \ ['\Biggl', '\Biggr'],
            \]

"这里是LaTeX编译引擎的设置，这里默认LaTeX编译方式为-pdf(pdfLaTeX),
"vimtex提供了magic comments来为文件设置编译方式
"例如，我在tex文件开头输入 % !TEX program = xelatex   即指定-xelatex （xelatex）编译文件
let g:vimtex_compiler_latexmk_engines = {
    \ 'xelatex'          : '-xelatex',
    \ '_'                : '-xelatex',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
let g:vimtex_compiler_latexrun_engines={'_':'xelatex'}

"这里是设置latexmk工具的可选参数
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-shell-escape',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}


let g:vimtex_toc_config = { 
    \ 'name' : 'TOC', 
    \ 'layers' : ['content', 'todo', 'include'], 
    \ 'split_width' : 25, 
    \ 'todo_sorted' : 0, 
    \ 'show_help' : 1, 
    \ 'show_numbers' : 1, 
    \}
" 这样，我们使用命令 :VimtexTocToggle 即可唤出 vimtex 自动生成的 TOC：


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""" voldikss/vim-floaterm插件 """""""""""""""""""""""""""""""""""""""""""
" Set floaterm window's background to black
hi Floaterm guibg=black   ctermbg=232
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan ctermbg=220  ctermfg=46
hi FloatermNC guibg=gray   ctermbg=246
"floaterm设置
let g:floaterm_shell='/bin/zsh'
let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'
noremap  ftn :FloatermNew<CR>
noremap  ftk :FloatermKill<CR>
noremap  ftd :FloatermNext<CR>
noremap  ftp :FloatermPrev<CR>
noremap  ftt :FloatermToggle<CR>
""""""""""""""""""""""""""""""""""""""" SirVer/ultisnips插件 """""""""""""""""""""""""""""""""""""""""""

let g:UltiSnipsExpandTrigger="<tab>"
" 使用 tab 切换下一个触发点，shit+tab 上一个触发点
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" 使用 UltiSnipsEdit 命令时垂直分割屏幕
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""'""""vim-clang-format插件"""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""Kite 插件配置开始""""""""""""""""""""""""""""""""""""""""""
" Python, JavaScript, Go
" let g:kite_supported_languages = ['python', 'javascript', 'go']

" All the languages Kite supports
let g:kite_supported_languages = ['*']

" Turn off Kite
" let g:kite_supported_languages = []

let g:kite_auto_complete=0
let g:kite_completions=0
let g:kite_snippets=0

let g:kite_tab_complete=1

set completeopt+=menuone

set completeopt+=noselect
set completeopt+=noinsert
set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg  " if vim beeps during completion

let g:kite_previous_placeholder = '<C-H>'
let g:kite_next_placeholder = '<C-L>'

nmap <silent> <buffer> gK <Plug>(kite-docs)
let g:kite_documentation_continual=1

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P




"""""""""""""""""""""""""""""""""""""""""""""""""""  Shougo/deoplete.nvim"""""""""""""""""""""""""""""""""""""""""""""
" pip install pynvim
" pip install jedi
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
""使用shift+tab键向上选择弹窗菜单,这里不设置因为笔记本比较难操作.如果向下太多我通常习惯使用Backspace键再重新操作一遍
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"" 回车即选中当前项
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
""使用tab键向下选择弹框菜单
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
set pyxversion=3
" Python3的可执行文件位置
let g:python3_host_prog = "/home/jack/anaconda3/bin/python3"

" 自启动
let g:deoplete#enable_at_startup = 1
" smart case不解释
let g:deoplete#enable_smart_case = 1

" 用户输入至少两个字符时再开始提示补全
call deoplete#custom#source('LanguageClient',
            \ 'min_pattern_length',
            \ 2)

" 字符串中不补全
" call deoplete#custom#source('_',
"             \ 'disabled_syntaxes', ['String']
"             \ )

" 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" 为每个语言定义completion source
" 是的vim script和zsh script都有，这就是deoplete
" call deoplete#custom#option('sources', {
"             \ 'cpp': ['LanguageClient'],
"             \ 'c': ['LanguageClient'],
"             \ 'vim': ['vim'],
"             \ 'zsh': ['zsh']
"             \})

" 忽略一些没意思的completion source。
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'around']


""""""""""""""""""""""""""""""""""autozimu/LanguageClient-neovim""""""""""""""""""""""""""""""""""""""""""

" abandoned的Buffer隐藏起来，这是vim的设置。
" 如果没有这个设置，修改过的文件需要保存了才能换buffer
" 这会影响全局重命名，因为Vim提示保存因此打断下一个文件的重命名。
set hidden
" 告诉LS那个文件夹才是project root，同时也告诉它compile_commands在哪里
let g:LanguageClient_rootMarkers = {
            \ 'cpp': ['compile_commands.json', 'build'],
            \ 'c': ['compile_commands.json', 'build']
            \ }
" 为语言指定Language server和server的参数
let g:LanguageClient_serverCommands = {
            \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
            \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
            \ }

" Server加一个参数就放在下列文件中
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/jack/.config/nvim/settings.json'
" 把Server的补全API提交给Vim
" 一般有deoplete就可以用了，加上一条以防万一。
set completefunc=LanguageClient#complete
" 把Server的格式化API提交给Vim
set formatexpr=LanguageClient_textDocument_rangeFormatting()

" nnoremap <silent> gh :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
" nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"""""""""""""""""""""""""""""""""""YouCompleteMe插件配置开始""""""""""""""""""""""""""""""""""""""""""
"寻找全局配置文件
let g:ycm_global_ycm_extra_conf='~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

"开始补全的字符数
let g:ycm_min_num_of_chars_for_completion = 2

"与syntastic有冲突，建议关闭
" let g:ycm_show_diagnostics_ui = 0
"let g:ycm_error_symbol = '✗'
"let g:ycm_warning_symbol = '⚠'

"jedi模块所在python解释器路径
let g:ycm_python_binary_path = 'python'

"选补全框内显示的补全条目的最大数量
let g:ycm_max_num_candidates = 20

"该选项控制基于identifiers-based引擎的最大候选补全项
let g:ycm_max_num_identifier_candidates = 20


" 设置YCM的日志记录级别，可以是debug，info，warning，error或critical。debug是最详细的
" let g:ycm_log_level = 'info'

let g:ycm_collect_identifiers_from_tags_files = 0

"开启使用语言的一些关键字查询
let g:ycm_seed_identifiers_with_syntax = 1

"补全后自动关闭预览窗口
let g:ycm_autoclose_preview_window_after_completion=1

"在实现和声明之间跳转,并分屏打开
let g:ycm_goto_buffer_command = 'horizontal-split'

" let g:ycm_auto_trigger = 0   "turn off
let g:ycm_auto_trigger = 1   "turn on ,打开ycm


"关键字补全
let g:ycm_seed_indetifiers_with_syntax = 1

" 在注释中也可以补全
let g:ycm_complete_in_comments=1


" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:ycm_extra_conf_globlist = ['~/dev/*','!~/*']

"不显示开启vim时是否检查ycm_extra_conf文件的信息，直接加载该文件
let g:ycm_confirm_extra_conf=0

"每次重新生成匹配项，禁止缓存匹配项
let g:ycm_cache_omnifunc=0

"在代码中高亮显示YCM诊断对应的内容，如果关闭，则会关闭错误和警告高亮功能，0表示关闭
let g:ycm_enable_diagnostic_signs = 0

"高亮显示代码中与诊断信息有关的文本或代码，0表示关闭
let g:ycm_enable_diagnostic_highlighting = 0

"当光标移到所在行时显示诊断信息
let g:ycm_echo_current_diagnostic = 1


map <leader>g :YouCompleter GoToDefinitionElseDeclaration<CR>


"查找光标下的标识符并跳转到其声明，文件类型支持：c，cpp，objc，objcpp，cs，go，java，python，rust，typescript
nnoremap <leader>gg :YcmCompleter GoToDeclaration<CR>

" 查找光标下的标识符并跳转到其定义
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>


"关闭YCM 自动弹出函数原型预览窗口
" set completeopt=longest,menu
" let g:ycm_add_preview_to_completeopt = 0

" YCM默认会显示诊断信息，语言标注出来你代码问题,屏蔽YCM 的诊断信息
let g:ycm_show_diagnostics_ui = 0

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>       pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>         pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown>   pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>     pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


"youcompleteme  默认tab  s-tab 和自动补全冲突
"设置用于选择补全列表中的第一个选项以及进入补全列表后向下选择的快捷键
let g:ycm_key_list_select_completion = [ '<TAB>' ,'<Down>']
" let g:ycm_key_list_select_completion=['<C-n>','<Down>']

"设置用于向上选择补全列表中的选项的快捷键，默认为shift+tab，和方向上键
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
" let g:ycm_key_list_previous_completion=['<c-p>','<Up>']

"设置用于关闭补全列表的快捷键，默认为ctrl+y
let g:ycm_key_list_stop_completion =  ['<C-y>']

" let g:ycm_filetype_blacklist = {
" \ 'tagbar' : 1,
" \ 'qf' : 1,
" \ 'notes' : 1,
" \ 'markdown' : 1,
" \ 'unite' : 1,
" \ 'text' : 1,
" \ 'vimwiki' : 1,
" \ 'pandoc' : 1,
" \ 'infolog' : 1,
" \ 'mail' : 1
" \}

let g:ycm_filetype_specific_completion_to_disable = {
            \ 'gitcommit': 1
            \}

" let g:ycm_filetype_whitelist = {
" \ "c":1,
" \ "cpp":1,
" \ "objc":1,
" \ "sh":1,
" \ "zsh":1,
" \ "zimbu":1,
" \ }

let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
            \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \   'py' : ['.'],
            \ }
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }


""""""""""""""""""""""""""""""""""YouCompleteMe插件配置结束""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""" NCM2 配置 """""""""""""""""
""缓存
"autocmd BufEnter * call ncm2#enable_for_buffer()
"" 补全模式,具体详情请看下文
"set completeopt=menu,noinsert
"set shortmess+=c
"inoremap <c-c> <ESC>
"" 延迟弹窗,这样提示更加流畅
"let ncm2#popup_delay = 5
""输入几个字母开始提醒:[[最小优先级,最小长度]]
""如果是输入的是[[1,3],[7,2]],那么优先级在1-6之间,会在输入3个字符弹出,如果大于等于7,则2个字符弹出----优先级概念请参考文档中 ncm2-priority
"let ncm2#complete_length = [[1, 1]]
""模糊匹配模式,详情请输入:help ncm2查看相关文档
"let g:ncm2#matcher = 'substrfuzzy'
"" 回车即选中当前项
"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
""使用tab键向下选择弹框菜单
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
""使用shift+tab键向上选择弹窗菜单,这里不设置因为笔记本比较难操作.如果向下太多我通常习惯使用Backspace键再重新操作一遍
""inoremap <expr> <S> pumvisible() ? "\<C-p>" : "\<S>"
"" 指定 Python 版本
"let g:ncm2_jedi#python_version = 3
"let g:ncm2#match_highlight = 'sans-serif'

"au User Ncm2Plugin call ncm2#register_source({
"        \ 'name' : 'css',
"        \ 'priority': 9,
"        \ 'subscope_enable': 1,
"        \ 'scope': ['css','scss'],
"        \ 'mark': 'css',
"        \ 'word_pattern': '[\w\-]+',
"        \ 'complete_pattern': ':\s*',
"        \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
"        \ })

"""""""""""""""""""""""""""""""""""Ycraigemery/vim-autotag 配置 """"""""""""""""""""""""""""""""""""""""""
let g:autotagTagsFile=".tags"
let g:autotagStartMethod='fork'

"""""""""""""""""""""""""""""""""""""""Chiel92/vim-autoformat配置"""""""""""""""""""""""""""""""""""""""

""设置保存时自动格式化(*表示所有文件)"
""au BufWrite * :Autoformat"
"au BufWrite *.cpp,*.hpp :Autoformat
"au BufWrite *.c,*.h :Autoformat

""设置clang-format格式化,style后面的格式是VS的格式"
"let g:formatdef_clangformat_Microsoft = '"clang-format -style=Microsoft"'

"let g:formatters_cpp = ['clangformat_Microsoft']
"let g:formatters_cc = ['clangformat_Microsoft']
"let g:formatters_hpp = ['clangformat_Microsoft']
"let g:formatters_c = ['clangformat_Microsoft']
"let g:formatters_h = ['clangformat_Microsoft']
""F3自动格式化代码
"noremap <F3> :Autoformat<CR>
"let g:autoformat_verbosemode=1
"也可以通过下面方式，设置保存时自动对指定格式代码进行格式化，或对所有格式进行格式化。
""保存时自动格式化代码，针对所有支持的文件
"au BufWrite * :Autoformat
""保存时自动格式化PHP代码
""au BufWrite *.php :Autoformat


"""""""""""""""""""""""""""""""""""""""Autopep8配置"""""""""""""""""""""""""""""""""""""""
autocmd FileType python noremap <buffer> \ap :call Autopep8()<CR> "设置快捷键代替autopep8




""""""""""""""""""""""""""""""""""""""""""   ludovicchabant/vim-gutentags  """"""""""""""""""""""""""""""""""""""""""""""
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']



"""""""""""""""""""""""""""Ctags配置""""""""""""""""""""""""""""""""
" 配置为生产ctags的快捷键
map <Leader>ct :!ctags <CR>

"更新ctags标签文件快捷键设置
noremap <Leader>ct :!ctags -R<CR>

" 只需要将vim光标移动到函数名或宏定义名称上，使用快捷键“Ctrl+]”，即可跳转到kernel中的函数或宏定义的地方进行查看，有多个要跳转的路径时会在vim下边出现几行选项，直接输入数字加回车可以进行对应的函数或宏定义选择；要想返回上一级函数或宏定义，只需要使用快捷键“Ctrl+o”，即可跳会上次的查看的函数。

" ctags的配置 ctrl+f12快速生成tags
map <Leader>ct :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

""""""""""""""""""""""""""""""""""""""""""""""""  cscope  """"""""""""""""""""""""""""""""""""""""""""""""

" 接下去就是配置cscope，因为使用cscope查找函数定义等，需要用到cscope.out数据库，通过下面命令即可递归所有源码文件生成.out文件：
" cscope -Rbkq
" 当然我们也可以将相关文件汇集到某一个文件(如cscope.files)，然后再使用cscope -bkq -i cscope.files生成out文件，如下：

" vim支持cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
" 添加 cscope.out
"进入vim后 :cs add /home/jack/xx/xx/cscope.out

" :cs find {querytype} {name}
" 其中：
" {querytype} 即相对应于实际的cscope行接口数字，同时也相对应于nvi命令：
"  0或者s   —— 查找这个C符号
"  1或者g  —— 查找这个定义
"  2或者d  —— 查找被这个函数调用的函数（们）
"  3或者c  —— 查找调用这个函数的函数（们）
"  4或者t   —— 查找这个字符串
"  6或者e  —— 查找这个egrep匹配模式
"  7或者f   —— 查找这个文件
"  8或者i   —— 查找#include这个文件的文件（们）

if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=0
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
  endif
  set csverb
endif


" 　使用时，将光标停留在要查找的对象上，按下<C-@>g，即先按“Ctrl+@”，然后很快再按“g”，将会查找该对象的定义。
nmap ws :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap wg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap wc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap wt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap we :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap wf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap wi :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap wd :cs find d <C-R>=expand("<cword>")<CR><CR>

" 有了这个快捷键，我们使用cscope的效率就提升了，加上 ctrl+] ， ctrl+o , ctrl+t  我们看项目代码基本就比较舒服了。
nmap Ws :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap Wg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap Wc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap Wt :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap We :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap Wf :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap Wi :vert scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap Wd :vert scs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""  majutsushi/tagbar配置 """"""""""""""""""""""""""""""""""""""

" 设置 tagbar 使用的 ctags 的插件，必须要设置对

let g:tagbar_ctags_bin='/usr/bin/ctags'
" 设置 tagbar 的窗口宽度
let g:tagbar_width=20
" 设置 tagbar 的窗口显示的位置，为右边
" let g:tagbar_right = 1
let g:tagbar_left = 1
" 打开文件自动 打开
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.py,*.cc,*.cxx call tagbar#autoopen()


" 将开启tagbar的快捷键设置为　 tb
nnoremap  tb :TagbarToggle<CR>
map! tb <Esc> :TagbarToggle<CR>
"开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
let g:tagbar_autopreview = 0
"关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_sort = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""   Tag List  """"""""""""""""""""""""""""""""""""""""""""""

"TagList插件依赖ctags插件
" 安装ctags
" sudo apt-get install ctags

" 安装Taglist
" 下载Taglist，地址是http://sourceforge.net/projects/vim-taglist/files/vim-taglist/

" 解压taglist_45.zip，可以看到有两个目录doc和plugin，结构如下

" cp   ~/下载/doc/taglist.txt  /usr/share/vim/vim72/doc/
" cp   ~/下载/plugin/taglist.vim  /usr/share/vim/vim72/plugin/


"设置ctags路径
" let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

"启动vim后自动打开taglist窗口
"打开文件时候不自动打开Taglist窗口
let Tlist_Auto_Open = 0

" tag按名字排序
let Tlist_Sort_Type="name"

"不同时显示多个文件的tag，仅显示一个
let Tlist_Show_One_File = 1

"taglist为最后一个窗口时，退出vim
let Tlist_Exit_OnlyWindow = 1

" 显示taglist菜单
" let Tlist_Show_Menu=1

" 鼠标单击跳转到tag定义, 要开启鼠标功能
let Tlist_Use_SingleClick=1

"taglist窗口显示在右侧，缺省为左侧
let Tlist_Use_Right_Window = 1
" let Tlist_Use_Right_Window = 0

" 自动更新
let Tlist_Auto_Update = 1

"设置taglist窗口大小
"let Tlist_WinHeight = 100
let Tlist_WinWidth = 30

"设置taglist打开关闭的快捷键F10，就是F10会显示代码中的函数，变量，类，宏等
" map tl <Esc>:TlistToggle<Cr>

"将 \t 表示为在命令行模式下输入命令：
nnoremap  tl <Esc>:TlistToggle<Cr>



" """""""""""""""""""""""""""""""""""""""""""" vim-go配置   """"""""""""""""""""""""""""""""""""""""""""
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

let g:godef_split=2

" vim-go custom mappings
" au FileType go nmap <Leader>gs <Plug>(go-implements)
" au FileType go nmap <Leader>gi <Plug>(go-info)
" au FileType go nmap <Leader>gd <Plug>(go-doc)
" au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
" au FileType go nmap <leader>gr <Plug>(go-run)
" au FileType go nmap <leader>gb <Plug>(go-build)
" au FileType go nmap <leader>gt <Plug>(go-test)
" au FileType go nmap <leader>gc <Plug>(go-coverage)
" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap <Leader>dt <Plug>(go-def-tab)
" au FileType go nmap <Leader>ge <Plug>(go-rename)



""""""""""""""""""""""""""""""""""""""  vim-cpp-enhanced-highlight  配置  """"""""""""""""""""""""""""""""""""""
"cpp-enhanced-highlight
"高亮类，成员函数，标准库和模板
"默认情况下禁用类范围的突出显示。 启用设置
let g:cpp_class_scope_highlight = 1

" 默认情况下禁用成员变量的突出显示。 启用设置
let g:cpp_member_variable_highlight = 1

" 默认情况下禁用声明中类名称的突出显示。 启用设置
let g:cpp_concepts_highlight = 1

" 有两种方法可以突出显示模板函数。 任之一
let g:cpp_experimental_simple_template_highlight = 1
"文件较大时使用下面的设置高亮模板速度较快，但会有一些小错误
"let g:cpp_experimental_template_highlight = 1

" 库概念突出显示为
let g:cpp_concepts_highlight=1

" 可以禁用用户定义函数的突出显示
let g:cpp_no_function_highlight=1

let c_no_curly_error = 1


"""""""""""""""""""""""""""""""""""" echodoc 配置    """"""""""""""""""""""""""""""""""""""""""""""
"底部不显示三种模式,不然echodoc.vim会冲突
" set noshowmode
let g:echodoc#enable_at_startup = 1
let g:EchoDocEnable = 1
let g:echodoc#type = "echo"
" let g:echodoc#type = 'floating'
highlight link EchoDocPopup Pmenu

""""""""""""""""""""""""""""""""""""""" change-colorscheme 配置  """""""""""""""""""""""""""""""""""""""

" map <F2>> :NextColorScheme<CR>
map nc :NextColorScheme<CR>
" imap <F12> <ESC> :NextColorScheme<CR>
" imap <Leader>nc <ESC> :NextColorScheme<CR>

" map <F11> :PreviousColorScheme<CR>
map pc :PreviousColorScheme<CR>
" imap <F11> <ESC> :PreviousColorScheme<CR>
" imap <Leader>pc <ESC> :PreviousColorScheme<CR>





""""""""""""""""""""""""""""iamcco/markdown-preview.nvim配置""""""""""""""""""""""""""
"  设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览
let g:mkdp_auto_start = 1

" " 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不自动关闭预览窗口
let g:mkdp_auto_close = 1

" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不自动关闭预览窗口
let g:mkdp_auto_close = 1
" " 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览
let g:mkdp_refresh_slow = 0

" 指定预览主题，默认Github
let g:mkdp_markdown_css=''
" " 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown文件可以使用改命令
let g:mkdp_command_for_global = 0

" 设置为 1, 在使用的网络中的其他计算机也能访问预览页面默认只监听本地（127.0.0.1），其他计算机不能访问
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
" 指定浏览器路径
" let g:mkdp_path_to_chrome="chrome"
let g:mkdp_path_to_chrome = "google-chrome-stable"
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" example
nmap <silent> <F8>  <Plug>MarkdownPreview     " 普通模式
imap <silent> <F8>  <Plug>MarkdownPreview     " 插入模式
nmap <silent> <F9>  <Plug>MarkdownPreviewStop  " 普通模式
imap <silent> <F9>  <Plug>MarkdownPreviewStop  " 插入模式
nmap <silent> <M-t>  <Plug>MarkdownPreviewToggle

let g:vimwiki_list = [{
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '~/wiki_html',
  \ 'path': '~/wiki',
  \ 'template_path': '~/.vim/vimwiki/template/',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '~/.vim/vimwiki/wiki2html.sh',
  \ 'template_ext':'.html'
\}]

au BufRead,BufNewFile *.md set filetype=vimwiki

let g:taskwiki_sort_orders={"C": "pri-"}
let g:taskwiki_syntax = 'markdown'
let g:taskwiki_markdown_syntax='markdown'
let g:taskwiki_markup_syntax='markdown'

""""""""""""""""""""""""" demonlord1997/markdown-org 插件配置  """""""""""""""""""""""""""""""""""""""""""

let g:default_quick_keys =  0  " 1将启用默认配置，0不启用
let g:org#style#border = 2
let g:org#style#bordercolor = 'keyword'
let g:org#style#color = 'Identifier'
let g:language_path = {
            \ "python":"python",
            \ "python3":"python3",
            \ "go": "go",
            \ "c": "gcc",
            \ "cpp": "g++",
            \ "c++": "g++",
            \ "javascript": "node",
            \ }
nnoremap <silent> <M-b> :call org#main#runCodeBlock()<CR>
nnoremap <silent> <S-M-l> :call org#main#runLanguage()<CR>

""""""""""""""""""""""""" suan/vim-instant-markdown 插件配置  """""""""""""""""""""""""""""""""""""""""""

"  vim-instant-markdown 是一款实时显示 markdown 效果的插件，要使用这款插件需要先安装 node.js 和 npm，可以在终端执行

"1.安装node.js
" sudo add-apt-repository ppa:chris-lea/node.js
" sudo apt-get install nodejs
"$ sudo apt-get install nodejs npm
"$ sudo npm -g install instant-markdown-d

"安装完成以后，你只要打开一个.md 文件，Vim 就会自动打开一个浏览器窗口，实现实时预览。如果你不想自动打开预览窗口的话，你可以在 /etc/vim/vimrc 中写入
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 1
let g:instant_markdown_autoscroll = 1
" map <F12> :InstantMarkdownPreview<CR>
map <Leader>md :InstantMarkdownPreview<CR>
" 设置使用markdown插件的类型以及不自动折叠代码
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown nofoldenable

let g:jsx_ext_required = 0

""""""""""""""""""ferrine/md-img-paste.vim配置""""""""""""""""""""""""""""

"设置默认储存文件夹。这里表示储存在当前文档所在文件夹下的'pic'文件夹下，相当于 ./pic/
let g:mdip_imgdir = 'pic'
"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
let g:mdip_imgname = 'image'
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i

""""""""""""""""""mzlogin/vim-markdown-toc""""""""""""""""""""""""""""

"let g:vmt_auto_update_on_save = 0
"let g:vmt_dont_insert_fence = 1
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmt_fence_closing_text = '/TOC'


"""""""""""""""""""""""""""""Vim-table-mode设置""""""""""""""""""""""
map <LEADER>tm :TableModeToggle<CR>

"""""""""""""""""""Neoformat设置"""""""""""""""""""
nnoremap <LEADER>fm :Neoformat<CR>
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

""""""""""""""""""""""dkarter/bullets.vim"""""""""""""""

" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
            \ 'markdown',
            \ 'text',
            \ 'gitcommit',
            \ 'scratch'
            \]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""tmhedberg/SimpylFold插件""""""""""""""""""""""""""

let g:SimpleFold_docstring_preview=1 "看到折叠代码的字符串
"********************************************************************************************


""""""""""""""""""""""""Vista设置"""""""""""""""""""""""""""""""
" https://github.com/liuchengxu/vista.vim#:~:text=In%20addition%20to%20being%20a%20tags%20viewer%2C%20vista.vim,understands%20the%20semantics%20instead%20of%20the%20regex%20only.
noremap <LEADER>v :Vista<CR>
let g:vista#renderer#enable_icon = 1
let g:vista_disable_statusline = 1
let g:vista_vimwiki_executive = 'markdown'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
let g:vista_executive_for = {
			\ 'vimwiki': 'markdown',
			\ 'pandoc': 'markdown',
			\ 'markdown': 'toc',
			\ 'yaml': 'coc',
			\ 'typescript': 'coc',
			\ 'typescriptreact': 'coc',
            \ 'cpp': 'vim_lsp',
            \ 'php': 'vim_lsp',
			\ }

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }
let g:vista_finder_alternative_executives = ['coc']
" 优先选择lsp作为标签来源，其次ctags
let g:vista_cpp_executive = 'vim_lsp'
let g:vista_default_executive = 'ctags'
" 启用悬浮窗预览
let g:vista_echo_cursor_strategy ='floating_win'
" 侧边栏宽度.
let g:vista_sidebar_width = 30
" 设置为0，以禁用光标移动时的回显.
let g:vista_echo_cursor = 1
" 当前游标上显示详细符号信息的时间延迟.
let g:vista_cursor_delay = 400
" 跳转到一个符号时，自动关闭vista窗口.
let g:vista_close_on_jump = 0
"打开vista窗口后移动到它.
let g:vista_stay_on_open = 1
" 跳转到标记后闪烁光标2次，间隔100ms.
let g:vista_blink = [2, 100]
" 展示样式
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" " 系统寄存器粘贴复制键{{{
" nmap "+gp
" vmap "+gp
" vmap "+y
" " }}}系统寄存器粘贴复制键

" " mouse {{{
" set mouse+=a
" set mousehide
" " }}} mouse
"""""""""""""""""""""""""""""""""""""""""配置vim-lsp"""""""""""""""""""""""""""""""""""""""
" https://www.cnblogs.com/zi-wang/p/13550305.html
" bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
" 或
" wget https://apt.llvm.org/llvm.sh
" sudo bash llvm.sh
" sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-10 100
" 或
" sudo apt-get install clangd
" which clangd
" :LspHover      悬停信息

" :LspDeclaration     转到声明
" :LspDefinition      转到定义
" :LspImplementation  转到实现
" :LspTypeDefinition  转到类型定义

" :LspPeekDeclaration     预览声明
" :LspPeekDefinition      预览定义
" :LspPeekImplementation  预览实现
" :LspPeekTypeDefinition  预览类型定义

" :LspRename               重命名符号
" :LspDocumentFormat       格式化整个文档
" :LspDocumentRangeFormat  格式化选中文档

" :LspDocumentSymbol   显示文档符号
" :LspWorkspaceSymbol  搜索/显示 工作区符号

" :LspNextError     跳到下一个错误
" :LspPreviousError 跳到上一个错误

" :LspReferences        查找引用
" :LspNextReference     跳到下一个引用
" :LspPreviousReference 跳到上一个引用

" :LspDocumentDiagnostics 获取文旦诊断信息

" :LspStatus      显示语言服务器信息
" :LspCodeAction  获取可以应用到这个文件可能的命令列表

" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if &runtimepath =~ 'vim-lsp'
    nmap gd :LspDefinition<cr>
    " nmap <leader>f :LspDocumentFormat<cr>
    let g:lsp_diagnostics_float_cursor=1
    let g:lsp_diagnostics_virtual_text_enabled=1
endif


" vim-lsc
let g:lsc_server_commands = {'cpp': '/usr/local/llvm80/bin/clangd', 'python': 'python3.6 -m pyls'}
let g:lsc_auto_map = v:true

" au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
"     \ 'name': 'file',
"     \ 'whitelist': ['*'],
"     \ 'priority': 10,
"     \ 'completor': function('asyncomplete#sources#file#completor')
"     \ }))


if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
endif


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
let g:lsp_fold_enabled = 0
let g:lsp_diagnostics_enabled = 0         " disable diagnostics support

let g:lsp_document_highlight_enabled = 0

highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green


let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('~/asyncomplete.log')

if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': '/tmp/cquery/cache' },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif


"""""""""""""""""""""""""""""""""""""""""配置w0rp/ale"""""""""""""""""""""""""""""""""""""""
"let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 1

" python checker
let g:ale_fixers = {
            \   'javascript': ['standard'],
            \   'python': ['pylint']
            \}


let g:ale_linters = {
            \    'javascript': ['eslint'],
            \    'css': ['stylelint'],
            \}
let g:ale_fixers = {
            \    'javascript': ['eslint'],
            \    'css': ['stylelint'],
            \}

let g:ale_fix_on_save = 1

augroup YourGroup
    autocmd!
    autocmd User ALELint call YourFunction()
augroup END


"ale
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '🔰'
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚠'    "⚡  ✗ ⚠ ● ▶
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚠ %d', '✔ OK']
"let g:ale_statusline_format =  ['⨉ %d', '⚠ %d', '⬥ ok']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = '✗'
let g:ale_echo_msg_warning_str = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap <silent>  sp <Plug>(ale_previous_wrap)
nmap <silent>  sn <Plug>(ale_next_wrap)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

"<Leader>o触发/关闭语法检查
nmap <Leader>o :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>



"文件内容发生变化时不进行检查
let g:ale_lint_on_text_changed = 'never'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0
"保存文件时不进行检查
let g:ale_lint_on_save = 0

"补全的延迟
let  g:ale_completion_delay = 500

"停止输入后更新lint标记的延迟
let  g:ale_lint_delay = 500

"回显的延迟
let  g:ale_echo_delay = 20

"自定义lint输出格式
let  g:ale_echo_msg_format = '[%linter%] <%code> %%s'

"当文字在NORMAL模式下发生更改的时候更新lint，防止YCM频繁刷新
let  g:ale_lint_on_text_changed = 'normal'

"离开INSERT模式时更新lint
let  g:ale_lint_on_insert_leave = 1

"对于 Java 如果安装在中文的系统上，错误和警告信息都会乱码，可以进行下面的设置
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'

"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['pylint'],
            \}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""" scrooloose/nerdcommenter 插件 """"""""""""""""""""""""""""""""""""""""""""
"The NERD Commenter
"注释符号后面空一格
let g:NERDSpaceDelims            = 1
let g:NERDCompactSexyComs        = 1
let g:NERDDefaultAlign           = 'left'
let g:NERDAltDelims_java         = 1
let g:NERDCustomDelimiters       = {'c': {'left': '/*', 'right': '*/'}}
let g:NERDCommentEmptyLines      = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines    = 1

"let mapleader="\"

"  \ca，在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
"  \cc 注释当前行和选中行
"  \c，切换注释/非注释状态
"  \cs 添加性感的注释，代码开头介绍部分通常使用该注释
"  \cA，在当前行尾添加注释符，并进入Insert模式
"  \cu，取消注释
"  Normal模式下，几乎所有命令前面都可以指定行数。  比如  输入 6\cs的意思就是以性感方式注释光标所在行开始6行代码
"  Visual模式下执行命令，会对选中的特定区块进行注释/反注释

"  \cn 没有发现和\cc有区别
"  \c<空格> 如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作
"  \cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
"  \ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
"  \cy 添加注释，并复制被添加注释的部分
"  \c$ 注释当前光标到改行结尾的内容
"  \cl \cb 左对齐和左右对其，左右对其主要针对/**/


"  vim原本的注释快捷键是 \ci，一次注释，操作两次是取消注释
"    n\ci是注释n行


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""  mtdl9/vim-log-highlighting """"""""""""""""""""""""""""""""""""""""
" Add custom level identifiers
" au rc Syntax log syn keyword logLevelError MY_CUSTOM_ERROR_KEYWORD

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""tpope/vim-commentary配置"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gcc: 注释或反注释,ngcc,n为行数
" gcap: 注释一段
" gc: visual 模式下直接注释所有已选择的行

""""""""""""""""""""""""""""""""vim-emmet配置""""""""""""""""""""""""""""""""

"let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
            \ 'javascript.jsx' : {
            \ 'extends' : 'jsx',
            \ },
            \ }



""""""""""""""""""""""""""""""配置vim-css3-syntax/vim-css-color""""""""""""""""""""""""""""""
augroup VimCSS3Syntax
    autocmd!

    autocmd FileType css setlocal iskeyword+=-
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""配置vim-javascript"""""""""""""""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax
let g:javascript_conceal_function             = ""
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = ""
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = " "
let g:javascript_conceal_underscore_arrow_function = " "
set conceallevel=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""papercolor配置""""""""""""""""""""""""""""""""""""""""

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }


let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'color00' : ['#080808', '232'],
  \         'linenumber_bg' : ['#080808', '232']
  \       }
  \     }
  \   }
  \ }

  let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }


""""""""""""""""""""""""""""""""""""""""""""""""""" davidhalter/jedi-vim """""""""""""""""""""""""""""""""""""""""""""
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

" <leader>d: go to definition
" K: check documentation of class or method
" <leader>n: show the usage of a name in current file
" <leader>r: rename a name


"""""""""""""""""""""""""""""""""""" 设置状态栏主题风格 airline """"""""""""""""""""""""""""""

"选择主题

let airlinethemes = [
    \ '"badwolf"',  '"base16_3024"', '"base16_apathy"', '"base16_atelierdune"' ,'"base16_atelierforest"' , '"base16_atelierseaside"' ,
    \ '"base16_bespin"' ,'"base16_brewer"' ,'"base16_colors"'  , '"base16_shapeshifter"' , '"powerlineish"', '"solarized_flood"',
    \ '"xtermlight"' , '"base16_google"',
    \ ]

exe 'let g:airline_theme= '.airlinethemes[localtime() % len(airlinethemes)]


"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1

"打开tabline功能,方便查看Buffer和切换，这个功能比较不错,我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline_section_b = '%{strftime("%m/%d/%y - %H:%M")}'
" let g:airline_section_y = 'BN: %{bufnr("%")}'
" 设置中文提示
language messages zh_CN.utf-8
" 设置中文帮助
set helplang=cn
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '  "separater
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
let g:airline#extensions#tabline#formatter = 'default'  "formater

" 关闭状态显示空白符号计数,这个对我用处不大"
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"old vim-powerline symbols
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

let g:airline#extensions#tabline#buffer_idx_mode = 1
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap ;- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap ;= <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap ;q :bp<cr>:bd #<cr>
" 修改了一些个人不喜欢的字符
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""" bling/vim-bufferline """""""""""""""""""""""""""""""""""""""""""
" 表示缓冲线是否应自动回显到命令栏
let g:bufferline_echo = 1

" 缓冲区左侧使用的分隔符
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'

" 表示缓冲区已修改的符号
let g:bufferline_modified = '+'

" 表示是否应显示缓冲区编号
let g:bufferline_show_bufnr = 1

 " 默认，不旋转，不滚动
" let g:bufferline_rotate = 0

" 以固定的当前缓冲区位置滚动
" let g:bufferline_rotate = 1

" 在没有固定当前缓冲区位置的情况下滚动
let g:bufferline_rotate = 2


" " """"""""""""""""""""""""""""""""配置spaceline""""""""""""""""""""""""""""""""
"
" let g:spaceline_seperate_style = 'arrow'
" let g:spaceline_colorscheme = 'space'
" let g:spaceline_scroll_chars = [
"   \  ' ', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█'
"   \  ]
"
" " two char wide fade-in blocks
" let g:spaceline_scroll_chars = [
"   \ '  ', '░ ', '▒ ', '▓ ', '█ ', '█░', '█▒', '█▓', '██'
"   \ ]
"
" " three char wide solid horizontal bar
" let g:spaceline_scroll_chars = [
"   \ '   ', '▏  ', '▎  ', '▍  ', '▌  ',
"   \ '▋  ', '▊  ', '▉  ', '█  ', '█▏ ',
"   \ '█▎ ', '█▍ ', '█▌ ', '█▋ ', '█▊ ',
"   \ '█▉ ', '██ ', '██▏', '██▎', '██▍',
"   \ '██▌', '██▋', '██▊', '██▉', '███'
"   \ ]
"
" let g:spaceline_scroll_chars = ['⎺', '⎻', '⎼', '⎽', '⎯']
"

" """"""""""""""""""""""""""""""""配置lightline""""""""""""""""""""""""""""""""
" " wombat, solarized, powerline, powerlineish,jellybeans, molokai, seoul256, darcula, selenized_dark,
" " Tomorrow, Tomorrow_Night, Tomorrow_Night_Blue,Tomorrow_Night_Bright, Tomorrow_Night_Eighties,
" " PaperColor,landscape, one, materia, material, OldHope, nord, deus,srcery_drk, ayu_mirage and 16color

" "molokai,landscape,solarized,

" let g:lightline = {
"             \ 'colorscheme': 'ayu_mirage',
"             \ 'active': {
"             \   'left': [ [ 'mode', 'paste' ],
"             \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ],
"             \   'right': [ [ 'lineinfo' ],
"             \              [ 'percent' ],
"             \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ],
"             \ },
"             \ 'component': {
"             \   'charvaluehex': '0x%B',
"             \   'gitbranch': 'fugitive#head',
"             \ },
"             \ 'component_function': {
"             \   'filename': 'LightlineFilename',
"             \   'mode': 'LightlineMode',
"             \   'filetype': 'LightlineFiletype',
"             \    \   'method': 'NearestMethodOrFunction',
"             \ },
"             \ }

" "\   'helloworld': 'I am writing something...'


" function! LightlineMode()
"     return expand('%:t') =~# '^__Tagbar__' ? 'Tagbar':
"                 \ expand('%:t') ==# 'ControlP' ? 'CtrlP' :
"                 \ &filetype ==# 'unite' ? 'Unite' :
"                 \ &filetype ==# 'vimfiler' ? 'VimFiler' :
"                 \ &filetype ==# 'vimshell' ? 'VimShell' :
"                 \ lightline#mode()
" endfunction


" function! LightlineFilename()
"     return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
"                 \ &filetype ==# 'unite' ? unite#get_status_string() :
"                 \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
"                 \ expand('%:t') !=# '' ? expand('%:t') : '[未命名]'
" endfunction

" let g:unite_force_overwrite_statusline = 0
" let g:vimfiler_force_overwrite_statusline = 0
" let g:vimshell_force_overwrite_statusline = 0

" function! LightlineFiletype()
"     return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
" endfunction


""""""""""""""""""""""""""""any-jump配置"""""""""""""""""""""""""

nnoremap <Leader>j :AnyJump<CR>

" Visual mode: jump to selected text in visual mode
xnoremap <leader>j :AnyJumpVisual<CR>

" Normal mode: open previous opened file (after jump)
nnoremap <leader>ab :AnyJumpBack<CR>

" Normal mode: open last closed search window again
nnoremap <leader>al :AnyJumpLastResults<CR>
let g:any_jump_window_width_ratio  = 0.8
let g:any_jump_window_height_ratio = 0.9

" Or override all default colors
let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Comment",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}

" Disable default any-jump keybindings (default: 0)
let g:any_jump_disable_default_keybindings = 1

" Remove comments line from search results (default: 1)
let g:any_jump_remove_comments_from_results = 1

" Custom ignore files
" default is: ['*.tmp', '*.temp']
let g:any_jump_ignored_files = ['*.tmp', '*.temp']

" Search references only for current file type
" (default: false, so will find keyword in all filetypes)
let g:any_jump_references_only_for_current_filetype = 0

" Disable search engine ignore vcs untracked files
" (default: false, search engine will ignore vcs untracked files)
let g:any_jump_disable_vcs_ignore = 0
""""""""""""""""""""''prettier/vim-prettier配置""""""""""""""""""""""""""""""
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#autoformat = 0
autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync



"""""""""""""""""""""""""""""""""""""""""配置底部状态栏"""""""""""""""""""""""""""""""""""""""""

set statusline=%1*\%<%.50F\             "显示文件名和文件路径 (%<应该可以去掉)
set statusline+=%=%2*\%y%m%r%h%w\ %*        "显示文件类型及文件状态
set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*   "显示文件编码类型
set statusline+=%4*\ row:%l/%L,col:%c\ %*   "显示光标所在行和列
set statusline+=%5*\%3p%%\%*            "显示光标前文本所占总文本的比例
hi User1 cterm=none ctermfg=25 ctermbg=0
hi User2 cterm=none ctermfg=208 ctermbg=0
hi User3 cterm=none ctermfg=169 ctermbg=0
hi User4 cterm=none ctermfg=100 ctermbg=0
hi User5 cterm=none ctermfg=green ctermbg=0
hi Normal ctermfg=252 ctermbg=none
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""配置底部状态栏"""""""""""""""""""""""""""""""""""""""""
""statusline
"set statusline=
"set statusline+=%7*\[%n]                                  "buffernr
"set statusline+=%1*\ %<%F\                                "文件路径
"set statusline+=%2*\ %y\                                  "文件类型
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "编码1
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "编码2
"set statusline+=%4*\ %{&ff}\                              "文件系统(dos/unix..) 
"set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "语言 & 是否高亮，H表示高亮?
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)
"set statusline+=%9*\ col:%03c\                            "光标所在列
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Read only? Top/bottom
"function! HighlightSearch()
"      if &hls
"          return 'H'
"      else
"          return ''
"      endif
"endfunction
"hi User1 ctermfg=white  ctermbg=darkred
"hi User2 ctermfg=blue  ctermbg=58
"hi User3 ctermfg=white  ctermbg=100
"hi User4 ctermfg=darkred  ctermbg=95
"hi User5 ctermfg=darkred  ctermbg=77
"hi User7 ctermfg=darkred  ctermbg=blue  cterm=bold
"hi User8 ctermfg=231  ctermbg=blue
""hi User9 ctermfg=#ffffff  ctermbg=#810085
"hi User0 ctermfg=yellow  ctermbg=138

""""""""""""""""""""""""""""""""""""""""""配置底部状态栏"""""""""""""""""""""""""""""""""""""""""
"function! Buf_total_num()
 "   return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
"endfunction
"function! File_size(f)
 "   let l:size = getfsize(expand(a:f))
 "   if l:size == 0 || l:size == -1 || l:size == -2
 "       return ''
 "   endif
 "   if l:size < 1024
 "       return l:size.' bytes'
 "   elseif l:size < 1024*1024
 "       return printf('%.1f', l:size/1024.0).'k'
 "   elseif l:size < 1024*1024*1024
 "       return printf('%.1f', l:size/1024.0/1024.0) . 'm'
 "   else
 "       return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
 "   endif
"endfunction
"set statusline=%<%1*[B-%n]%*
"" TOT is an abbreviation for total
"set statusline+=%2*[TOT:%{Buf_total_num()}]%*
"set statusline+=%3*\ %{File_size(@%)}\ %*
"set statusline+=%4*\ %F\ %*
"set statusline+=%5*『\ %{exists('g:loaded_ale')?ALEGetStatusLine():''}』%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*
"set statusline+=%6*\ %m%r%y\ %*
"set statusline+=%=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
"set statusline+=%8*\ %P\ %*
"" default bg for statusline is 236 in space-vim-dark
"hi User1 cterm=bold ctermfg=232 ctermbg=179
"hi User2 cterm=None ctermfg=214 ctermbg=242
"hi User3 cterm=None ctermfg=251 ctermbg=240
"hi User4 cterm=bold ctermfg=169 ctermbg=239
"hi User5 cterm=None ctermfg=208 ctermbg=238
"hi User6 cterm=None ctermfg=246 ctermbg=237
"hi User7 cterm=None ctermfg=250 ctermbg=238
"hi User8 cterm=None ctermfg=249 ctermbg=240



" """"""""""""""""""""""""""""""""""""""""""""""""""""""""自定义"配色方案"""""""""""""""""""""""""""""""""""'""'""

" "/usr/share/vim/vim81/colors/ 目录中包含了大多数文件类型的语法高亮插件。
" hi clear


if strftime('%H') >= 7 && strftime('%H') < 23
    set background=light
    let ayucolor="light"  " for light version of theme
    let themes = [
        \ 'cosmic_latte', 'carbonized-light', 'ayu', 'c16gui', 'cake16', 'carrot', 'cleanphp',
        \ 'colorful',  'flattened_light', 'github', 'PaperColor', 'gobo', 'gruvbox', 'habiLight',
        \ 'navajo',  'fine_blue', 'nightshade_print_modified', 'nightshade_print',
        \ 'pencil', 'earth', 'tcsoft',  'phpx', 'professional', 'rainbow_autumn', 'NeoSolarized',
        \ 'seagull',  'snow', 'solarized8', 'solarized8_light_high', 'solarized8_high', 'stellarized',
        \ 'thegoodluck', 'winter', 'violet', 'space_vim_theme', 'Atelier_LakesideLight', 'Atelier_SeasideLight',
	    \ 'kemonofriends', 'one', 'onehalflight', 'lucario', 'gruvbox8_soft', 'ayumi',
        \ 'rakr-light', 'rakr', 'lightning', 'fruchtig', 'tatami', 'snowtrek', 'donbass', 'blandon',
	    \ 'vadelma', 'greent', 'fruit', 'nortia-nvim',
        \ ]
    " autocmd vimenter * ++nested colorscheme PaperColor
    hi CursorColumn      ctermbg=250
    hi CursorColumn      guibg= #bcbcbc
else
    set background=dark
    let ayucolor="mirage"  " for light version of theme
    let themes = [
        \ 'solarized8_dark_high' , 'github','NeoSolarized','neonwave',
        \ 'flattened_dark' ,  'lilydjwg_dark_modified', 'molokai','umber_green','petrel','detorte',
        \ 'solarized8_flat', 'solarized8_low', 'solarized8_high','solarized8' ,'lilydjwg_dark',
        \ 'PaperColor', 'gruvbox8_soft','gruvbox8_hard','violet','lucario','palenight','rigel',
        \ 'shades_of_purple','cobalt','cobaltish','cosmic-barf','tokyonight','true','purpura',
        \ ]
    " autocmd vimenter * ++nested colorscheme lilydjwg_dark_modified
    hi CursorColumn      ctermbg=237
    hi CursorColumn      guibg= #3a3a3a
endif

exe 'autocmd vimenter * ++nested colorscheme '.themes[localtime() % len(themes)]
" exe 'colorscheme '.themes[localtime() % len(themes)]
" autocmd vimenter * ++nested colorscheme solarized8_higt


" 黑色：carbonized_dark, SolarizedDark_modified ,NeoSolarized, colorful256, drakblack, earth, fine_blue, flattened_dark , github, lilydjwg_dark_modified, molokai, solarized8 , solarized8_flat, solarized8_low, solarized8_higt,umber_green,

" 白色：cosmic_latte，carbonized_light, ayu,NeoSolarized, blacklight, bmichaelsen, c16gui, cake16, carrot, cleanphp, colorful,  flattened_light,github,gabo,greygull, gruvbox, habLight, navajo,  nicotine,nightshade_print_modified,nightshade_print, pencil, petrel, phpx, , , ,professional,rainbow_autumn,relaxedgreen,redstring,seagull,sf,snow,solarized8 , solarized8_flat, solarized8_low, solarized8_higt,stellarized, thegoodluck,winter,zellner,

" autocmd FileType  c,cpp            colorscheme   kemonofriends
" autocmd FileType  sh               colorscheme   true
" autocmd FileType  python           colorscheme   purpura
" autocmd FileType  vim              colorscheme   donbass
" autocmd FileType  text             colorscheme   seagull
" autocmd FileType  xterm            colorscheme   ayumi
" autocmd FileType  markdown         colorscheme   donbass
" autocmd FileType  zsh              colorscheme   fruchtig

nnoremap c1 :set background=dark<CR>:colorscheme lilydjwg_dark<CR> :AirlineTheme base16_colors<CR>
nnoremap c2 :set background=dark<CR>:colorscheme lilydjwg_dark_modified<CR>:AirlineTheme base16_colors<CR>
nnoremap c3 :set background=dark<CR>:colorscheme solarized8_flat<CR>:AirlineTheme base16_colors<CR>
nnoremap c4 :set background=dark<CR>:colorscheme NeoSolarized<CR>:AirlineTheme base16_colors<CR>
nnoremap c5 :set background=dark<CR>:colorscheme flattened_dark<CR>:AirlineTheme base16_colors<CR>
nnoremap c6 :set background=dark<CR>:colorscheme true<CR>:AirlineTheme base16_colors<CR>
nnoremap c7 :set background=dark<CR>:colorscheme purpura<CR>:AirlineTheme base16_colors<CR>

nnoremap c11 :set background=light<CR>:colorscheme colorful<CR>:AirlineTheme base16_colors<CR>
nnoremap c12 :set background=light<CR>:colorscheme NeoSolarized<CR>:AirlineTheme base16_colors<CR>
nnoremap c13 :set background=light<CR>:colorscheme solarized8_flat<CR>:AirlineTheme base16_colors<CR>
nnoremap c14 :set background=light<CR>:colorscheme flattened_light<CR>:AirlineTheme base16_colors<CR>
nnoremap c15 :set background=light<CR>:colorscheme seagull<CR>:AirlineTheme base16_colors<CR>
nnoremap c16 :set background=light<CR>:colorscheme PaperColor<CR>:AirlineTheme base16_colors<CR>
nnoremap c17 :set background=light<CR>:colorscheme kemonofriends<CR>:AirlineTheme base16_colors<CR>
nnoremap c18 :set background=light<CR>:colorscheme donbass<CR>:AirlineTheme base16_colors<CR>
nnoremap c19 :set background=light<CR>:colorscheme greent<CR>:AirlineTheme base16_colors<CR>

"光标所在的屏幕行 ,是让光标所在行整一行都显示下划线的，就是加一条水平下划线）
" hi CursorLine       ctermbg=234   cterm=underline
hi CursorLine         ctermbg=NONE         cterm=underline
hi CursorLine         guibg=NONE   gui=underline


"可视模式的选择区
hi Visual            ctermfg=NONE          ctermbg=237
hi Visual           guifg=NONE           guibg=#ffffff

hi VisualNOS               ctermfg=NONE    ctermbg=237
hi VisualNOS              guifg=NONE       guibg=#8B8386

" 光标所在的字符
hi Cursor           ctermfg=196  ctermbg=51
hi  Cursor           guifg=white   guibg=green


" "分离垂直分割窗口的列
hi VertSplit       ctermfg=16      ctermbg=10   cterm=bold
hi VertSplit       guifg=#000000   guibg=#00FF00   cterm=bold

" "|more-prompt|，文件更改后:q提示是否保存的颜色
hi MoreMsg ctermfg=11   ctermbg=16  cterm=BOLD term=Bold
hi MoreMsg guifg=#FFD700   guibg=#000000  gui=BOLD

" " "警告消息
hi WarningMsg      ctermfg=231        cterm=bold
hi WarningMsg      guifg=#CDCDB4  guibg=#000000   cterm=bold

" "当前窗口的状态行，以及wildmenu补全的非当前匹配颜色
hi StatusLine ctermfg=15    ctermbg=16  cterm=bold
hi StatusLine guifg=#E0FFFF   guibg=#000000   gui=bold

" " wildmenu补全的当前匹配
hi WildMenu    ctermfg=46   ctermbg=16  cterm=BOLD  term=bold
hi WildMenu    guifg=#00FF00   guibg=#000000  gui=BOLD

" " vim最底下一行(--插入--)的颜色,showmode 消息(INSERT)
hi ModeMsg         ctermfg=202  cterm=bold
hi ModeMsg         guifg=#CD9B1D  gui=bold

" " 提示(请按Enter或其他命令继续)的颜色
hi Question        ctermfg=11  ctermbg=16
hi Question        guifg=#EEEE00  guibg=#000000


" " "命令行上的错误信息 <!--more-->
hi ErrorMsg        ctermfg=199    ctermbg=16   cterm=bold
hi ErrorMsg        guifg=#C71585   guibg=#000000     gui=bold

" "用于关闭的折叠的行
hi Folded          ctermfg=29          ctermbg=16
hi Folded          guifg=#66CD00

" "Nerdtree目录树颜色
hi Directory       ctermfg=46               cterm=bold
hi Directory       guifg=#00FF00               gui=bold

" complete menu
hi Pmenu      ctermfg=0       ctermbg=243
hi Pmenu      guifg=#000000    guibg=darkgrey

"弹出菜单选中项目
hi    PmenuSel   ctermfg=196   ctermbg=251
hi    PmenuSel   guifg=darkgrey guibg=black

"弹出菜单滚动条。
hi    PmenuSbar        ctermbg=15
hi    PmenuSbar        guibg=#FFFFFF

"弹出菜单滚动条的拇指, 和上面一一对应
hi    PmenuThumb      ctermbg=34    cterm=bold
hi    PmenuThumb      guibg=#228B22    gui=bold

"没有标签的地方
hi  TabLineFill   ctermfg=2     ctermbg=246     term=Bold   cterm=bold

" " 窗口尾部的'~'和 '@'
hi NonText         ctermfg=1  cterm=bold
hi NonText         guifg=#FF0000  cterm=bold

" " "特殊键，字符和'listchars'
hi SpecialKey         cterm=bold
hi SpecialKey      guifg=#00FFFF  gui=bold
"""""""""""""""""""""""""""""""""""""""""""""""设置颜色结束"""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""新增配置""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"任何的 Python 文件中使用  % （向前）或  g% （向后）在这三个片断之间跳转
autocmd FileType python let b:match_words = '\<if\>:\<elif\>:\<else\>'

"始终使用n下一个，N上一个
nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

"命令行模式用ctrl+p/n进行上下
" cnoremap <c-n> <down>
" cnoremap <c-p> <up>

" 智能 Ctrl-l
nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>



"快速把当前行上衣或者下移一行
nnoremap [e :<c-u>execute 'move -1-'.v:count1<cr>
nnoremap ]e :<c-u>execute  'move +'.v:count1<cr>

" 速添加空行
nnoremap [s :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]s :<c-u>put =repeat(nr2char(10), v:count1)<cr>
"快速跳转到源/头文件
autocmd BufLeave *.{c,cpp} mark C
autocmd BufLeave *.h mark H

"在GUI中快速该表字体的大小
command! Bigger :let &guifont = substitude(&guifont, '\d\+$', '\=submatch(0)+1',")
command! Smaller :let &guifont = substitude(&guifont, '\d\+$', '\=submatch(0)-1',")

"根据模式改变光标模式
if empty($TMUX)
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	let &t_SR = "\<Esc>]50;CursorShape=2\x7"
else
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
endif

"防止水平滑动的时候失去选择
xnoremap < <gv
xnoremap > >gv

"选择当前行至末尾，排除换行符
nnoremap L g_

" 重新载入保存文件
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
autocmd BufWritePost ~/.Xdefaults call system('xrdb --merge ~/.Xdefaults')

" 更加智能的当前高亮
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

set complete-=i " disable scanning included files
set complete-=t " disable searching tags

" 光标放到当前行末尾之后，默认情况下你是不可能做到的，但是可能通过设置virtualedit 选项达到目的
"set virtualedit=all


"删除行尾空格
nnoremap ;se  :%s/\s\+$//g<CR>
" 去除空白
nmap wb :%s/\s\+$//ge<CR>
autocmd BufWritePre *.lua,*.[hcm],*.cpp,*.c,*.mm,*.sh,*.py normal wb


"删除行首空格
nnoremap ;sh  :%s/^\s*//g<CR>

"删除所有空格行
nnoremap ;ss   :g/^$/d<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。
if has("autocmd")
    autocmd BufRead,BufNewFile *.c,*.h set expandtab
endif
"autocmd FileType python noremp <buffer> <F8>:call Autopep8()<CR> "设置快捷键代替autopep8
"为python添加pep8的代码风格
au BufNewFile,BufRead *.py,*.php,*.c,*.sh,*.cpp,*.java,*.ruby,*.perl
            \ set tabstop=4 | "tab宽度"
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            \ set textwidth=500 | "行最大宽"
            \ set autoindent |  "自动缩进"
            \ set fileformat=unix "保存文件的格式"

au BufNewFile,BufRead *.js,*.html,*.css,*.xml
            \ set tabstop=2 |
            \ set softtabstop=2 |
            \ set shiftwidth=2


autocmd FileType make setlocal noexpandtab

"为不同的文件类型设置不同的空格数替换TAB
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ai
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sw=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sts=4
autocmd FileType javascript,html,css,xml set ai
autocmd FileType javascript,html,css,xml set sw=2
autocmd FileType javascript,html,css,xml set ts=2
autocmd FileType javascript,html,css,xml set sts=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""Ctrl+Up变大 Down变小 Home还原(假设你原来的字体是10)"""""""""""""""""""""""""""""""""""""""""""""""
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16

function! AdjustFontSize(amount)
   if has("gui_gtk2") && has("gui_running")
     let fontname = substitute(&guifont, s:pattern, '\1', '')
     let cursize = substitute(&guifont, s:pattern, '\2', '')
     if (cursize < s:minfontsize) || (cursize > s:maxfontsize)
       let cursize = 10
     endif
       let newsize = cursize + a:amount
      if (a:amount > 1)
        let newsize = a:amount
     endif
      if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
       let newfont = fontname . " " . newsize
       let &guifont = newfont
     endif
   else
     echoerr "You need to run the GTK2 version of Vim to use this function."
   endif
endfunction

map <C-;> :call AdjustFontSize(1) <CR>
map <C-.> :call AdjustFontSize(-1) <CR>
map <C-Home> :call AdjustFontSize(10) <CR>


"""""""""""""""""""""""""""""" 更改字体 """"""""""""""""""""""""""""""
let s:fontsize = 12
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

" In normal mode, pressing numpad's+ increases the font
noremap <kPlus> :call AdjustFontSize(1)<CR>
noremap <kMinus> :call AdjustFontSize(-1)<CR>

" In insert mode, pressing ctrl + numpad's+ increases the font
inoremap <C-kPlus> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-kMinus> <Esc>:call AdjustFontSize(-1)<CR>a


function! AdjustFontSize(amount)
    if !has("gui_running")
        return
    endif

    let l:min_font_size = 5
    let l:max_font_size = 23

    let l:font_info = GetFontInfo()
    if l:font_info.name == '' || l:font_info.size == ''
        return
    endif

    let l:font_name = l:font_info.name
    let l:font_size = l:font_info.size

    " Decrease font size.
    if a:amount == '-'
        let l:font_size = l:font_size - 1

    " Increase font size.
    elseif a:amount == '+'
        let l:font_size = l:font_size + 1

    " Use a specific font size.
    elseif str2nr(a:amount)
        let l:font_size = str2nr(a:amount)
    endif

    " Clamp font size.
    let l:font_size = max([l:min_font_size, min([l:max_font_size, l:font_size])])

    if matchstr(&guifont, ':') == '' " Linux guifont style.
        " \v           Very magical.
        " (\d+$)       Capture group:       Match [0-9] one-or-more times, at the end of the string.
        let l:font_size_pattern = '\v(\d+$)'
    else " Windows and macOS guifont style.
        " \v           Very magical.
        " (:h)@<=      Positive lookbehind: Match ':h'.
        " (\d+)        Capture group:       Match [0-9] one-or-more times.
        let l:font_size_pattern = '\v(:h)@<=(\d+)'
    endif

    " Update vim font size.
    let &guifont = substitute(&guifont, l:font_size_pattern, l:font_size, '')

    call DisplayFontInfo()
endfunction

function! DisplayFontSelector()
    if !has("gui_running")
        return
    endif

    " Display font selector.
    " NOTE: This only changes &guifont to '*' in terminal vim.
    set guifont=*

    call DisplayFontInfo()
endfunction

function! DisplayFontInfo()
    let l:font_info = GetFontInfo()
    if l:font_info.name == '' || l:font_info.size == ''
        return
    endif

    " Display font name and size.
    redraw | echomsg l:font_info.name . ' ' . l:font_info.size . '%'
endfunction

function! GetFontInfo()
    " Windows and macOS &guifont: Hack NF:h11:cANSI
    "                             3270Medium_NF:h10:W500:cANSI:qDRAFT
    " Linux &guifont: Hack Nerd Font Mono Regular 10

    if matchstr(&guifont, ':') == '' " Linux guifont style.
        " \v           Very magical.
        " (^.{-1,})    Capture group:       Anchored at the start of the string, match any character one-or-more times non-greedy.
        " ( \d+$)@=    Positive lookahead:  Match ' ' followed by [0-9] one-or-more times, at the end of the string.
        let l:font_name_pattern = '\v(^.{-1,})( \d+$)@='

        " \v           Very magical.
        " (\d+$)       Capture group:       Match [0-9] one-or-more times, at the end of the string.
        let l:font_size_pattern = '\v(\d+$)'
    else " Windows and macOS guifont style.
        " \v           Very magical.
        " (^.{-1,})    Capture group:       Anchored at the start of the string, match any character one-or-more times non-greedy.
        " (:)@=        Positive lookahead:  Match ':'.
        let l:font_name_pattern = '\v(^.{-1,})(:)@='

        " \v           Very magical.
        " (:h)@<=      Positive lookbehind: Match ':h'.
        " (\d+)        Capture group:       Match [0-9] one-or-more times.
        let l:font_size_pattern = '\v(:h)@<=(\d+)'
    endif

    let l:font_name = matchstr(&guifont, l:font_name_pattern)
    let l:font_size = matchstr(&guifont, l:font_size_pattern)

    return { 'name' : l:font_name, 'size' : l:font_size }
endfunction

" Bind Control + Mouse-wheel to zoom text.
" NOTE: This event only works in Linux and macOS. SEE: :h scroll-mouse-wheel
map <silent> <C-ScrollWheelDown> :call AdjustFontSize('-')<CR>
map <silent> <C-ScrollWheelUp> :call AdjustFontSize('+')<CR>

" Decrease font size.
nnoremap <silent> <F11> :call AdjustFontSize('-')<CR>
inoremap <silent> <F11> <Esc>:call AdjustFontSize('-')<CR>
vnoremap <silent> <F11> <Esc>:call AdjustFontSize('-')<CR>
cnoremap <silent> <F11> <Esc>:call AdjustFontSize('-')<CR>
onoremap <silent> <F11> <Esc>:call AdjustFontSize('-')<CR>

" Increase font size.
nnoremap <silent> <F12> :call AdjustFontSize('+')<CR>
inoremap <silent> <F12> <Esc>:call AdjustFontSize('+')<CR>
vnoremap <silent> <F12> <Esc>:call AdjustFontSize('+')<CR>
cnoremap <silent> <F12> <Esc>:call AdjustFontSize('+')<CR>
onoremap <silent> <F12> <Esc>:call AdjustFontSize('+')<CR>

" Set font size to my preferred size.
nnoremap <silent> <S-F11> :call AdjustFontSize(10)<CR>
inoremap <silent> <S-F11> <Esc>:call AdjustFontSize(10)<CR>
vnoremap <silent> <S-F11> <Esc>:call AdjustFontSize(10)<CR>
cnoremap <silent> <S-F11> <Esc>:call AdjustFontSize(10)<CR>
onoremap <silent> <S-F11> <Esc>:call AdjustFontSize(10)<CR>

" Display font selector.
nnoremap <silent> <S-F12> :call DisplayFontSelector()<CR>
inoremap <silent> <S-F12> <Esc>:call DisplayFontSelector()<CR>
vnoremap <silent> <S-F12> <Esc>:call DisplayFontSelector()<CR>
cnoremap <silent> <S-F12> <Esc>:call DisplayFontSelector()<CR>
onoremap <silent> <S-F12> <Esc>:call DisplayFontSelector()<CR>




""--------------------vim原本的快捷键映射变更-----------------------------
"###################################################
"复制粘贴快捷键
"###################################################
" noremap (no recursion)不递归的映射
" inoremap(insert)模式下生效
" vnoremap(visual)模式下生效
" nnoremap(normal)模式下生效


" alt+A全选，alt+C复制，alt+V粘贴
"  Ubuntu上安装的vim默认是不支持系统剪切板的，需要安装
"sudo apt-get install vim-gnome
" Ctrl+a全选
noremap <C-a> ggvG$
inoremap <C-a> <Esc>ggvG$
" Ctrl+A全选并复制，
" noremap <C-a> ggyG$
" inoremap <C-a> <Esc>ggyG$



" set clipboard=unnamedplus  "使得vim剪切板和系统剪切板一致，这样就可以使用ctrl c/v了
"sudo apt install xclip, vim-gtk
"sudo pacman -S xsel
nnoremap <C-c> "+y
vnoremap <C-c> "+y<Esc>

nnoremap <C-s> "+p
inoremap <C-s> <Esc>"+pa
nnoremap <C-s> "+gp
" "+gp  粘贴并且移动光标到粘贴内容后

map <C-x> "+x
inoremap <C-x> <Esc>"+x

" map <C-z> "+u
" inoremap <C-z> <Esc>"+u

" v进入可视模式，V进入行可视模式，alt-v进入块可视模式
" nnoremap  <M-v>  <C-v>

"括号等的自动补全
:inoremap ( ()<ESC>i
:inoremap { {<CR>}<ESC>O
:inoremap [ []<ESC>i
:inoremap 《 《》<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap 》 <c-r>=ClosePair('》')<CR>
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


" 解决写入只读文件
nnoremap tee :w !sudo tee %<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrl-f 下翻一页,f = forward
" ctrl-b 上翻一页,b = backward
" ctrl-u 上翻半页,u = up
" ctrl-d 下翻半页,d = down


" shift+up上翻半页，向上滚半个屏幕；
nmap <S-up>  <C-u>
vmap <S-up>  <C-u>

" shift+down下翻半页，向下滚半个屏幕
nmap <S-down>  <C-d>
vmap <S-down>  <C-d>

"vim原本 ctrl-f 下翻一页,f = forward
"vim原本 ctrl-b 上翻一页,b = backward
" shift+left上翻一页，向上滚一个屏幕
nmap <S-left>  <C-b>
vmap <S-left>  <C-b>
" shift+right下翻一页，向下滚一个屏幕
nmap <S-right>  <C-f>
vmap <S-right>  <C-f>

" Ctrl + U or E will move up/down the view port without moving the cursor
noremap <C-M-left> 5<C-y>
noremap <C-M-right> 5<C-e>
inoremap <C-M-left> <Esc>5<C-y>a
inoremap <C-M-right> <Esc>5<C-e>a
" ctrl+alt+left向上翻一行，向上滚一行屏幕，光标不动
nmap <C-M-up>  <C-y>
vmap <C-M-up>  <C-y>
inoremap <C-M-up> <Esc><C-y>a
" ctrl+alt+right向下翻一行，向下滚一行屏幕，光标不动
nmap <C-M-down>  <C-e>
vmap <C-M-down>  <C-e>
inoremap <C-M-down> <Esc><C-e>a
" 光标在当前行的基础上再跳 20 行：20+enter 键

" U/E keys for 5 times u/e (faster navigation)
nnoremap k 5k
nnoremap j 5j
nnoremap h 5h
nnoremap l 5l
nnoremap U 10k
nnoremap D 10j
nnoremap H 10h
nnoremap L 10l

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
" 向左分屏
map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
" 向下分屏
map sj :set splitbelow<CR>:split<CR>
" 向左分屏
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
" 向右分屏
map sl :set splitright<CR>:vsplit<CR>

" Place the two screens up and down
nnoremap sh <C-w>t<C-w>K
" Place the two screens side by side
nnoremap sv <C-w>t<C-w>H

" Rotate screens
nnoremap srh <C-w>b<C-w>K
nnoremap srv <C-w>b<C-w>H

"---------------- 窗口、标签页、缓冲区的切换--------------------------------
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"########################### 切换窗口####################################
" nnoremap <C-down> <C-W>j
" nnoremap <C-up> <C-W>k
" nnoremap <C-right> <C-W>l
" nnoremap <C-left> <C-W>h
"组合快捷键：
" Ctrl-down 切换到下方的分割窗口
" Ctrl-up 切换到上方的分割窗口
" Ctrl-right 切换到右侧的分割窗口
" Ctrl-left 切换到左侧的分割窗口

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
"组合快捷键：
" Ctrl-j 切换到下方的分割窗口
" Ctrl-k 切换到上方的分割窗口
" Ctrl-l 切换到右侧的分割窗口
" Ctrl-h 切换到左侧的分割窗口
" 注意，这里的ctrl+hjkl与WinManager的ctrl+上下左右是一样的左右，也就是切换窗口,这里的快捷键覆盖了winmanager的快捷键

" nnoremap <A-j> <C-W>j
" nnoremap <A-k> <C-W>k
" nnoremap <A-l> <C-W>l
" nnoremap <A-h> <C-W>h

nnoremap <C-w> <C-W>w
nnoremap <C-q> <C-W>q
nnoremap <C-t> <C-W>T
nnoremap <C-S-o> <C-W>o

" Ctrl-w 遍历切换窗口
" Ctrl-q 关闭当前窗口，如果只剩最后一个了，则退出 vim
" Ctrl-t 当前窗口移动到新标签页
" Ctrl-shift-o 关闭出当前窗口之外的所有窗口


" " 移动窗口
" alt+j当前窗口向上面移动
nnoremap <S-M-j> <C-w>J
" alt+k当前窗口向上方移动
nnoremap <S-M-k> <C-w>K
" alt+l 当前窗口向右边移动
nnoremap <S-M-l> <C-w>L
" alt+h当前窗口向左边移动
nnoremap <S-M-h> <C-w>H


" 多窗口分屏时改变窗口大小 +/- 3
" alt+left左右减小
nnoremap <M-left>  :vertical resize -2<cr>
" alt+down，上下减小
nnoremap <M-down>  :resize +2<cr>
" alt+up上下增大
nnoremap <M-up>    :resize -2<cr>
" alt+right 左右增大
nnoremap <M-right> :vertical resize +2<cr>
" 注：M 即 Alt 键

"分屏解决了之后还要考虑每个屏幕的大小，可以使用指令 :res +5 来增加当前屏幕的上下宽度 5，:vertical resize +5 增加当前屏幕的左右宽度 5，同样可以自定义快捷键,
"注意：设置完这些快捷键之后在普通模式下就不能使用方向键来移动光标了，只能使用 hjkl，读者可按照自己偏好来设置
" 方向键 上 使上下屏幕增加 5 个宽度
" map <Up> :res +5
" 方向键 下 使上下屏幕减少 5 个宽度
" map <Down> :res -5
" 方向键 右 使左右屏幕增加 5 个宽度
" map <Right> :vertical resize+5
" 方向键 左 使左右屏幕减少 5 个宽度
" map <Left> :vertical resize-5


nnoremap html :%TOhtml<cr>
"#################################### 多标签页配置####################################
" 不显示标签栏
" set showtabline=0
" 这是默认设置，意思是，在创建标签页后才显示标签栏。
set showtabline=1
" 总是显示标签栏
" set showtabline=2


" 若要在右上角启用关闭按钮，请将以下内容添加到 ~/.vimrc

let g:tablineclosebutton=1

"#################################### 多标签页切换####################################


" 新建标签页
noremap <silent><tab>t :tabnew<cr>
" 关闭标签页
noremap <silent><tab>c :tabclose<cr>
"下一个标签页
noremap <silent><tab><right> :tabnext<cr>
noremap <silent>]t :tabnext<cr>
noremap <silent>;n :tabnext<cr>
" nnoremap tn  :tabnext<CR>
" nnoremap <M-k>  :tabnext<CR>
" 上一个标签页
noremap <silent><tab><left> :tabprevious<cr>
noremap <silent>[t :tabprevious<cr>
noremap <silent>;p :tabprevious<cr>
" nnoremap tp  :tabprevious<CR>
" nnoremap <M-j>  :tabprevious<CR>

"下一个标签页,循环
noremap <silent><S-tab> :tabnext<CR>

"Vim默认最多只能打开10个标签页。你可以用set tabpagemax=15改变这个限制。
set tabpagemax=15


" Create a new tab with tu
nnoremap tu :tabe<CR>
nnoremap tU :tab split<CR>

" Move the tabs with tmn and tmp
nnoremap tmn :-tabmove<CR>
nnoremap tmp :+tabmove<CR>

" 正常模式下切换到确切的 tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>

:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>


noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
" noremap <C-t> :tabnew split<CR>


" 命令:tabs可以显示已打开标签页的列表，并用“>”标识出当前页面，用“+”标识出已更改的页面。
" :tabe <文件名> 在新标签页中打开指定的文件。
" 如果你打开了多个缓冲区，那么使用命令:tab ball将为每一个打开的缓冲区，分别新建单独的标签页。
" :tabnew <文件名> 在新标签页中编辑新的文件。
" :tabc       关闭当前的 tab
" :tabc i     关闭第i个的标签
" vim -p files: 打开多个文件，每个文件占用一个标签页。
" :tabe/tabnew -- 如果加文件名，就在新的标签中打开这个文件， 否则打开一个空缓冲区。
" ^w gf -- 在新的标签页里打开光标下路径指定的文件。
" tabn或gt -- 切换到下一个标签。Control + PageDown，也可以。
" :tabp或gT -- 切换到上一个标签。Control + PageUp，也可以。
" {i}gt       移动到第i个标签页
" :tab split -- 将当前缓冲区的内容在新页签中打开。
" :tabc[lose] -- 关闭当前的标签页。
" :tabo[nly] -- 关闭其它的标签页。
" :tabs -- 列出所有的标签页和它们包含的窗口。
" :tabm[ove] [N] -- 移动标签页，移动到第N个标签页之后。 如 tabm 0 当前标签页，就会变成第一个标签页。
" :tablast   切换到最后一个标签
" :tabfirst   切换到第一个标签

"######################################## 缓冲区#################################


" ctrl + tab下一个buffer
" map <C-tab> :bn<CR>
" nnoremap <C-tab> :bn<CR>
nnoremap  ]b :bn<CR>
nnoremap  ;e :bn<CR>
" nnoremap  `e :bn<CR>
" nnoremap  <M-l> :bn<CR>
" ctrl + shift + tab下一个buffer
" map <C-M-tab> :bp<CR>
" nnoremap <C-M-tab> :bp<CR>
nnoremap  [b :bp<CR>
nnoremap  ;a :bp<CR>
" nnoremap  `a :bp<CR>
" nnoremap  <M-h> :bp<CR>

" :buffers或:ls或:files 显示缓冲区列表。
" ctrl+^：在最近两个缓冲区间切换。
" :bn -- 下一个缓冲区。
" :bp -- 上一个缓冲区。
" :bl -- 最后一个缓冲区。
" :b[n]或:[n]b -- 切换到第n个缓冲区。
" :nbw(ipeout) -- 彻底删除第n个缓冲区。
" :nbd(elete) -- 删除第n个缓冲区，并未真正删除，还在unlisted列表中。
" :ba[ll] -- 把所有的缓冲区在当前页中打开，每个缓冲区占一个窗口。


" :e 文档名        这是在进入vim后，不离开 vim 的情形下打开其他文档。

""""""""""""""""""""""""""""""""""""""" Markdown 快捷键""""""""""""""""""""""""""""""""""""""""
"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>


"############################### 美化标签栏方法1 #######################################
" TabLine (普通标签样式)／TabLineSel (选中状态标签的样式)。
highlight TabLine        term=underline    cterm=bold    ctermfg=9   ctermbg=4
highlight TabLineSel     term=bold         cterm=bold   ctermbg=Red  ctermfg=yellow


" 定义颜色
hi SelectTabLine     term=Bold     cterm=Bold         ctermfg=196  guifg=#FF0000     ctermbg=black  guibg=#000000
hi SelectPageNum     term=Bold     cterm=Bold         ctermfg=red   guifg=#FF0000    ctermbg=black  guibg=#000000
hi Selectkuohao      term=Bold     cterm=Bold         ctermfg=10   guifg=#00FF00     ctermbg=black  guibg=#000000


hi NormalTabLine     term=Bold     cterm=Bold        ctermfg=blue   guifg=#0000FF       ctermbg=246  guibg=#696969
hi NormalPageNum     term=Bold     cterm=Bold        ctermfg=93     guifg=#9400D3       ctermbg=246   guibg=#696969
hi Normalkuohao      term=Bold     cterm=Bold        ctermfg=16     guifg=#000000       ctermbg=246     guibg=#696969



" " (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            " let s .= '%#TabNum#'
            let s .= (i == t ? '%#Selectkuohao#' : '%#Normalkuohao#')
            let s .=  '['
            let s .= (i == t ? '%#SelectPageNum#' : '%#NormalPageNum#')
            let s .=  i
            " let s .= '%*'
            let s .= (i == t ? '%#SelectTabLine#' : '%#NormalTabLine#')

            for bufnr in buflist
                if getbufvar(bufnr, "&modified")
                    let s .= '+'
                    break
                endif
            endfor

            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[新建文件]'
            endif
            let s .= ' ' . file .''
            let s .= (i == t ? '%#Selectkuohao#' : '%#Normalkuohao#')
            let s .=  ']'
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
endif



"设置鼠标运行模式为 WINDOWS 模式
" behave mswin

" 平台判断
function! GetSystem()
    if (has("win32") || has("win95") || has("win64") || has("win16"))
        return "windows"
    elseif has("unix")
        return "linux"
    else has("mac")
        return "mac"
    endif
endfunction


" =============================================================================
"        << 判断操作系统是 Windows 还是 Linux 和判断是终端还是 Gvim >>
" =============================================================================


" -----------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif


" -----------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
" -----------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

" -----------------------------------------------------------------------------
"  < Windows Gvim 默认配置> 做了一点修改
" -----------------------------------------------------------------------------
if (g:iswindows && g:isGUI)
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    set diffexpr=MyDiff()
    function MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        let eq = ''
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                let cmd = '""' . $VIMRUNTIME . '\diff"'
                let eq = '"'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction
endif

"######################################################################################


""""""""""""""""""""""""""""""""""""""""C语言的编译运行"""""""""""""""""""""""""""""""""""""""""
" "一键执行python代码
" map <F5> :call RunPython()<CR> "一键执行python代码
"
" func! RunPython()
"     exec "W"
"     if &filetype=='python'
"         exec"!time ipython %"
"     endif
" endfunc                       "或者把python3.6改为python解释器的位置：/home/jack/anaconda3/bin/python3


"C,C++的调试
map <F7> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc


" <F5>编译C/C++/java/，<F6>运行C/C++/java
" <F5>解释运行python/sh
augroup ccompile
    autocmd Filetype c map <F5> <Esc>:w<CR>:!time gcc % -std=c99 -g -o %< -lm <CR>
    autocmd Filetype cpp map <F5> <Esc>:w<CR>:!time g++ % -std=c++11 -g -o %< -lm <CR>
    "autocmd Filetype python map <F5> <Esc>:w<CR>:!python2 % <CR>
    "autocmd Filetype python map <F5> <Esc>:w<CR>:!time python3.6 % <CR>
    autocmd Filetype python map <F5> <Esc>:w<CR>:!time ipython  % <CR>
    autocmd Filetype java map <F5> <Esc>:w<CR>:!time javac % <CR>
    autocmd Filetype sh map <F5> <Esc>:w<CR>:!./% <CR>
augroup END

augroup crun
    autocmd Filetype c map <F6> <Esc>:!time ./%< <CR>
    autocmd Filetype cpp map <F6> <Esc>:!time ./%< <CR>
    autocmd Filetype java map <F6> <ESC>:!time java %< <CR>
augroup END

" 整行注释
augroup comment
    autocmd Filetype c noremap <buffer> <localleader>/ I//<Esc>
    autocmd Filetype cpp noremap <buffer> <localleader>/ I//<Esc>
    autocmd Filetype h noremap <buffer> <localleader>/ I//<Esc>
augroup END

augroup nocomment
    autocmd Filetype c noremap <buffer> <localleader>. ^xx
    autocmd Filetype cpp noremap <buffer> <localleader>. ^xx
    autocmd Filetype h noremap <buffer> <localleader>. ^xx
augroup END


" 大括号补全
autocmd Filetype c,cpp,h inoremap {<CR> {<CR>}<Esc>O


" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'html'
    exec "!firefox % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'vimwiki'
    exec "MarkdownPreview"
  if &filetype == 'vim'
    " exec "source ~/.config/nvim/init.vim"
  endif
endfunc

"这里嘛。。是用来一键编译代码的
noremap <M-r> :call CompileRunGcc_girl()<CR>
func! CompileRunGcc_girl()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitbelow
    exec "!g++ -std=c++11 % -Wall -o %<"
    :sp
    :res -10
    :term ./%<
    exec "!rm -rf ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!" google-chrome-stable " % &"
  elseif &filetype == 'markdown'
    exec "InstantMarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'dart'
    exec "CocCommand flutter.run -d ".g:flutter_default_device
    CocCommand flutter.dev.openDevLog
  elseif &filetype == 'javascript'
    set splitbelow
    :sp
    :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run .
  endif
endfunc



""""""""""""""""""""""""""""""""""""""""C语言的编译运行"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 功能：使用第三方软件快速打开当前文件或当前文件夹，同时不阻塞当前窗口。
" 例： 日志实时查看 BareTailProfessional 打开文件
"        chrome、firefox浏览器打开预览

function ViewInBrowser(name)
    let file = expand("%:p")
    echo "当前文件：" . file
    if has('win32') || has('win64') || has('win16') || has('win95')
        let l:browsers = {
            \"gvim":"gvim",
            \"Chrome":"C\:\\Program Files\ \(x86\)\\Google\\Chrome\\Application\\chrome.exe",
            \"FireFox":"C\:\\Program\ Files\\Mozilla\ Firefox\\firefox.exe",
            \"sublime_text3":"D:\\XWindowsToolSoftware\\Tool_Sublime_Text3_for_Windows\\SublimeText3\\sublime_text.exe",
            \"Notepad++":"C:\\Program\ Files\ \(x86\)\\Notepad++\\notepad++.exe",
            \"baregreppro":"D:\\XWindowsToolSoftware\\BareTailProfessional\\baregreppro.exe",
            \"baretailpro":"D:\\XWindowsToolSoftware\\BareTailProfessional\\baretailpro.exe",
            \"Typora":"C:\\Program Files\\Typora\\Typora.exe",
        \}
        " 执行命令用相应程序打开文件
        execute "!start "  l:browsers[a:name] file
    else
        let l:browsers = {
            \"gvim":"gvim",
            \"Chrome":"chromium",
            \"FireFox":"firefox",
            \"sublime_text3":"sublime-text",
            \"Typora":"typora",
            \}
        " 执行命令用相应程序打开文件
    execute "silent !"  l:browsers[a:name] file
    endif

endfunction

" 前缀键命令映射
" nmap <leader>cr    :call ViewInBrowser("Chrome")<cr>      " 用谷歌浏览器大开 
" nmap <leader>ff    :call ViewInBrowser("FireFox")<cr>     " 用火狐浏览器打开
" nmap <leader>bt    :call ViewInBrowser("baretailpro")<cr> " 用日志文件实时查看软件器Baretailpro打开当前文件

" 自定命令
:command Gvim        :call ViewInBrowser("gvim")<cr>          " 用Gvim再打开

:command Chrome      :call ViewInBrowser("Chrome")<cr>        " 用谷歌浏览器大开 
:command Firefox     :call ViewInBrowser("FireFox")<cr>       " 用火狐浏览器打开
:command Baretail    :call ViewInBrowser("baretailpro")<cr>   " 用日志文件实时查看软件器Baretailpro打开当前文件
:command Baregrep    :call ViewInBrowser("baregreppro")<cr>   " 用日志文件检索实时查看器baregreppr打开当前文件
:command Sublime     :call ViewInBrowser("sublime_text3")<cr> " 用sublime_text3打开当前文件
:command Notepad     :call ViewInBrowser("Notepad++")<cr>     " 用sublime_text3打开当前文件
:command Typora      :call ViewInBrowser("Typora")<cr>        " 用MarkDown编辑查看器Typora打开


"====================================30s,自动保存文件========================================="
let autosave=10
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头，比如预处理命令，和编码设置。并且可以在每次修改后记录修改时间
autocmd BufNewFile *.py,*.cpp,*.v,*.sv,*.[ch],*.sh,*.java  exec ":call SetTitle()"
"上面一行中*.py之间*.v除了逗号不能有空格
"autocmd BufWrite *.[ch] call SetLastModifiedTime(-1)
""定义函数SetTitle，自动插入文件头
function! SetTitle()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#! /usr/bin/env bash")
        call append(line("."),"\#########################################################################")
        call append(line(".")+1, "\# File Name: ".expand("%"))
        call append(line(".")+2, "\# Author:陈俊杰")
        call append(line(".")+3, "\# mail: 2716705056@qq.com")
        " call append(line(".")+4, "\# Created Time: ".strftime("%Y.%m.%d"))
        call append(line(".")+4, "\# Created Time: ".strftime("%c"))
        call append(line(".")+5, " ")
        call append(line(".")+6, "\# 此程序的功能是：")
        call append(line(".")+7, "\#########################################################################")
        call append(line(".")+8, "")
        call append(line(".")+9, "")
        call append(line(".")+10, "")
    elseif &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python3")
        call append(line("."), "\#!-*-coding=utf-8-*-")
        call append(line(".")+1, "\#########################################################################")
        call append(line(".")+2, "\# File Name: ".expand("%"))
        call append(line(".")+3, "\# Author: 陈俊杰")
        call append(line(".")+4, "\# Created Time: ".strftime("%c"))
        call append(line(".")+5, "")
        " call append(line(".")+5, "\# Created Time: ".strftime("%Y.%m.%d"))
        call append(line(".")+6, "\# mail: 2716705056@qq.com")
        call append(line(".")+7, "\#此程序的功能是：")
        call append(line(".")+8, "")
        call append(line(".")+9, "\#########################################################################")
        call append(line(".")+10, "import pandas as pd")
        call append(line(".")+11, "import numpy as np")
	call append(line(".")+12, "import scipy as scp")
        call append(line(".")+13, "import matplotlib.pyplot as plt")
	call append(line(".")+14, "import os, time")
        call append(line(".")+15, "")
    elseif &filetype == 'java'
        call setline(1, "//coding=utf8")
        call setline(2, "/**")
        call setline(3, "\ *\ @Author: 陈俊杰")
        call setline(4, "\ *\ @mail: 2716705056@qq.com ")
        call setline(5, "\ *\ @File Name: ".expand("%"))
        call setline(6, "\ *\ @Created Time : ".strftime("%c"))
        call setline(7, "\ *\  ")
        call setline(8, "\ *\ @此程序的功能是:")
        call setline(9, "\ */")
        call setline(10,"")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."), ">> File Name: ".expand("%"))
        "call append(line(".")+1, ">> Author: chenjunjie")
        call append(line(".")+1, ">> Author: 陈俊杰")
        call append(line(".")+2, ">> Mail: 2716705056qq.com")
        call append(line(".")+3, " ")
        call append(line(".")+4, ">> Created Time: ".strftime("%c"))
        call append(line(".")+5, "")
        call append(line(".")+6, ">> 此程序的功能是：")
        call append(line(".")+7, "************************************************************************/")
        call append(line(".")+8, "")

        if &filetype == 'cpp'
            call append(line(".")+9, "#include<bits/stdc++.h>")
            call append(line(".")+10, "using namespace std;")
            call append(line(".")+11, "")
            call append(line(".")+12, "")
            call append(line(".")+13, "int main(int argc, char *argv[])")
            call append(line(".")+14, "{")
            call append(line(".")+15, "}")
        elseif &filetype == 'c'
            call append(line(".")+9, "#include<stdio.h>")
            call append(line(".")+10, "#include<stdlib.h>")
            call append(line(".")+11, "#include<float.h>")
            call append(line(".")+12, "#include<limits.h>")
            call append(line(".")+13, "#include<math.h>")
            call append(line(".")+14, "#include<string.h>")
            call append(line(".")+15, "#include<sys/socket.h>")
            call append(line(".")+16, "#include<stddef.h>")
            call append(line(".")+17, "#include<locale.h>")
            call append(line(".")+18, "#include<time.h>")
            call append(line(".")+19, "#include<complex.h>")
            call append(line(".")+20, "#include<stdbool.h>")
            call append(line(".")+21, "")
            call append(line(".")+22, "")
            call append(line(".")+23, "int main(int argc, char *argv[])")
            call append(line(".")+24, "{")
            call append(line(".")+25, "}")
        else
            call append(line(".")+9, " ")

        endif
    endif
endfunction

"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G

function! SetLastModifiedTime(lineno)
    let modif_time = strftime( '%c', getftime(bufname('%')) )
    if a:lineno == "-1"
        let line = getline(7)
    else
        let line = getline(a:lineno)
    endif

    if line =~ '^sLast Modified'
        let line = '>> Last Modified : '.modif_time
    else
        let line = '>> Last Modified : '.modif_time
    endif

    if a:lineno == "-1"
        call setline(7, line)
    else
        call append(a:lineno, line)
    endif
endfunc
""""""""""""""""""""""""""""""""""""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"##################################################################
"#################  插件的快捷键           ##########
"##################################################################


" "########################################################
" "vim 原本的快捷键
" "########################################################

" "------------------- 光标移动命令----------------------------
" 单个字符移动：
" h 或退格：光标左移一个字符；
" l 或空格：光标右移一个字符；
" j : 光标下移一行；
" k : 光标上移一行；
" xh:  向左移动x个字符距离

" 单词移动：
" w 跳到下一个字首，按标点或单词分割
" W 跳到下一个字首，长跳，如end-of-line被认为是一个字
" e 跳到下一个字尾
" E 跳到下一个字尾，长跳
" b 跳到上一个字
" B 跳到上一个字，长跳
" ge:  将光标移动到上一个单词的词末
" 2w:  指定移动的次数

" 行移动：
" $:  将光标移动到当前行的行尾
" 0:  将光标移动到当前行的行首
" ^:  将光标移动到当前行的第一个非空字符（行首和当前行非空字符不是一个位置）
" 2|:  移到当前行的第2列
" fc : 把光标移到同一行的下一个 c 字符处
" Fc : 把光标移到同一行的上一个 c 字符处
" tc : 把光标移到同一行的下一个 c 字符前
" Tc : 把光标移到同一行的上一个 c 字符后
" 3fx: 将光标移动到当前行的第3个字符x上
" tx:   将光标移动到目标字符x的前一个字符上
" fx和tx可以通过;和,进行重复移动，一个是正向重复，一个是反向重复
" ; 重复上一个f命令，而不用重复的输入fx
" * 查找光标所在处的单词，向下查找
" # 查找光标所在处的单词，向上查找
" %:  用于符号间的移动，它会在一对()、[]、{}之间跳跃

" 文本块移动：
" (：  移到当前句子的开头
" ):  移到下一个句子的开头
" {:  移到当前一段的开头
" }:  移到下一段的开头
" [[:  移到当前这一节的开头
" ]]:  移到下一节的开头

" 在屏幕中移动
" nG:  跳转到指定的第n行，G移动到文件按末尾，``（2次单引号)返回到跳转前的位置
" gg:  移动到文件开头
" G 调至文尾
" 5gg/5G 调至第5行
" gd 跳至当前光标所在的变量的声明处
" 光标在当前行的基础上再跳 20 行：20+enter 键
" x%:  移动到文件中间，就使用50%
" H : 把光标移到屏幕最顶端一行。
" M : 把光标移到屏幕中间一行。
" L : 把光标移到屏幕最底端一行。
" ctrl+G:  查看当前的位置状态


" "--------------------------滚屏与跳转---------------------------------
" 半屏滚动:  ctrl+u/ctrl+d
" 全屏滚动:  ctrl+f/ctrl+b
" ctrl-f 下翻一页,f = forward
" ctrl-b 上翻一页,b = backward
" ctrl-u 上翻半页,u = up
" ctrl-d 下翻半页,d = down
" 定位光标的位置
" Ctrl-e    向下滚动一行；
" Ctrl-y    向上滚动一行；
" zz 让光标所在的行居屏幕中央
" zt 让光标所在的行居屏幕最上一行 t=top
" zb 让光标所在的行居屏幕最下一行 b=bottom

" 设置跳转标记
" mx,my,mz设置三个位置
" `x,`y,`z跳转到设置


" "---------------------文本插入操作---------------------------
" i:  在当前光标的前面插入字符
" a:  在当前光标的后面进入插入模式，追加字符
" o:  在当前光标的下一行行首插入字符
" I:  在一行的开头添加文本
" A:  在一行的结尾处进入插入模式，添加文本
" O:  在光标当前行的上一行插入文本
" s:  删除当前光标处的字符并进入到插入模式
" S:  删除光标所在处的行，并进入到插入模式
" u:  撤销修改


""-------------------文本删除操作--------------------------
" 字符删除
" x:  删除当前光标所在处的字符
" X:  删除当前光标左边的字符

" 单词删除
" dw:  删除一个单词(从光标处到空格)
" daw:  无论光标在什么位置，删除光标所在的整个单词(包括空白字符)
" diw:  删除整个单词文本，但是保留空格字符不删除
" d2w:  删除从当前光标开始处的2个单词
" d$:  删除从光标到一行末尾的整个文本
" d0:  删除从光标到一行开头的所有单词
" dl:  删除当前光标处的字符=x
" dh:  删除当前光标左边的字符=X

" 行删除
" dd:  删除当前光标处的一整行=D
" 5dd:  删除从光标开始处的5行代码
" dgg:  删除从光标到文本开头
" dG:  删除从光标到文本结尾

" 行合并
" J:  删除一个分行符，将当前行与下一行合并


"------------------------ 文本复制、剪切与粘贴---------------------------
" y:  复制，p:粘贴
" yw:  复制一个单词
" y2w:  复制2个单词
" y$:  复制从当前光标到行结尾的所有单词
" y0:  复制从当前光标到行首的所有单词
" yy:  复制一整行
" 2yy:  复制从当前光标所在行开始的2行

" 复制文本块
"     1.首先进入visual模式：v
"     2.移动光标选择文本
"     3.复制与粘贴的操作

"--------------------- 文本的修改与替换-------------------------------
" cw:  删除从光标处到单词结尾的文本并进入到插入模式
" cb:  删除从光标处到单词开头的文本并进入到插入模式
" cc 删除当前行并进入编辑模式
" c$ 擦除从当前位置至行末的内容，并进入编辑模式
" s 删除当前字符并进入编辑模式
" S 删除光标所在行并进入编辑模式
" ~： 修改光标下字符的大小写
" r:  替换当前光标下的字符
" R:  进入到替换模式
" xp:  交换光标所在字符和下一个字符
" >> 将当前行右移一个单位
" << 将当前行左移一个单位(一个tab符)
" == 自动缩进当前行

"------------------------- 文本的查找与替换-------------------------
" /string   正向查找
" ?string   反向查找
"  n 下一个匹配(如果是/搜索，则是向下的下一个，?搜索则是向上的下一个)
"  N 上一个匹配(同上)
"  /\CWord ： 区分大小写的查找
"  /\cword ： 不区分大小写的查找

" 设置高亮显示
"     :set hls
"     *按键将当前光标处的单词高亮显示，使用n浏览下一个查找高亮的结果
" :s/old/new   将当前行的第一个字符串old替换为new
" :s/old/new/g   将当前行的所有字符串old替换为new
" :90s/old/new/g  将指定行的所有字符串old替换为new
" :90,93s/old/new/g  将指定范围的行的所有字符串old替换为new
"  :%s/old/new/g 搜索整个文件，将所有的old替换为new
"  :%s/old/new/gc 搜索整个文件，将所有的old替换为new，每次都要你确认是否替换
" :%s/^struct/int/g   将所有以struct开头的字符串替换为int


"---------------------------- 撤销修改、重做与保存---------------------------------
" u:  撤销上一步的操作。
" Ctrl+r:  将原来的插销重做一遍
" U：  恢复一整行原来的面貌（文件打开时的文本状态）
" q:  若文件没有修改，直接退出
" q!:  文件已经被修改，放弃修改退出
" wq:  文件已经被修改，保存修改并退出
" e!:  放弃修改，重新回到文件打开时的状态


"---------------------------- 编辑多个文件----------------------------------------
" 文件和缓冲区的区别
" 文件是保存在磁盘上的，而打开的文件的文件是在内存中，在内存中有一个缓冲区，用来存放打开的文件。vim每次打开文件时都会创建一个缓冲区，vim支持打开多个文件
" 缓冲区
" :buffers或:ls或:files 显示缓冲区列表。
" ctrl+^：在最近两个缓冲区间切换。
" :bn -- 下一个缓冲区。
" :bp -- 上一个缓冲区。
" :bl -- 最后一个缓冲区。
" :b[n]或:[n]b -- 切换到第n个缓冲区。
" :nbw(ipeout) -- 彻底删除第n个缓冲区。
" :nbd(elete) -- 删除第n个缓冲区，并未真正删除，还在unlisted列表中。
" :ba[ll] -- 把所有的缓冲区在当前页中打开，每个缓冲区占一个窗口。
" :bfirst/blast  分别调到缓冲区列表的开头和结尾
" :write   将缓冲区的修改保存到磁盘上


" 文档操作
" :e file --关闭当前编辑的文件，并开启新的文件。 如果对当前文件的修改未保存，vi会警告。
" :e! file --放弃对当前文件的修改，编辑新的文件。
" :e+file -- 开始新的文件，并从文件尾开始编辑。
" :e+n file -- 开始新的文件，并从第n行开始编辑。
" :enew --编译一个未命名的新文档。(CTRL-W n)
" :e -- 重新加载当前文档。
" :e! -- 重新加载当前文档，并丢弃已做的改动。
" :e#或ctrl+^ -- 回到刚才编辑的文件，很实用。
" :f或ctrl+g -- 显示文档名，是否修改，和光标位置。
" :f filename -- 改变编辑的文件名，这时再保存相当于另存为。
" gf -- 打开以光标所在字符串为文件名的文件。
" :w -- 保存修改。
" :n1,n2w filename -- 选择性保存从某n1行到另n2行的内容。
" :wq -- 保存并退出。
" ZZ -- 保存并退出。
" :x -- 保存并退出。
" :q[uit] 退出当前窗口。(CTRL-W q或CTRL-W CTRL-Q)
" :saveas newfilename -- 另存为


"---------------------------------标签页与折叠栏-----------------------------------------
" 多标签编辑
" vim -p files: 打开多个文件，每个文件占用一个标签页。
" :tabe, tabnew -- 如果加文件名，就在新的标签中打开这个文件， 否则打开一个空缓冲区。
" ^w gf -- 在新的标签页里打开光标下路径指定的文件。
" :tabn -- 切换到下一个标签。Control + PageDown，也可以。
" :tabp -- 切换到上一个标签。Control + PageUp，也可以。
" [n] gt -- 切换到下一个标签。如果前面加了 n ， 就切换到第n个标签。第一个标签的序号就是1。
" :tab split -- 将当前缓冲区的内容在新页签中打开。
" :tabc[lose] -- 关闭当前的标签页。
" :tabo[nly] -- 关闭其它的标签页。
" :tabs -- 列出所有的标签页和它们包含的窗口。
" :tabm[ove] [N] -- 移动标签页，移动到第N个标签页之后。 如 tabm 0 当前标签页，就会变成第一个标签页。
" 创建一个折叠
"     zf200G:将光标和200行之间的代码折叠起来
" 折叠的打开与关闭
"     za:  打开和关闭折叠
"     zr/zm: 一层一层地打开和关闭折叠
"     zR/zM: 分别打开和关闭所有的折叠
" 折叠键的光标移动
"     zj: 跳转到下一个折叠处
"     zk: 跳转到上一个折叠处
" 删除折叠
"     zd: 删除光标下的折叠
"     zD: 删除光标下的折叠以及嵌套的折叠
"     zE: 删除所有的折叠标签
"     创建的折叠当退出vim之后就失效了。


"----------------------- 多窗口操作---------------------------
" 分割窗口
" :split/vsplit filename
" 窗口间跳转
" ctrl+w hjkl   ,先键入Ctrl+w, 松开后再键入ARROW(h,j,k,l或方向键)
" CTRL-W h        跳转到左边的窗口
" CTRL-W j        跳转到下面的窗口
" CTRL-W k        跳转到上面的窗口
" CTRL-W l        跳转到右边的窗口

" CTRL-W t        跳转到最顶上的窗口
" CTRL-W b        跳转到最底下的窗口

" ctrl+w w        循环跳转

" 移动窗口
"     ctrl+w HJKL
" CTRL-W K    窗口将被移到最上面,如果你用的是垂直分割，CTRL-W K 会使当前窗口移动到上面并扩展到整屏的宽度。
" CTRL-W H        把当前窗口移到最左边
" CTRL-W J        把当前窗口移到最下边
" CTRL-W L        把当前窗口移到最右边


" 调整窗口尺寸
"     ctrl+w +/-  调整窗口的高度
"     ctrl+w </>  调整窗口的宽度
"     ctrl+w = 所有的窗口设置相同的尺寸
"     :resize n将当前窗口尺寸调整为N行
" 关闭窗口
"     :close: 关闭一个窗口
"     :qall: 退出所有窗口
"     :qall!: 放弃修改，退出所有窗口
"     :wqall: 保存并退出所有窗口
"     :wall: 保存所有窗口

"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"-----------------------------vim快捷键结束----------------------------------------------
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"        (          (左小括号) 移到这个句子的开头
"         )          (左小括号) 移到下一个句子的开头

"       [[         跳往上一个函式的起始大括号
"       ]]         跳往下一个函式的起始大括号
"       []         跳往上一个函数的结束大括号
"       ][         跳往下一个函数的结束大括号


"      {         (左大括号) 跳到上一段的开头
"      }         (右大括号) 跳到下一段的的开头

" 在开发中，可能会遇到一次性给多行代码增加注释的情况。
" 操作步骤如下：
" 在命令模式下，移动到要添加注释代码的第一行，按下 "^" 将光标移动到行首。
" 按下 "Ctrl + v"， 命令模式 --> 可视块模式。
" 使用 "j" 向下连续选中要添加的代码行。
" 输入 "I"， 可视块模式 --> 编辑模式。（注意：必须使用 "I"）
" 输入 "#" 字符，也就是注释的符号。
" 按下 "Esc"， 编辑模式 --> 命令模式。
"

" y0 复制到行首
" y$ 复制到行尾
"
" cw        更改单词，并复制到剪切板
" "ayy      复制到剪切板并命名为a
" "ap       粘贴a剪切板中的内容
" dG      删除光标所在行直到最后一行
" d->     删除右边一个单词
" d3->    删除右边三个字符
" cw      删除一个单词并进入插入模式
" c6->    删除右边6个单词并进入插入模式
" ciw     编辑当前单词
" ci"     删除"中的内容,并编辑
" di"     删除"中的内容
" yi"     复制"中的内容
" fv      查找v字母并跳转
" df:     删除直到:的内容
" yf:     复制直到:的内容
" cf:     删除直到:并进入插入模式



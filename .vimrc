syntax on

let mapleader = ","
let g:mapleader = ","

" 折り返し無効
set nowrap

" BOM無効
set nobomb

" 内容が変更されたら自動的に再読込
set autoread

" タブの表示上の幅
set tabstop=2

" タブを半角スペースに変換
set expandtab

" 自動インデントに使われる空白の数
set shiftwidth=2

" キーボードでタブを入力した際に、空白いくつ分に変換するか
set softtabstop=2

" 入力中のコマンドを表示
set showcmd

" 大文字小文字
set ignorecase

" タイトルをバッファ名に変更しない
set notitle

" ターミナル接続を高速化
set ttyfast

" 他で編集されたら再読み込み
set autoread

" マウスの有効化
set mouse=a

" クリップボードコピー
set clipboard=unnamed,autoselect

" 自動インデント
set noautoindent

" 改行時に入力された行の末尾にあわせて次の行のインデントを増減
set smartindent

" Unicodeで行末が変になる問題を解決
set ambiwidth=double

" バックアップを設定しない
set nobackup

" バックスペースで消せる有効範囲
set backspace=indent,eol,start

" 大文字で検索したら、大文字を検索
set smartcase

" カッコ対応をハイライト
set showmatch

" 検索結果をハイライトする
set hlsearch

" バックアップの有無
set nobackup

" swapファイル生成の有無
set noswapfile

" swapファイルの生成先
set directory=~/tmp

" ルーラー表示
set ruler

" 行番号を表示
set number

" エンコーディング設定
set encoding=utf-8

" □や○文字が崩れる問題を解決
set ambiwidth=double

" ============== BIND ========================
map <Leader>l :!php -l %<CR>

" ============== プラグイン ===================
" unite
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>

" 入力モードで開始
let g:unite_enable_start_insert=1

" ファイル履歴の保存数
let g:unite_source_file_mru_limit = 200

" ESC2回でunite終了
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" nerdtree
" 隠しファイルをデフォルトで表示させる
let g:NERDTreeShowHidden = 1

" vim-auto-colorscheme {{{
let g:auto_colorscheme_default = 'jellybeans'
let g:auto_colorscheme_config = [
\   ['*', 'molokai'],
\ ]

" emmet
let g:user_emmet_leader_key='<C-Y>'

" neobundle
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'Shougo/unite.vim'

 NeoBundle 'scrooloose/nerdcommenter'
 NeoBundle 'scrooloose/nerdtree'   
 NeoBundle 'saihoooooooo/vim-auto-colorscheme'
 NeoBundle 'motemen/git-vim'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'mattn/emmet-vim'

 " color scheme
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'tomasr/molokai'

 " ウィンドウサイズ変更
 "NeoBundle 'simeji/winresizer'

 " Silver Searcherを使えるようにする @see
 " https://github.com/ggreer/the_silver_searcher/blob/master/doc/ag.1.md
 NeoBundle 'rking/ag.vim'

 " html5のタグに対応
 NeoBundle 'othree/html5.vim'

 " データベース操作
 NeoBundle 'vim-scripts/dbext.vim'

 "vimに表示する行数設定
 "let dbext_default_buffer_lines=30 

 " コメント
 NeoBundle 'tomtom/tcomment_vim'

 "" Rails 

 " Unite Rails
 NeoBundle 'basyura/unite-rails'

 " end補完
 NeoBundle 'tpope/vim-endwise.git' 

 " railsのsyntax
 NeoBundle 'tpope/vim-rails'   

 " 文法チェック
 NeoBundle 'ngmy/vim-rubocop'
 let g:vimrubocop_keymap = 0
 nmap <Leader>rr :RuboCop<CR>

 " true/falseのtoggleなど
 NeoBundle 'AndrewRadev/switch.vim'
 let g:switch_mapping = "+"

 "" Slim(テンプレエンジン)
 NeoBundle 'slim-template/vim-slim'   

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

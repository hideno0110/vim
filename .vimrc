syntax on 
let mapleader = ","
let g:mapleader = ","

""文字コードの自動解釈の優先順位
set encoding=utf-8
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
" エンコーディング設定(上部で設定済み)
"set encoding=utf-8
" □や○文字が崩れる問題を解決
set ambiwidth=double

" ============== key bind ===================
" ESCを<C-j>で行う
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
"  
map <Leader>l :!php -l %<CR>
" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;

" ============== Neobundle ===================
if 0 | endif

if &compatible
  set nocompatible 
endif
set runtimepath+=~/.vim/bundle/neobundle.vim/

" NeoBundle設定の開始
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

  "   ============== Plugin ===================
  " rubocop
  NeoBundle 'ngmy/vim-rubocop'  
  " unite
  NeoBundle 'Shougo/unite.vim'
  " vimproc
  NeoBundle "Shougo/vimproc" 
  " coffee script
  NeoBundle 'kchmck/vim-coffee-script'
  " nerdcommenter
  NeoBundle 'scrooloose/nerdcommenter'
  " syntastic
  NeoBundle 'scrooloose/syntastic'
  " elsint
  NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'
  " nerdtree
  NeoBundle 'scrooloose/nerdtree'   
  " colorscheme
  NeoBundle 'saihoooooooo/vim-auto-colorscheme'
  " git vim
  NeoBundle 'motemen/git-vim'
  " 選択中のテキストを括弧 / 引用符 / HTMLタグで囲う
  NeoBundle 'tpope/vim-surround'
  " emmet
  NeoBundle 'mattn/emmet-vim'
  " color scheme
  NeoBundle 'nanotech/jellybeans.vim'
  " NeoBundle 'tomasr/molokai'
  " 高速検索
  NeoBundle 'rking/ag.vim'
  " html5のタグに対応
  NeoBundle 'othree/html5.vim'
  " Unite Rails
  NeoBundle 'basyura/unite-rails'
  " end補完
  NeoBundle 'tpope/vim-endwise.git' 
  " railsのsyntax
  NeoBundle 'tpope/vim-rails'   
  " 文法チェック
  NeoBundle 'ngmy/vim-rubocop'
  " true/falseのtoggleなど
  NeoBundle 'AndrewRadev/switch.vim'
  "" Slim(テンプレエンジン)
  NeoBundle 'slim-template/vim-slim'   
  "辞書(上部でパスを設定)
  NeoBundle 'thinca/vim-ref'
  "vim-watchdogs (シンタックスチェック)
  NeoBundle "thinca/vim-quickrun"
  " NeoBundle "Shougo/vimproc"
  NeoBundle "osyo-manga/shabadou.vim"
  "自動整形
  NeoBundle 'junegunn/vim-easy-align'
  "コメント<c--->
  NeoBundle 'tomtom/tcomment_vim'
  "カッコを自動で閉じる
  NeoBundle 'Townk/vim-autoclose'
  " モードのカラーリング
  NeoBundle 'itchyny/lightline.vim'
  " git 
  NeoBundle 'tpope/vim-fugitive' 
  NeoBundle 'AndrewRadev/splitjoin.vim'
  " スニペット
  NeoBundle 'Shougo/neosnippet-snippets'
  NeoBundle 'Shougo/neosnippet'
  " オートコンプリート
  NeoBundle 'Shougo/neocomplete.vim'
  " vim-php-cs-fixer コード規約チェック
  " NeoBundle 'stephpy/vim-php-cs-fixer'
  " laravel blade 
  " NeoBundle 'jwalton512/vim-blade'
  " namespace 
  " NeoBundle 'arnaud-lb/vim-php-namespace'
 "   ============== Plugin End ===================
 " NeoBundle設定の終了
 call neobundle#end()
 filetype plugin indent on
 " vim起動時に未インストールのプラグインをインストールする
 NeoBundleCheck
" ============== プラグイン ===================

" ============== 
" Unit.vim
" ============== 
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
" au FileType unite nnoremap <silent> <buffer> <expr> <C-J>unite#do_action('split')
" ウィンドウを縦に分割して開く
" au FileType unite nnoremap <silent> <buffer> <expr> <C-K>unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
" 入力モードで開始
let g:unite_enable_start_insert=1
" ファイル履歴の保存数
let g:unite_source_file_mru_limit = 200

" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('hw')
  let g:unite_source_grep_command = 'hw'
  let g:unite_source_grep_default_opts = '--no-group --no-color'
  let g:unite_source_grep_recursive_opt = ''
endif
" ============== 
" nerdtree
" ============== 
" 隠しファイルをデフォルトで表示させる
let g:NERDTreeShowHidden = 1
" ファイル指定で開かれた場合はNERDTreeは表示しない
if !argc()
    autocmd vimenter * NERDTree|normal gg3j
endif
" ============== 
" vim-auto-colorscheme 
" ============== 
let g:auto_colorscheme_default = 'jellybeans'
let g:auto_colorscheme_config = [
\   ['*', 'molokai'],
\ ]

" ============== 
" emmet
" ============== 
let g:user_emmet_leader_key='<C-Y>'
let NERDSpaceDelims = 1

" ============== 
" commenter
" ============== 
 nmap ,, <Plug>NERDCommenterToggle
 vmap ,, <Plug>NERDCommenterToggle
"  autocmd BufRead,BufNewFile *.blade.php set filetype=laravel
 
" ============== 
" Rubocop & Reek
" ============== 
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'javascript', 'json'] }
let g:syntastic_ruby_checkers = ['rubocop', 'reek', 'mri']
let g:syntastic_javascript_checkers=['eslint']

" エラー行に sign を表示
let g:syntastic_enable_signs = 1
" location list を常に更新
let g:syntastic_always_populate_loc_list = 0
" location list を常に表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時にチェックを実行する
let g:syntastic_check_on_open = 0
" :wq で終了する時もチェックする
let g:syntastic_check_on_wq = 0

" ============== 
" ファイルパス表示
" ==============
set statusline=%F%m%r%h%w%=\ %{fugitive#statusline()}\ [%{&ff}:%{&fileencoding}]\ [%Y]\ [%04l,%04v]\ [%l/%L]\ %{strftime(\"%Y/%m/%d\ %H:%M:%S\")}
nnoremap <C-g> 1<C-g>
augroup EchoFilePath
  autocmd WinEnter * execute "normal! 1\<C-g>"
augroup END

" ============== 
" gtags
" ==============
" ,tでタグファイルを生成する
" nnoremap ,t :!gtags<CR>
" nnoremap <C-t> :Gtags
" " カレントファイル内の関数一覧
" nnoremap <C-l> :Gtags -f %<CR>
" " カーソル上の関数の定義場所へジャンプ
" nnoremap <C-j> :GtagsCursor<CR>
" vnoremap <C-j> :GtagsCursor<CR>
" " Usagesを表示
" nnoremap <C-h> :Gtags -r <C-r><C-w><CR>
" vnoremap <C-h> :Gtags -r <C-r><C-w><CR>

nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

"
" map <C-h> :Gtags -f %<CR>
" map <C-j> :GtagsCursor<CR>
" map <C-n> :cn<CR>
" map <C-p> :cp<CR>

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
 NeoBundle 'xsbeats/vim-blade'
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

 "" PHP用の追加
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'Shougo/neosnippet.vim'
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'thinca/vim-ref'
 NeoBundle 'tomtom/tcomment_vim'
 NeoBundle 'AndrewRadev/splitjoin.vim'
 NeoBundle 'osyo-manga/vim-watchdogs'
 NeoBundle 'Shougo/neocomplete.vim'
 NeoBundle 'violetyk/neocomplete-php.vim'
 let g:neocomplete_php_locale = 'ja' 

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
 
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }
 
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
 
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
 
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"" phpオートコンプリート選択後の挙動
function! s:my_cr_function()
	" return neocomplete#close_popup() . "\<CR>"
	return neocomplete#close_popup()
	" For no inserting <CR> key.
	"return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
 
" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1
 
" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1
 
" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
 
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

" inoremap { {}<LEFT>
" inoremap [ []<LEFT>
 " inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"vnoremap { "zdi^V{<C-R>z}<ESC>
"vnoremap [ "zdi^V[<C-R>z]<ESC>
"vnoremap ( "zdi^V(<C-R>z)<ESC>
"vnoremap " "zdi^V"<C-R>z^V"<ESC>
"vnoremap ' "zdi'<C-R>z'<ESC>

inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>



" auto reload .vimrc
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

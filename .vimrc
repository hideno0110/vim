syntax on 
let mapleader = ","
let g:mapleader = ","

"set encoding=utf-8より上に記述
" let &termencoding = &encoding
""文字コードの自動解釈の優先順位
" set fileencodings=utf-8,cp932,euc-jp
"内部の解釈の文字コード　設定ファイルもこのコードで記述してください
set encoding=utf-8
"辞書のパス
let g:ref_phpmanual_path = $HOME . '/.vim/bundle/vim-ref/php-chunked-xhtml'



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

" ESCを<C-j>で行う
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>



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
 let NERDSpaceDelims = 1
 nmap ,, <Plug>NERDCommenterToggle
 vmap ,, <Plug>NERDCommenterToggle
 autocmd BufRead,BufNewFile *.blade.php set filetype=laravel

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

 "ctagsの拡張
 NeoBundle 'majutsushi/tagbar'
 nmap <F8> :TagbarToggle<CR>

 "辞書(上部でパスを設定)
 NeoBundle 'thinca/vim-ref'
 
 "vim-watchdogs (シンタックスチェック)
 NeoBundle "thinca/vim-quickrun"
 NeoBundle "Shougo/vimproc"
 NeoBundle "osyo-manga/shabadou.vim"
 NeoBundle "osyo-manga/vim-watchdogs"
 if has('mac')
   " let g:vimproc_dll_path = $VIMRUNTIME . '/autoload/proc.so'
   let g:vimproc_dll_path = $VIMRUNTIME . '/autoload/vimproc_mac.so'
 endif

 "自動整形
 NeoBundle 'junegunn/vim-easy-align'
 " Start interactive EasyAlign in visual mode (e.g. vipga)
 xmap ga <Plug>(EasyAlign)
 " Start interactive EasyAlign for a motion/text object (e.g. gaip)
 nmap ga <Plug>(EasyAlign)

 "コメント<c--->
 NeoBundle 'tomtom/tcomment_vim'
 
 "カッコを自動で閉じる
 NeoBundle 'Townk/vim-autoclose'

 " モードのカラーリング
 NeoBundle 'itchyny/lightline.vim'
 let g:lightline = {
       \ 'colorscheme': 'wombat',
       \ 'active': {
       \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
       \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
       \ },
       \ 'component_function': {
       \   'fugitive': 'LightlineFugitive',
       \   'filename': 'LightlineFilename',
       \   'fileformat': 'LightlineFileformat',
       \   'filetype': 'LightlineFiletype',
       \   'fileencoding': 'LightlineFileencoding',
       \   'mode': 'LightlineMode',
       \   'ctrlpmark': 'CtrlPMark',
       \ },
       \ 'component_expand': {
       \   'syntastic': 'SyntasticStatuslineFlag',
       \ },
       \ 'component_type': {
       \   'syntastic': 'error',
       \ },
       \ 'subseparator': { 'left': '|', 'right': '|' }
       \ }
 
 function! LightlineModified()
   return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
 endfunction
 
 function! LightlineReadonly()
   return &ft !~? 'help' && &readonly ? 'RO' : ''
 endfunction
 
 function! LightlineFilename()
   let fname = expand('%:t')
   return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
         \ fname == '__Tagbar__' ? g:lightline.fname :
         \ fname =~ '__Gundo\|NERD_tree' ? '' :
         \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
         \ &ft == 'unite' ? unite#get_status_string() :
         \ &ft == 'vimshell' ? vimshell#get_status_string() :
         \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
         \ ('' != fname ? fname : '[No Name]') .
         \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
 endfunction
 
 function! LightlineFugitive()
   try
     if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
       let mark = ''  " edit here for cool mark
       let branch = fugitive#head()
       return branch !=# '' ? mark.branch : ''
     endif
   catch
   endtry
   return ''
 endfunction
 
 function! LightlineFileformat()
   return winwidth(0) > 70 ? &fileformat : ''
 endfunction
 
 function! LightlineFiletype()
   return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
 endfunction
 
 function! LightlineFileencoding()
   return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
 endfunction
 
 function! LightlineMode()
   let fname = expand('%:t')
   return fname == '__Tagbar__' ? 'Tagbar' :
         \ fname == 'ControlP' ? 'CtrlP' :
         \ fname == '__Gundo__' ? 'Gundo' :
         \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
         \ fname =~ 'NERD_tree' ? 'NERDTree' :
         \ &ft == 'unite' ? 'Unite' :
         \ &ft == 'vimfiler' ? 'VimFiler' :
         \ &ft == 'vimshell' ? 'VimShell' :
         \ winwidth(0) > 60 ? lightline#mode() : ''
 endfunction
 
 function! CtrlPMark()
   if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
     call lightline#link('iR'[g:lightline.ctrlp_regex])
     return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
           \ , g:lightline.ctrlp_next], 0)
   else
     return ''
   endif
 endfunction
 
 let g:ctrlp_status_func = {
   \ 'main': 'CtrlPStatusFunc_1',
   \ 'prog': 'CtrlPStatusFunc_2',
   \ }
 
 function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
   let g:lightline.ctrlp_regex = a:regex
   let g:lightline.ctrlp_prev = a:prev
   let g:lightline.ctrlp_item = a:item
   let g:lightline.ctrlp_next = a:next
   return lightline#statusline(0)
 endfunction
 
 function! CtrlPStatusFunc_2(str)
   return lightline#statusline(0)
 endfunction
 
 let g:tagbar_status_func = 'TagbarStatusFunc'
 
 function! TagbarStatusFunc(current, sort, fname, ...) abort
     let g:lightline.fname = a:fname
   return lightline#statusline(0)
 endfunction
 
 augroup AutoSyntastic
   autocmd!
   autocmd BufWritePost *.c,*.cpp call s:syntastic()
 augroup END
 function! s:syntastic()
   SyntasticCheck
   call lightline#update()
 endfunction
 
 let g:unite_force_overwrite_statusline = 0
 let g:vimfiler_force_overwrite_statusline = 0


 " git 
 NeoBundle 'tpope/vim-fugitive' 
 " Statuslineの設定
 set laststatus=2
 set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ \[ENC=%{&fileencoding}]%P 


 "  php用
 " ---------------------------------------
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'AndrewRadev/splitjoin.vim'
 NeoBundle 'osyo-manga/vim-watchdogs'

 " オートコンプリート
 NeoBundle 'Shougo/neocomplete.vim'

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
     \ 'php' : $HOME.'/.vim/dictionary/php.dict',
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
 function! s:my_cr_function()
   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
   " For no inserting <CR> key.
   "return pumvisible() ? "\<C-y>" : "\<CR>"
 endfunction
 " <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
 " <C-h>, <BS>: close popup and delete backword char.
 inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
 " Close popup by <Space>.
 "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
 
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
 
 " Enable heavy omni completion.
 if !exists('g:neocomplete#sources#omni#input_patterns')
   let g:neocomplete#sources#omni#input_patterns = {}
 endif
 "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
 "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
 "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
 
 " For perlomni.vim setting.
 " https://github.com/c9s/perlomni.vim
 let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

 autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dictionary/php.dict filetype=php

 " スニペット
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'Shougo/neosnippet'
 " Plugin key-mappings.
 imap <C-k>     <Plug>(neosnippet_expand_or_jump)
 smap <C-k>     <Plug>(neosnippet_expand_or_jump)
 xmap <C-k>     <Plug>(neosnippet_expand_target)
  
 " SuperTab like snippets behavior.
 imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: pumvisible() ? "\<C-n>" : "\<TAB>"
 smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)"
 \: "\<TAB>"
  
 " For snippet_complete marker.
 if has('conceal')
   set conceallevel=2 concealcursor=i
 endif


 "vim-php-cs-fixer コード規約チェック
 NeoBundle 'stephpy/vim-php-cs-fixer'
 " If php-cs-fixer is in $PATH, you don't need to define line below
 " let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
 let g:php_cs_fixer_level = "symfony"              " which level ?
 let g:php_cs_fixer_config = "default"             " configuration
 "let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
 let g:php_cs_fixer_php_path = "php"               " Path to PHP
 " If you want to define specific fixers:
 "let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
 let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
 let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option

 "laravel blade 
 NeoBundle 'jwalton512/vim-blade'

 "namespace 
 NeoBundle 'arnaud-lb/vim-php-namespace'


 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck





"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent 

"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/vimbackup

"クリップボードをWindowsと連携する
set clipboard=unnamed

"vi互換をオフする
set nocompatible

"スワップファイル用のディレクトリを指定する
set directory=$HOME/vimbackup

"タブの代わりに空白文字を指定する
set expandtab

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
"set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する


"新しい行を作った時に高度な自動インデントを行う
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

"unityの補完登録
autocmd Filetype javascript :set dictionary = /dict/unity.dict

" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>



"Neo Bundleの設定"

" NeoBundle がインストールされていない時、
        " もしくは、プラグインの初期化に失敗した時の処理
function! s:WithoutBundles()
        colorscheme desert
        " その他の処理
        endfunction

        " NeoBundle よるプラグインのロードと各プラグインの初期化
function! s:LoadBundles()
        " 読み込むプラグインの指定
        NeoBundle 'Shougo/neobundle.vim'
        NeoBundle 'tpope/vim-surround'
        NeoBundle 'vim-scripts/matchparenpp'
        NeoBundle 'tmhedberg/matchit'
        NeoBundle 'mattn/emmet-vim'
        NeoBundle 'taichouchou2/surround.vim'
        NeoBundle 'hail2u/vim-css3-syntax'
        NeoBundle 'taichouchou2/html5.vim'
        NeoBundle 'taichouchou2/vim-javascript'
        NeoBundle 'scrooloose/nerdtree'
        NeoBundle 'Shougo/neocomplete.vim'
        NeoBundle 'Shougo/vimproc'

        " ...
        " 読み込んだプラグインの設定
        " ...
        endfunction

        " NeoBundle がインストールされているなら LoadBundles() を呼び出す
        " そうでないなら WithoutBundles() を呼び出す
function! s:InitNeoBundle()
        if isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        filetype plugin indent off
        if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim/
        endif
        try
        call neobundle#rc(expand('~/.vim/bundle/'))
call s:LoadBundles()
        catch
call s:WithoutBundles()
        endtry 
        else
call s:WithoutBundles()
        endif

        filetype indent plugin on
        syntax on
        endfunction

call s:InitNeoBundle()


"surroundの設定"
let g:user_emmet_mode = 'iv'
let g:user_emmet_leader_key = '<C-Y>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
                        \ 'lang' : 'ja',
                        \ 'html' : {
                        \   'filters' : 'html',
                        \ },
                        \ 'css' : {
                        \   'filters' : 'fc',
                        \ },
                        \ 'php' : {
                        \   'extends' : 'html',
                        \   'filters' : 'html',
                        \ },
                        \}
augroup EmmitVim
        autocmd!
        autocmd FileType * let g:user_emmet_settings.indentation = '               '[:&tabstop]
augroup END

"html5.vimの設定"
yn keyword htmlTagName contained article aside audio bb canvas command
syn keyword htmlTagName contained datalist details dialog embed figure
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time
syn keyword htmlTagName contained source figcaption
syn keyword htmlArg contained autofocus autocomplete placeholder min max
syn keyword htmlArg contained contenteditable contextmenu draggable hidden
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget
syn keyword htmlArg contained formaction formenctype formmethod
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"



"neocompleteの設定

if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
      \ 'depends' : 'Shougo/vimproc',
          \ 'autoload' : { 'insert' : 1,}
              \ }
endif

let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'

"vimproc

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }}}


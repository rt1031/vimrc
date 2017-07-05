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
"set expandtab

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
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する


"新しい行を作った時に高度な自動インデントを行う
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

"deleteキー使えるようにしたい
set backspace=indent,eol,start


""""""""filetype""""""""""
autocmd BufRead,BufNewFile *.vue setfiletype html

""""""""""""""""""""""""""


"nerdtreeで行番号を表示さす
let NERDTreeShowLineNumbers=1

"vim-indent-guideをオンにする
let g:indent_guides_enable_on_vim_startup = 1

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

"ヤンクを消えないようにする
noremap pp "0p

"％％で%hと同じ動きにする
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' : '%%'))

"unityの補完登録
autocmd Filetype javascript :set dictionary = /dict/unity.dict

" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

"エスケープの代用
inoremap jj <esc>

"保存をcontorl-ssでできる
nnoremap <Plug>(save) :<C-u>call Save()<CR>
map ;;  <Plug>(save)

"ノーマルモードで;を打ったらコマンドモードに入る
nnoremap ; :

"保存する関数
function! Save()
	echo "wei"
	  :w!
endfunction

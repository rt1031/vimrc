"---------------------------
" Start Dein Settings.
"---------------------------
" bundleで管理するディレクトリを指定

if &compatible
    set nocompatible
  endif
  set runtimepath+=/Users/ryusei/.vim/dein/dein.vim/


  call dein#begin(expand('~/.vim/dein'))
  
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet')
  "補完機能の追加
  call dein#add('Shougo/neocomplete.vim')

  "NERDtreeを追加
  call dein#add('scrooloose/nerdtree')

  "Uniteを追加
  call dein#add('shougo/unite.vim')

  "emmet-vimを追加
  call dein#add('mattn/emmet-vim')

  "EditorConfigを追加
  call dein#add('editorconfig/editorconfig-vim')

  "srround.vimを追加
  call dein#add('taichouchou2/surround.vim')
  
  "vim-browsereload-macを追加
  call dein#add('tell-k/vim-browsereload-mac')

  "vue-vimを追加
  call dein#add('posva/vim-vue')

  "indentを見える化
  call dein#add('nathanaelkane/vim-indent-guides')
    
  "選択範囲をコメントする
  call dein#add('hrp/enhancedcommentify')

  "括弧が閉じてなかったらハイライト
  call dein#add('vim-scripts/Highlight-UnMatched-Brackets')
  
  " (中略)
  
  call dein#end
"-------------------------
" End Dein Settings.
"-------------------------)))

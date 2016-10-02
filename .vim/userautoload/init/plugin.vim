"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
  
  " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'
  
  "補完機能の追加
  NeoBundle 'Shougo/neocomplete.vim'

  "NERDtreeを追加
  NeoBundle 'scrooloose/nerdtree' 

  "Uniteを追加
  NewBundle 'shougo/unite.vim'

  "emmet-vimを追加
  NeoBundle 'mattn/emmet-vim'

  "EditorConfigを追加
  NeoBundle 'editorconfig/editorconfig-vim'

  "srround.vimを追加
 " NeoBundle 'taichouchou2/surround.vim'
  
  "vim-browsereload-macを追加
  NeoBundle 'tell-k/vim-browsereload-mac'
    
    call neobundle#end()
     
     " Required:
     filetype plugin indent on
      
      " 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
      " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
      NeoBundleCheck
       
       "-------------------------
       " End Neobundle Settings.
       "-------------------------)))

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
  
  " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'
  
  "NERDtreeを追加
  NeoBundle 'scrooloose/nerdtree' 

   " 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
    
    call neobundle#end()
     
     " Required:
     filetype plugin indent on
      
      " 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
      " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
      NeoBundleCheck
       
       "-------------------------
       " End Neobundle Settings.
       "-------------------------)))

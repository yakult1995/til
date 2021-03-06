set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/tetsuya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/tetsuya/.cache/dein')
  call dein#begin('/Users/tetsuya/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/tetsuya/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
   " プラグインリストを収めた TOML ファイル
   " 予め TOML ファイル（後述）を用意しておく
   let s:toml_dir  = $HOME . '/.config/nvim/dein/toml' 
   let s:toml      = s:toml_dir . '/dein.toml'
   let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

   " TOML を読み込み、キャッシュしておく
   call dein#load_toml(s:toml,      {'lazy': 0})
   call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ervandew/supertab'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'vim-scripts/DeleteTrailingWhitespace'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'rking/pry-de', {'rtp': 'vim/'}
NeoBundle 'tpope/vim-surround'
NeoBundle 'dag/vim-fish'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'rhysd/vim-crystal'
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kchmck/vim-coffee-script'

if executable('ag')
  NeoBundle 'rking/ag.vim'
elseif executable('ack-grep')
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
  Bundle 'mileszs/ack.vim'
elseif executable('ack')
  NeoBundle 'mileszs/ack.vim'
endif

NeoBundle 'fatih/vim-go'
NeoBundle 'crahles/vim-gometalinter.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-rails'
NeoBundle 'evanmiller/nginx-vim-syntax'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

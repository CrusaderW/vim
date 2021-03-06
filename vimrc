" vim: nowrap fdm=marker
"  ---------------------------------------------------------------------------
"  NeoBundle
"  ---------------------------------------------------------------------------
silent! runtime bundles.vim

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on
let mapleader = ","
let g:mapleader = ","
set modelines=0
set history=10000
set nobackup
set nowritebackup
set noswapfile
syntax enable
set autoread
set shell=/bin/sh
set backupdir=~/tmp,/tmp
set undodir=~/.vim/.tmp,~/tmp,~/.tmp,/tmp
set hlsearch

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set relativenumber
set undofile

" Auto adjust window sizes when they become current
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set splitbelow splitright
let g:airline#extensions#branch#enabled=1

"if has('mouse')
"  set mouse=a
"endif

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set sw=2
set tabstop=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
  set colorcolumn=80
endif

" Removes tailing whitespaces on save (I guess)
autocmd BufWritePre * :%s/\s\+$//e|noh

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
vnoremap <C-c> "+y

"  ---------------------------------------------------------------------------
"  Custom Keymappings
"  ---------------------------------------------------------------------------

nnoremap <C-p> :NERDTreeToggle<CR>

"  ---------------------------------------------------------------------------
"  Syntastic
"  ---------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = '--rcfile=/home/christianwirth/.pylintrc'
let g:syntastic_c_checkers = ['gcc', 'make']
let g:syntastic_c_compiler = 'make'
let g:ycm_show_diagnostics_ui = 0

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------
"
runtime! plugin_cfg/*.vim

"  ---------------------------------------------------------------------------
"  Python Config
"  ---------------------------------------------------------------------------
"
augroup vimrc_autocmds
	autocmd!
		" highlight characters past column 120
        autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
        autocmd FileType python match Excess /\%120v.*/
        autocmd FileType python set nowrap
		autocmd FileType python setlocal sw=4
        augroup END

"  ---------------------------------------------------------------------------
"  Colors
"  ---------------------------------------------------------------------------
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux"
  set t_Co=256
endif
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Microsoft"
  set t_Co=256
  set rtp+=/usr/share/powerline/bindings/vim/
endif
set background=dark
colorscheme jellybeans

"  ---------------------------------------------------------------------------
"  Spellchecking
"  ---------------------------------------------------------------------------
au BufNewFile,BufRead,BufEnter   *.tex     setlocal spell    spelllang=en,de
au BufNewFile,BufRead,BufEnter   *.wiki    setlocal spell    spelllang=en,de
au BufNewFile,BufRead,BufEnter   *.md      setlocal spell    spelllang=en,de
au BufNewFile,BufRead,BufEnter   *.txt     setlocal spell    spelllang=en,de
au BufNewFile,BufRead,BufEnter   README    setlocal spell    spelllang=en,de

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'kronn/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'kana/vim-scratch'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'ornicar/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'chrismetcalf/vim-yankring'
Bundle 'cschlueter/vim-mustang'
Bundle 'betamike/cocoa.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'timwraight/Vim-Noweb'
Bundle 'timwraight/vim-markdown'

" Non github
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=1000		" keep 1000 lines of command line history
set undolevels=1000		" allow 1000 levels of undo
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set hlsearch      " highlight search terms
set incsearch		" do incremental searching
set showmatch  " briefly jump to matching pair characters when typed
set wrap  " Line wrapping on
set linebreak " wrap words instead of characters
set textwidth=79
set formatoptions=qrnl
set colorcolumn=80
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will g
set hidden
set autoindent		" always set autoindenting on
set copyindent		" copy the previous indentation on autoindenting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set modelines=0 " prevents a particular security exploit from occurring
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set ignorecase
set smartcase  " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set wildignore=*.swp
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
set scrolloff=3  " makes vim keep 3 lines of context on screen above/below cursor
set wildmode=list:longest 
set cursorline 
set ttyfast " speeds up chracter drawing,
set ruler 
set backspace=indent,eol,start 
set laststatus=2 " last window will always have a status line
set gdefault " by default, all subsitutions happen globally (no need to put /g)
set formatprg=par\ -w79" use Par (http://www.nicemice.net/par/) to format paragraphs
colorscheme mustang
set undofile  " Allows undo for closed files. only for Vim 7,3
set undodir=~/.vim/tmp/undo
syntax on

" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%<\ %n:%f\ %{fugitive#statusline()}\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%) 


" make vim use normal regexes for searching
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %

" Make j and k move up and down one screen line, instead of one file line
nnoremap j gj
nnoremap k gk

" Use space to center the screen on the currently highlighted line.
nnoremap <space> zz 
" Since in Vim’s default configuration, almost every key is already mapped to
" a command, there needs to be some sort of standard “free” key where you can
" place custom mappings under. This is called the “mapleader”, and can be
" defined like this:
let mapleader=","

nnoremap <silent> <leader>f :NERDTreeToggle<CR>
" Rqeuires Scratch plugin: 
nnoremap <silent> <leader>s :Sscratch<CR>
inoremap <silent> <leader>b <C-^>
nnoremap <silent> <leader>b <C-^>
nnoremap <silent> <leader>l :set number!<CR>
nnoremap <silent> <leader>y :YRToggle<CR>
inoremap <silent> <leader>y <ESC>:YRToggle<CR>
nnoremap <leader>a :Ack 
nnoremap <silent> <leader>/ :noh<CR>
" Enclose current word in single quotes
nnoremap <leader>' ysw'
" Split windows easily, and switch immediately
nnoremap <leader>p <C-w>v<C-w>l 

" Enable some jeyboard shortcuts for MiniBufExplorer:
let g:miniBufExplMapWindowNavVim = 1


" Save us some keystrokes:
nnoremap \ ;
nnoremap ; :
" Use Q for formatting the current paragraph (or selection)
vnoremap Q gq
nnoremap Q gqap
" This lets you use w!! to do that after you opened the file already:
cnoremap w!! w !sudo tee % >/dev/null
" Fold current tag
nnoremap <leader>ft Vatzf

let g:sparkupExecuteMapping = '<d-e>'
let g:sparkupNextMapping = '<d-r>'
let g:sparkupArgs = '--no-last-newline --post-tag-guides'

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Save when focus is lost
au FocusLost * :wa

" Filetype plugins
filetype plugin indent on
" Some older versions of Vim can't do autocmd, so to remain compatible
if has('autocmd')
  " Set php files to be html as well
  autocmd FileType php set ft=php.html
  autocmd filetype html,xml set listchars-=tab:>.
endif

let g:tex_flavor = "context"
au BufNewFile,BufRead *.pkg set filetype=xml

au BufRead,BufNewFile *.nw    set filetype=noweb 
au BufRead,BufNewFile *.tao    set filetype=php.html
au BufRead,BufNewFile *.tpl    set filetype=smarty.html

let noweb_backend = "tex" 
let noweb_language = "lisp" 
let noweb_fold_code = 1 

au BufRead,BufNewFile *.text    set filetype=markdown
au BufRead,BufNewFile *.phn    set filetype=lisp

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen

autocmd filetype scheme nnoremap <silent> <C-c> :! csc %; BNAME=`basename % .scm`; chmod +x $BNAME; ./$BNAME; echo "\n" <CR>


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
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'bkad/CamelCaseMotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'betamike/cocoa.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'timwraight/Vim-Noweb'
Bundle 'timwraight/vim-markdown'
Bundle 'veselosky/vim-rst'
Bundle 'nvie/vim-rst-tables'
Bundle 'vim-scripts/django.vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'sjl/gundo.vim'
Bundle 'laurentb/vim-cute-php'
Bundle 'wincent/Command-T'

filetype plugin indent on     " required!

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=1000		" keep 1000 lines of command line history
set undolevels=1000		" allow 1000 levels of undo
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set ofu=syntaxcomplete#Complete " Turn on OmniComplete
set completeopt=longest,menuone " Complete as much as possible of the word, 
" and show menu even if there's only one match
set hlsearch      " highlight search terms
set incsearch		" do incremental searching
set showmatch  " briefly jump to matching pair characters when typed
set wrap  " Line wrapping on
set linebreak " wrap words instead of characters
set textwidth=79
set formatoptions=qrnl
"set colorcolumn=80
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
set undofile  " Allows undo for closed files. only for Vim 7,3
set undodir=~/.vim/tmp/undo
set autoread 
syntax enable
colorscheme solarized
set background=dark

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

" Since in Vim’s default configuration, almost every key is already mapped to
" a command, there needs to be some sort of standard “free” key where you can
" place custom mappings under. This is called the “mapleader”, and can be
" defined like this:
let mapleader=","

inoremap <silent> kj <ESC>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>o :NERDTreeFind<CR>
" Requires Scratch plugin: 
nnoremap <silent> <leader>s :Sscratch<CR>
inoremap <silent> <leader>b <C-^>
nnoremap <silent> <leader>b <C-^>
nnoremap <silent> <leader>l :set number!<CR>
nnoremap <silent> <leader>y :YRShow<CR>
inoremap <silent> <leader>y <ESC>:YRShow<CR>
nnoremap <leader>a :Ack 
nnoremap <leader><leader>t :TagbarToggle<CR>

nnoremap <silent> <leader>/ :noh<CR>
" Enclose current word in single quotes
nnoremap <leader>' ysw'
" Split windows easily, and switch immediately
nnoremap <leader>p <C-w>v<C-w>l

" Fugitive Mappings
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gb  <C-w>h:bd<cr>
nnoremap <leader>gr :Gread<CR>

" Let space skip through the jump list
nnoremap <space> <C-o>
" and shift-space skip backwards through it
nnoremap <S-space> <Tab>
" Set shift-return to skip to tag
nnoremap <S-CR> <C-]>

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

" Terminal-like movement between splits
nnoremap <D-M-left> <C-w>h
nnoremap <D-M-right> <C-w>l
nnoremap <D-M-down> <C-w>j
nnoremap <D-M-up> <C-k>j

let g:sparkupExecuteMapping = '<d-e>'
let g:sparkupNextMapping = '<d-r>'
let g:sparkupArgs = '--no-last-newline --post-tag-guides'

" Gundo settings
nnoremap <leader>u :GundoToggle<CR>
let g:gundo_right = 1

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Save when focus is lost
au FocusLost * :wa

" Some older versions of Vim can't do autocmd, so to remain compatible
if has('autocmd')
  " Set php files to be html as well
  autocmd FileType php set ft=php.html
  autocmd FileType php nmap <leader><leader>l :w!<CR>:! php -l % <CR>
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

autocmd filetype scheme nnoremap <silent> <C-c> :! csc %; BNAME=`basename % .scm`; chmod +x $BNAME; ./$BNAME; echo "\n" <CR>
autocmd filetype rst nnoremap <silent> <leader>gd :! cd docs; make html; cd ..<CR>
"autocmd filetype rst nnoremap <silent> <leader>gc :! mtxrun --script rst --if=% --of=`dirname %`/`basename % .rst`.tex; context `dirname %`/`basename % .rst`.tex; open `dirname %`/`basename % .rst`.pdf<CR>

"------ full vim ------"
set nocompatible

"------ pathogen ------"
filetype off
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
filetype plugin indent on

"------ map leader ------"
noremap , \
let mapleader = ","

"------ Color scheme ------"
set t_Co=256
set background=dark
colorscheme slate
if has("gui_running")
    colorscheme slate
endif

"------ Backup ------"
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
"set viminfo='100,f1
"
"------ Undo ------"
set undofile
set undodir=$HOME/.vim/.undo

"------ general------"
set colorcolumn=100           " show a right margin column
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showmatch
set showcmd
set smarttab                  " tab and backspace are smart
set scrolloff=3               " keep at least 5 lines above/below
set sidescrolloff=3           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
set wildmode=longest:full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2
set cul                       " highlight current line
set foldmethod=indent
set foldlevel=99
set listchars=tab:>-,trail:·,eol:$
set spelllang=en,fr           " set spell check language

"Automatically cd into the directory that the file is in:"
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
set autochdir

" jump to the last position when reopening a file "
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"------ Indents and tabs ------"
set autoindent                  " set the cursor at same indent as line above
set nosmartindent                 " try to be smart about indenting (C-style)
set expandtab                   " expand <Tab>s with spaces; death to tabs!
set shiftwidth=4                " spaces for each step of (auto)indent
set softtabstop=4               " set virtual tab stop (compat for 8-wide tabs)
set tabstop=8                   " for proper display of files with tabs
set shiftround                  " always round indents to multiple of shiftwidth
set copyindent                  " use existing indents for new indents
set preserveindent              " save as much indent structure as possible

"------ Searching ------"
set incsearch                 " incremental search
set ignorecase                " search ignoring case
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

"------ Spelling ------"
"if v:version >= 700
  " Enable spell check for text files
"  autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
"endif

"------ Mapping------"
" prevent accidental striking of F1 key
map <F1> <ESC>
imap <F1> <ESC>
" clear highlight
nnoremap <leader><space> :noh<cr>      " Remove highlight
map <leader>, <C-W>w                   " fast window switching
map <leader>. :b#<cr>                  " cycle between buffers
map <leader>cd :cd %:p:h<cr>           " change directory to current buffer
map <leader>td <Plug>TaskList
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
nmap <leader>a <Esc>:Ack!
nnoremap ' `
nnoremap ` '
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
map <leader>v <Plug>TaskList
nmap <silent> <leader>s :set nolist!<CR>
let g:ackprg="ack-grep -H --nocolor --nogroup --column"             

"------ Git ------"
" %{fugitive#statusline()}
"
"------ Python ------"
let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

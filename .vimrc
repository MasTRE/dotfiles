" General Option {{{
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set nocp

set t_Co=256

" set settings by filetype
filetype plugin on

" always want clipboard selection
set clipboard=unnamed
set autoindent " always set autoindenting on

syntax on
" OS X needs either a good scheme or set background=dark
colorscheme torte

"set textwidth=78
" also see http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" a faint grey (gray?) color, not too insistent
highlight ColorColumn term=reverse ctermbg=233 guibg=#202020
" put the marker(s) at 'textwidth+2' (and at position 120)
"set colorcolumn=+2,120
set colorcolumn=80,120
" if we're called as '*view', or on a console, turn off the colorcolumn
if v:progname =~? 'view' || &term =~? 'linux|console'
    set colorcolumn=
endif

" backup stuff
set backup     " keep a backup file
set backupdir=~/.vim/backup
"au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'
au BufWritePre * let &bex = '-' . strftime("%y%m%d%H%M%S") . '.vimbackup'

" set number     " line numbers

" Set your grep program to alway generate a file-name.
set grepprg=grep\ -nH\ $*
set formatoptions=tcqor " start new comments when hitting o or O or <enter>
set shortmess=atI
set history=500    
set ruler          
set hidden
set showcmd       
set showmatch    
set hlsearch
set incsearch   
set nostartofline
set suffixes=~,.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar,.o " those files are ignored on completion

set tabstop=4
set expandtab
set shiftwidth=4
set ignorecase
set smartcase
" set wrap

set iskeyword=@,48-57,_,128-167,224-235

set nocursorline

set backspace=indent,eol,start 
set comments=b:#,:%,n:>

set viminfo=%,'50,\"100,:500,n~/.viminfo

set pastetoggle=<leader>p

" display current time on statusline
set laststatus=2    "always want status line
set statusline=%<%F%h%m%r%h%w\ %y\ %{&ff}\ %=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
"set statusline=%<%f\ %y%h%m%r%=%l,%c\ \ \ \ %P\ %{strftime('%H:%M')}
"set statusline=%<%f%h%m%r%=%l,%c\ \ \ \ %P\ %{strftime('%b\ %d\ %H:%M')}
"set statusline=[%n]\ %f\ %(\ %M%R%H)%)\=Pos=<%l\,%c%V>\ %P

" end of general options}}}

set encoding=utf8
" put comments at proper indentation, not at beginning of line
inoremap # X#
fixdel

nnoremap <silent><F3> :set number!<CR>
nnoremap <silent><F6> :set list!<CR>

" maps to quickly find unicode characters within the document 
map ,uni :match Error /[^ -~]/<CR> 
map ,uni2 /[^ -~]<CR> 

" fix vim key bindings, from http://stackoverflow.com/questions/15445481/mapping-arrow-keys-when-running-tmux
if &term =~ '^screen' && exists('$TMUX')
    "set mouse+=a
    " tmux knows the extended mouse mode
    "set ttymouse=xterm2
    " tmux will send xterm-style keys when xterm-keys is on
"    execute "set <xUp>=\e[1;*A"
"    execute "set <xDown>=\e[1;*B"
"    execute "set <xRight>=\e[1;*C"
"    execute "set <xLeft>=\e[1;*D"
"    execute "set <xHome>=\e[1;*H"
"    execute "set <xEnd>=\e[1;*F"
"    execute "set <Insert>=\e[2;*~"
"    execute "set <Delete>=\e[3;*~"
"    execute "set <PageUp>=\e[5;*~"
"    execute "set <PageDown>=\e[6;*~"
"    execute "set <xF1>=\e[1;*P"
"    execute "set <xF2>=\e[1;*Q"
"    execute "set <xF3>=\e[1;*R"
"    execute "set <xF4>=\e[1;*S"
"    execute "set <F5>=\e[15;*~"
"    execute "set <F6>=\e[17;*~"
"    execute "set <F7>=\e[18;*~"
"    execute "set <F8>=\e[19;*~"
"    execute "set <F9>=\e[20;*~"
"    execute "set <F10>=\e[21;*~"
"    execute "set <F11>=\e[23;*~"
"    execute "set <F12>=\e[24;*~"
endif

"" This is for some reason needed when vim is running in tmux in iTerm2 with iTerm2 integration ON (tmux -CC)
"" doesn't seem to hurt anything in any other cases, so there's no real prob with it
" Fix home/end key in all modes
map <esc>OH <home>
cmap <esc>OH <home>
imap <esc>OH <home>
map <esc>OF <end>
cmap <esc>OF <end>
imap <esc>OF <end>


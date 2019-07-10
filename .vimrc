"///   .vimrc   ///"
"///   tested in vim 8.0 and default Ubuntu terminal   ///"



"///   core settings and enabling Pathogen   ///"
set nocompatible " break compatibility with old vi. if ~/.vimrc exists, vim will use nocompatible mode anyway

filetype off
"///   pathogen   ///"
call pathogen#infect()
execute pathogen#helptags()

"The two last lines have nothing to do with pathogen but, if you have them in
"your ~/.vimrc, be sure to put them after the pathogen line. If you don’t
"have those lines, well… add them! What good is Vim without syntax
"highlighting and filetype detection?

filetype plugin indent on
syntax on		" default vim syntax highlighting
"syntax enable	" user-defined syntax highlighting



"///   default settings   ///"
set nowrap "don't wrap lines
set number "show line numbers
set nolist " don't show white spaces

set nobackup 		" don't create backup files
set nowritebackup	" up
set noswapfile		" neither swap files

set showcmd		"show commands like 'dd' while writing them
set showmode		"show insert/replace/visual mode. apparantly it's default behaviour anyway so fuck it

" tested not thouroughly but seem to works fine:
set shiftwidth=2	"indenting is 4 spaces
"set autoindent	"turns it on
"set smartindent	"does the right thing (mostly) in programs
"set cindent		"stricter rules for C programs
set history=1000		"remember 1000 commands and search history
"set clipboard=unnamed	"change default behaviour of clipboard, so that text copied outside of vim could be pasted inside
set t_SH="fix for the bug (some signs when launching vim)



"///   tabs   ///"
set tabstop=7				"set tab width
"set expandtab			"tabs are expanded to spaces
"shift + Tab inserts normal tab - useful for Makefiles (!)
"inoremap <S-Tab> <C-V><Tab>



"///   keyboard shortcuts/mappings   ///"
" Enter     enter insert mode and start new line:
map <Enter> o
" :q! works also in insert mode
inoremap :q! <Esc>:q!<cr> " :q! works also in insert mode
"///   leader keys   ///"
let mapleader = "\<Space>"			" <space> is a leader key
noremap <leader>w :w<cr>
noremap <leader>e :e $MYVIMRC<cr>		" <space> + e edits ~/.vimrc
noremap <leader>q :set wrap!<cr>
noremap <leader>n :set number!<cr>
noremap <leader><leader> :set list! <cr>	" toggle showing white spaces, use examples below:
"set listchars=tab:>.,extends:#
"set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set listchars=tab:>.,trail:&,extends:#

"///   tabs work like in webbrowsers ///"
map <C-T> :tabnew<CR>
"map <C-w> :tabclose<CR>	" must be commented out because changing splits won't work
" in ideal world where ctrl works well with tab in vim:
"map <C-Tab> <ESC>gt
"map <S-Tab> <ESC>gT
" if terminal don't work with ctrl and shift, use commands below:
map <leader><Tab> gt
map <leader><S-Tab> gT

" ctrl + h/j/k/l to resize splits:
map <C-h> :vertical resize -3<cr>
map <C-l> :vertical resize +3<cr>
map <C-k> :resize -3<cr>
map <C-j> :resize +3<cr>
"ctrl + arrows to walk splits:
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l

" without it you need to press it 2 times for the same effect. only in visual mode "
noremap > >gv                          "shift > indents block of code without deselecting it
noremap < <gv                          "shift < outdents (?)



"///   searching   ///"
set hlsearch							"highlights all search results
set incsearch							"incremental search. starting to search before pressing <cr>. better for time efficiency
"searching is case insensitive unless there's >= 1 uppercase char in text:
set ignorecase
set smartcase
nmap <silent> // :nohlsearch<CR> " double slash deletes search highlight



"///   NERDTree   ///"
" ctrl + n  toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
" when vim is opened without args, open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" when vim is opened with directory as an arg, open NERDTree " TODO: set focus to left pane
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" if the only window left open is NERDTree, close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



"/// delete all trailing spaces ///"
function! DeleteTrailingSpaces()
  execute "normal! mzA "
  "Deletes all Trailing spaces"
  %s/\s\+$//g
  execute "normal! `z"
endfunction

autocmd! BufWritePre * call DeleteTrailingSpaces()







" not used for now:
"set colorcolumn=80
"
"nie dziala do konca jak powinno, ale idea fajna. rozminic
"zrodlo: https://www.youtube.com/watch?v=1YeJxrblcmI
"map <F9> :w <CR> :!clear && gcc % <CR>
"map <C-F9> :w <CR> :!clear && gcc % -o %< && ./%< <CR>
"
"set mouse=a"scrolling is better but unables to copy with ctrl+shift+c
"

" set mouse=a" only to be used ironically xDDDDDDDDD

"https://dougblack.io/words/a-good-vimrc.html#colors

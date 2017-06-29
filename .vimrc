"simple random changes
set colorcolumn=80
set number                              "shows line numbers on the right
set hlsearch                            "highlights all search results
set ignorecase                          "case INsensitive search
set incsearch                           "incremental search. starting to search before pressing <cr>. better for time efficiency


set clipboard=unnamed                   "zmiana defaultowego zjebanego zachowania schowka tak by tekst skopiowany np. w przegladarce mozna bylo wkleic do vima"

"I want tabs to work like in webbrowsers
map <C-T> :tabnew<CR>                   "ctrl - T opens new tab
map <C-w> :tabclose<CR>                 "ctrl closes current tab
map <Tab> <ESC>gt<CR>                   "<tab> - go to next tab
map <S-Tab> <ESC>gT<CR>                 "shift - tab - go to previous tab


set tabstop=2                           "tab width = 2
set expandtab                           "whenever you press tab, spaces are inserted. ctrl-V-tab still works as a tab

"shortcuts for editing and sourcing ~/.vimrc. todo: change for better shortcuts and add saving just before sourcing
nnoremap gev :e $MYVIMRC<cr>



"leader key
let mapleader = "\<Space>"              "<Space" is a leader key
noremap <leader>w :wa<cr>               "w writes a file
noremap <leader>edit :e $MYVIMRC<cr>    "<leader> + "edit" to edit a .vimrc file
noremap <leader>src :so $MYVIMRC<cr>    "<leader> + "src" to source a .vimrc file

"without it you need to press it 2 times for the same effect. only in visual mode
"noremap > >gv                          "shift > indents block of code without deselecting it
"noremap < <gv                          "shift < outdents (?)

"mniej raka w zyciu. vim nie tworzy wszedzie plikow swapow, itp.
set nobackup
set nowritebackup
set noswapfile


"tested pobieznie and works quite fine"
set shiftwidth=2  " indenting is 4 spaces
set autoindent    " turns it on
set smartindent   " does the right thing (mostly) in programs
set cindent       " stricter rules for C programs


nnoremap <leader>t :w!<cr>:e %:h<cr>
nnoremap <leader><space> :vsplit<cr>    "splitting
nnoremap <leader<enter> :split<cr>      "splitting



"nie dziala do konca jak powinno, ale idea fajna. rozminic
"zrodlo: https://www.youtube.com/watch?v=1YeJxrblcmI
map <F9> :w <CR> :!clear && gcc % <CR>
map <C-F9> :w <CR> :!clear && gcc % -o %< && ./%< <CR>




"todo:
"think of shortcut to replace <C-W> (moving to other splits)
"why <C-T> no only opens new tab but also splits the view? default `layouts`?


"garbage
"set showcmd
"set showmode                            "show insert/replace/visual mode. apparantly it's default behaviour anyway so fuck it


set t_SH="fix for the bug (some signs when launching vim)

""" simple random changes """
set number								"shows line numbers on the right
set ignorecase							"case INsensitive search
set history=1000						"remember 1000 commands and search history
set nowrap								"don't wrap lines
set clipboard=unnamed					"zmiana defaultowego zjebanego zachowania schowka tak by tekst skopiowany np. w przegladarce mozna bylo wkleic do vima"

""" searching """
set hlsearch							"highlights all search results
set incsearch							"incremental search. starting to search before pressing <cr>. better for time efficiency
nmap <silent> // :nohlsearch<CR>		"2 slashes make highlighted search results disappear
"those 2 below make searching case insensitive unless there's >= 1 uppercase sign
set ignorecase
set smartcase

""" shortcuts for editing and sourcing ~/.vimrc. todo: change for better shortcuts and add saving just before sourcing """
nnoremap gev :e $MYVIMRC<cr>


""" leader key and other keys """
let mapleader = "\<Space>"				"<Space>" is a leader key
noremap <leader>w :wa<cr>				"w writes a file
noremap <leader>edit :e $MYVIMRC<cr>	"<leader> + "edit" to edit a .vimrc file
noremap <leader>src :so $MYVIMRC<cr>	"<leader> + "src" to source a .vimrc file
nnoremap <leader>t :w!<cr>:e %:h<cr>
nnoremap <leader><space> :vsplit<cr>	"splitting
nnoremap <leader<cr> :split<cr>			"splitting


inoremap :q! <Esc>:q!"easier quitting even in insert mode


""" without it you need to press it 2 times for the same effect. only in visual mode """
noremap > >gv                          "shift > indents block of code without deselecting it
noremap < <gv                          "shift < outdents (?)

""" mniej raka w zyciu. vim nie tworzy wszedzie plikow swapow, itp. """
set nobackup                            "don't create backups
set nowritebackup
set noswapfile"don't use swap file


""" tested pobieznie and works quite fine """
set shiftwidth=2                        "indenting is 4 spaces
set autoindent                          "turns it on
set smartindent                         "does the right thing (mostly) in programs
set cindent                             "stricter rules for C programs


"NOT USED FOR NOW
"set colorcolumn=80
"
"nie dziala do konca jak powinno, ale idea fajna. rozminic
"zrodlo: https://www.youtube.com/watch?v=1YeJxrblcmI
"map <F9> :w <CR> :!clear && gcc % <CR>
"map <C-F9> :w <CR> :!clear && gcc % -o %< && ./%< <CR>
"
"set mouse=a"scrolling is better but unables to copy with ctrl+shift+c
"
"I want tabs to work like in webbrowsers
"map <C-T> :tabnew<CR>                   "ctrl - T opens new tab
"map <C-w> :tabclose<CR>                 "ctrl closes current tab
"map <Tab> <ESC>gt<CR>                   "<tab> - go to next tab
"map <S-Tab> <ESC>gT<CR>                 "shift - tab - go to previous tab
"
"set showcmd
"set showmode                            "show insert/replace/visual mode. apparantly it's default behaviour anyway so fuck it
"set expandtab                           "whenever you press tab, spaces are inserted. ctrl-V-tab still works as a tab


"todo:
"why <C-T> no only opens new tab but also splits the view? default `layouts`?
"
"nie dzialaja, sprawdzic czemu:
"set listchars=trail:&"trailing spaces are shown as "&"
"set listchars=tab:>.,extends:#"non-wrapped lines are shown as "#"
"autocmd filetype html,xml set listchar-=tab:>"rules above are not applied for *.html and *.xml


"tabs:
set tabstop=4				"set tab width
"set expandtab				"tabs are spaces
"inoremap <S-Tab> <C-V><Tab>
"shift + Tab inserts normal tab - useful for Makefiles (!)

"ctrl + h/j/k/l changes through splits
map <C-Left> <C-w>h
map <C-Down> <C-w>j
map <C-Up> <C-w>k
map <C-Right> <C-w>l

map <C-h> :vertical resize -3<cr>
map <C-l> :vertical resize +3<cr>
map <C-k> :resize -3<cr>
map <C-j> :resize +3<cr>

syntax enable

"https://dougblack.io/words/a-good-vimrc.html#colors
"syntax on " enable syntax processing

highlight colorcolumn ctermbg=2		"podswietla na zielono
set colorcolumn=80			"podswietla 80ta kolumne

set number				"pokazuje nry linii po lewej

set showmode				"show insert/replace/visual mode

set showcmd

set hlsearch				"highlights search results
set ignorecase			"case insensitive search
set incsearch				"incremental search

set clipboard=unnamed			"zmiana defaultowego zjebanego zachowania schowka tak by tekst skopiowany np. w przegladarce mozna bylo wkleic do vima

map <C-T> :tabnew<CR>			"ctrl - T opens new tab - like in webbrowsers
map <Tab> <ESC>gt<CR>			"<tab> - go to next tab
map <S-Tab> <ESC>gT<CR>			"shift - tab - go to previous tab

vnoremap > >gv				"shift > indents block of code without deselecting it
vnoremap < <gv				"shift < outdents (?)
vnoremap > >gv

" koment
set tabstop=2
set expandtab					"whenever you press tab, spaces are inserted. ctrl-V-tab still works as a tab

set nobackup				"rak--
set nowritebackup
set noswapfile

nnoremap <leader>t :w!<cr>:e %:h<cr>	"\t otwiera aktualny folder. ctrl o zamyka

"windows compatibility mappings:
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

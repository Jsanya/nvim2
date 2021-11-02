"==================================================================================================
"
" ÁLTALÁNOS BEÁLLÍTÁSOK
" Készítette: Juhász Sándor
" E-mail: juhasz.sanyi@gmail.com
"==================================================================================================


"
"--------------------------------------------------------------------------------------------------
" FÁJLOK KAPCSOLATOS BEÁLLÍTÁSOK:
"--------------------------------------------------------------------------------------------------
" A fájltipus azonosítás kikapcsolása
filetype off
filetype plugin indent on    " szükséges
syntax enable

" Terminál használata esetén
if (has("termguicolors"))
  set termguicolors
endif

" Karakter kódolás utf8
" set fileencoding=utf-8
" scriptencoding utf-8
" set fileformats=unix,mac,dos

" Amire nincs szükségünk
set noswapfile          " nincs swap fájl
set nobackup            " nics backup
set nowritebackup


"-------------------------------------------------------------------------------------------------
" LEADERKEY BEÁLLÍTÁSA
"-------------------------------------------------------------------------------------------------

let g:mapleader = '-'
let g:maploccalleader = ','


"--------------------------------------------------------------------------------------------------
" ABLAKOK, PUFFEREK ÉS TABOK (Fülek) HASZNÁLATÁVAL KAPCSOLATOS BEÁLLÍTÁSOK:
"--------------------------------------------------------------------------------------------------
" Ablak, illetve puffer használattal kapcsolatos beállítások
set signcolumn=yes          " jelző oszlop állandóan legyen látható

" Ablakfelosztás szabályozása
set splitbelow
set splitright

set showcmd                 " leader key használatát kíjelzi

set timeout timeoutlen=500  " billentyűlenyomások közötti várakozás

" Automatically hide buffer with unsaved changes without showing warning
set hidden

" Új függőleges felosztás nyítása, és a fokusz odahelyzése
nnoremap <leader>nv :vsplit<CR>
nnoremap <leader>nfv :vnew<CR>
" Új viszintes felosztás nyítása, és a fokusz odahelyzése
"nnoremap <leader>ns <C-w>v<C-w>j
nnoremap <leader>ns :split<CR>

" A vágólap használatához:
set clipboard+=unnamedplus

" Tabok közötti jobbra-balra lépkedés
nnoremap ó :tabnext<CR>
noremap ü :tabprevious<CR>
" Új tab nyítása:
nnoremap <leader>nt :tabnew<CR>

" Delete buffer completely without messing up window layout
" Törli a buffer anélkül, hogy az ablak elrendezés megváltozna
nnoremap <leader>q :Bwipeout<CR>

" Ablak átméretezés
nnoremap <silent> <M-h> <C-w><
nnoremap <silent> <M-l> <C-w>>
nnoremap <silent> <M-j> <C-W>-
nnoremap <silent> <M-k> <C-W>+

" Ablakok közötti gyors váltás
nnoremap <silent> <M-w><left> <C-w>h
nnoremap <silent> <M-w><right> <C-w>l
noremap <silent> <M-w><down> <C-w>j
nnoremap <silent> <M-w><up> <C-w>k

nnoremap <M-w> :call WinMode() <CR>

"--------------------------------------------------------------------------------------------------
" SZERKESZTÉSSEL KAPCSOLATOS BEÁLLÍTÁSOK:
"--------------------------------------------------------------------------------------------------

" MOZGÁSSAL KAPCSOLTOS DOLGOK:
" Az alábbiakat csak akkor használjuk ha nem akarjuk a kurzor gombokat használni!
" Ez a hjkl megtanulásához jó!
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" A hosszú tört soroknál is jól müködjön
nnoremap j gj
nnoremap k gk

" Az F1 gombot úgy használjuk mint az ESC-et
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Az aktuális fájl mentése
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>i

" Aktuális munkafolyamat ablakainak és puffereinek mentése
nnoremap <leader>s :mksession<CR>

" Létrehoz egy új fájlt a kurzor alatti névvel
:map <leader>nf :e <cfile><cr>

" Ha a focus elkerül a fájlról, akkor mentsen automatikusan
au FocusLost * :wa

" SOROK FORMÁZÁSA:
set wrap
set textwidth=99            " Szöveg szélessége
" set formatoptions+=t
set formatoptions+=qrn1
set colorcolumn=+1

" TABULÁTOROK BEHUZÁSOK
set expandtab               " tab esetén 4 space-t szúr be
set tabstop=4               " show existing tab with 4 spaces width
set softtabstop=4

" LÁTHATATLAN (WHITESPACE ) KARAKTEREK HASZNÁLATA:
set list
set listchars=tab:▸\ ,eol:¬

" BAKSCPACE HELYES HASZNÁLATA:
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set shiftwidth=4            " a behúzás '>' 4 spaces széles lesz

" Sorok mozgatása különböző üzemmódokban:
" Normal mode
nnoremap <A-DOWN> :m+1<CR>==
nnoremap <A-UP> :m-2<CR>==
" Insert mode
inoremap <A-DOWN> <ESC> :m+1<CR>==gi
inoremap <A-UP> <ESC> :m-2<CR>==gi
" Visual mode
" A kijelölt sorokat mozgatja
vnoremap <A-DOWN> :m'>+1<CR>gv=gv
vnoremap <A-UP> :m'<-2<CR>gv=gv
" A kijelül rész tudjuk jobbra-balra mozgatni
xnoremap < <gv
xnoremap > >gv



" KERESÉSSEL, CSERÉVEL KAPCSOLATOS DOLGOK
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase               " kis, nagy betük okos használata kereséskot
set gdefault                " a \g kapcsolót a csere parancsnál nem kell a végén kitenni
                            " csak akkor ha az aktuális sorra vonatkozik!
set incsearch               " növekményes keresés
set hlsearch                " kereseés eredményének kiemelése
set showmatch               " találat megjelenítése"

" Kikapcsolja a keresés találatainak kiemelését
nnoremap <leader><space> :nohlsearch<CR>



" SORSZÁMOZÁS
set number                  " Sorszámozás megjelenítése
" Sorszámozás autmatikus be, illetve kikapcsolása:
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END




"--------------------------------------------------------------------------------------------------
" FELHASZNÁLÓI FELÜLET, STÁTUSZSOR
"--------------------------------------------------------------------------------------------------

" Mindig mutassa a pozíciót
set ruler                   " Kurzorpozicíó megjelenítése
set cmdheight=2             " Parancssor magassága

" Search all subfolders
set path+=**

" Display matching files on tab complete
set wildmenu

" Ignore node_moules and images from search results
set wildignore+=**/node_modules/**,**/dist/**,**_site/**,*.swp,*.png,*.jpg,*.gif,*.webp,*.jpeg,*.map

" Use the system register for all cut yank and paste operations
" Renszer regiszter használata sz összes kivágás, másolás és beillesztés parancsnál
set clipboard+=unnamedplus


"--------------------------------------------------------------------------------------------------
" A FELHASZNÁLÓT SEGÍTŐ EGYÉB BEÁLLÍTÁSOK:
"--------------------------------------------------------------------------------------------------

set lazyredraw              " makró futtatása esetén ne frissitse a képernyőt
set virtualedit=insert      " insert üzemmódban szabadon tudunk mozogni a szerkesztő területén
set visualbell              " Hibajelzés ablakvillanással

" KULCSSZAVAK FORMÁZÁSA
set iskeyword +=.
set iskeyword +=-



" Eltávolitja a felesleges whitespace karaktereket
autocmd BufWritePre * %s/\s\+$//e

" Treat all numbers as decimal regardless of whether they are padded with zeros
set nrformats=


hi NonText guifg=#4a4a59
hi SpecialKey guifg=white guibg=#cc0000

" Automatically remove the preview window after autocompletion
autocmd CompleteDone * pclose

au BufRead,BufNewFile,BufReadPost *.json set syntax=json



"--------------------------------------------------------------------------------------------------
" SEGÉDFÜGGVÉNYEK
"--------------------------------------------------------------------------------------------------




"--------------------------------------------------------------------------------------------------
" SAJÁT HELP ABLAK KÉSZÍTÉSE
"--------------------------------------------------------------------------------------------------
let g:shelp_dir = nvim_config_dir.perjel."shelp""

function! Shelp50()
  botright 50vnew +setlocal\ buftype=nofile\ bufhidden=hide\ nobuflisted\ noswapfile\ winfixwidth
  execute '$read' g:shelp_dir.g:perjel.'shelphu.txt'
  norm ggd_
  setlocal foldmethod=marker foldtext=substitute(getline(v:foldstart),'\\s\\+{{{.*$','','')
  execute 'setlocal foldlevel='.get(g:, 'cheat40_foldlevel', 1)
  setlocal concealcursor=nc conceallevel=3
  setlocal expandtab nonumber norelativenumber nospell nowrap textwidth=50 signcolumn="no"
  "setlocal fileencoding=utf-8 filetype=cheat40 nomodifiable
  setlocal fileencoding=utf-8 filetype=markdown nomodifiable
  setlocal iskeyword=@,48-57,-,/,.,192-255
  "execute "setlocal" "tags=".s:cheat40_dir.g:perjel."tags"
  nnoremap <silent> <buffer> <tab> <c-w><c-p>
  nnoremap <silent> <buffer> q <c-w><c-p>@=winnr("#")<cr><c-w>c
endf

if mapcheck("<leader><f1>", "n") == ""
   "nmap <unique> <leader><f1> :<c-u>Shelp50<cr>
   nnoremap <unique> <leader><f1> : call Shelp50()<cr>

endif

"--------------------------------------------------------------------------------------------------
" KÜLSŐ PROGRAMOK HASZNÁLATA
"--------------------------------------------------------------------------------------------------
"
" Az aktuális fájl megnyítása Chromium böngészőben
if g:os_linux
    command! Chrome :!chromium-browser %<CR>
elseif g:os_windows
    command! Chrome :exec ':start !C:\\Program\\ Files\ (x86)\\Google\\Chrome\\Application\\chrome.exe %'<CR>
    nnoremap <F5> :update<Bar>execute '!start cmd /C "' shellescape('C:\Program Files (x86)\Google\Chrome\Application\chrome.exe', 1) shellescape(expand('%:p'), 1) . '"'<CR>
endif

nnoremap <F5> :Chrome<CR>




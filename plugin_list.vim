
"call plug#begin('~/.local/share/nvim/plugged')
call plug#begin(g:nvim_plugin_dir)

" Fáljkezelő
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'  " display git status within Nerdtree

" Lebegőablakos terminál
Plug 'voldikss/vim-floaterm'


" Kommentelő
Plug 'preservim/nerdcommenter'


" Elfogja az Ex utasításokat kimenetét és megjeleníti a pufferben
Plug 'tyru/capture.vim'


" Színsémák
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'flazz/vim-colorschemes'
" Plug 'Tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'


" Puffer kezelése
" Plug 'ap/vim-buftabline'
Plug 'zefei/vim-wintabs'
"
"
" Kezdőképernyő
Plug 'mhinz/vim-startify'

" Plug 'liuchengxu/vim-which-key'

" Státusz sor
Plug 'itchyny/lightline.vim'
hlsearch


" Sorbehúzás jelőlése
Plug 'Yggdroot/indentLine'

" Csak az aktuális fáljban emeli ki a kurzor sorát
Plug 'miyakogi/conoline.vim'

" Kijelőlt szöveg kiemelése
Plug 'machakann/vim-highlightedyank'


" Maximálja illetve visszaállítja az aktuális ablak méretét
Plug 'szw/vim-maximizer'

" Egy vagy több sort mozgat függölegesen
Plug 'matze/vim-move'

" Aláhúzza a kurzor alatti szót a fájlban
ug 'itchyny/vim-cursorword'

" A puffer írása előtt létrehozz minden nem létező könyvtárat
Plug 'pbrisbin/vim-mkdir'




" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Markdown fájl megtekintése böngészőben
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Sugólap használata
Plug 'lifepillar/vim-cheat40'


" Vimwiki használata
Plug 'vimwiki/vimwiki'

" Checkbox használata
" Ez jól használható md fájloknál például TODO listákhoz
Plug 'jkramer/vim-checkbox'

" Git verziókezelő
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
" Változások mutatása
Plug 'mhinz/vim-signify'


" Fuzzy Search
" Plug '~/.fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Regiszterek használatát segíti
Plug 'junegunn/vim-peekaboo'

"Fáljmüveletek parancssorból (csak linux)
if os_linux
    Plug 'tpope/vim-eunuch'
endif

" Linting and Code Formatting
" Kódellenőrzés és formázás
Plug 'dense-analysis/ale'



" Szintaktika kiemelés, formázás sok-sok programnyelvhez
Plug 'sheerun/vim-polyglot'
" Plug 'Quramy/vim-js-pretty-template'

" Autocompletion & Intellisense
" Kódkiegészítő
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Kódtöredékek kezelése
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"kezeléseWEB fejlesztéshez szükséges pluginok
" A gyorsabb munkához
Plug 'mattn/emmet-vim'

" HTML írásakor a tag-ek automatikus átírása
Plug 'AndrewRadev/tagalong.vim'

" Javascript készítéséhez
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {'do': 'npm install'}

" Automatikus zárótagok
Plug 'alvan/vim-closetag'

" Előnézet a böngészőben
Plug 'turbio/bracey.vim'

" Fordító program
Plug 'voldikss/vim-translator'
" Utilities
" Megváltoztatja a munkakönyvtárat a projekt győkeréhez"
" Plug 'airblade/vim-rooter'

" A Bbye lehetővé teszi, hogy törölje a puffereket (zárja be a fájlokat) anélkül,
" hogy bezárná az ablakokat, és nem tudná rendezni az elrendezését.
Plug 'moll/vim-bbye'


" C# (dotnet) fejlesztéshez
Plug 'OmniSharp/omnisharp-vim'

" dotnet utasítások futtatása vimből
Plug 'Shadowsith/vim-dotnet'


Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
call plug#end()

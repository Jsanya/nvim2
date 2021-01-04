"===================================================================================================
"PLUGINOK BEÁLLÍTÁSA - KEY MAPS
"
"===================================================================================================

"---------------------------------------------------------------------------------------------------
"GRUVBOX:
"---------------------------------------------------------------------------------------------------

set background=dark                     " Sötét mód bekapcsolása
" set background=light
let g:gruvbox_contrast_dark="hard"      " magas kontraszt
let g:gruvbox_italic=1                  " dőlt szöveg használata
let g:gruvbox_bold=1                    " kövér szöveg használata"
let g:gruvbox_underline=1
let g:gruvbox_sign_column="bg1"

colorscheme gruvbox



"---------------------------------------------------------------------------------------------------
" STARTIFY:
"---------------------------------------------------------------------------------------------------
" let g:startify_custom_header = [
"             \ '------------------------------------',
"             \ '|    2020     Juhász Sándor         |',
"             \ '------------------------------------',
"             \]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Fájlok']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/' },
            \ '~/Blog',
            \ '~/Code',
            \ '~/Pics',
            \ ]


" --------------------------------------------------------------------------------------------------
" NERDTree: fáljkezelő beállításai
" --------------------------------------------------------------------------------------------------
"Basic settings - Alap beállítások
let g:NERDTreeChDirMode = 2  "Change current folder as root - aktuális könyvtár lesz a gyökérkönyvtáe
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif

"UI settings - felhasználói felület beállításai
" NERDTree státuszsorának beállítása
let g:NERDTreeStatusline = 'NERDTree'

" Close NERDtree when files was opened
" Automatikusan bezárul a NERD, ha megnyítunk egy fájlt
let NERDTreeQuitOnOpen=1

" Start NERDTree in minimal UI mode (No help lines)
" Minimális UI (felhasználói interfész) (Nincs segítség)
let NERDTreeMinimalUI=1


let NERDTreeDirArrows=1    " Display arrows instead of ascii art in NERDTree
let NERDTreeChDirMode=2    " Change current working directory based on root directory in NERDTree

" Don't show hidden files - Ne mutassa a rejtett fájlokat
let g:NERDTreeHidden=1


" Initial NERDTree width - Az ablak alapszélessége
let NERDTreeWinSize=30

" Auto delete buffer deleted with NerdTree
" Automatikusan törli a törölt fájl pufferét
let NERDTreeAutoDeleteBuffer = 1

" Show NERDTree bookmarks - Mutassa a könyvjelzőket is
let NERDTreeShowBookmarks=1

" Hide temp files in NERDTree . Elrejti a megadott temp fájlokat
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']

" No show Line Number - Nincs sorszámozás
let g:NERDTreeShowLineNumbers=0

" Open Nerdtree when there's no file opened
"    autocmd vimenter * if !argc()|NERDTree|endif
" Or, auto-open Nerdtree
"autocmd vimenter * NERDTree

" Close NERDTree when there's no other windows
" Bezárul a NERDTree, amennyiben nincs más ablak
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Customize icons on Nerdtree - Felhasználói beállítások (pl Ikonok)
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeHighlightCursorline = 0

">> NERDTREE-GIT
" Special characters
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
\ }

" Nerdtree-syntax-highlighting:
" -----------------------------
" let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
" let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
"let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
"0 }

" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1


" Fájlkezelő megnyítása
" A linuxos Acer gépem így értelmezi a S-F2 lenyomást
if g:os_linux
    map <F14> :NERDTreeToggle <CR>
else    " egyébként
    map <S-F2> :NERDTreeToggle <CR>
endif


"---------------------------------------------------------------------------------------------------
" WINTAB: pufferek, tabok
"---------------------------------------------------------------------------------------------------
    let g:wintabs_display = 'tabline'

    let g:wintabs_ui_sep_leftmost = ' '
    let g:wintabs_ui_sep_inbetween = ' '
    let g:wintabs_ui_sep_rightmost = ' '

    let g:wintabs_ui_active_left = '['
    let g:wintabs_ui_active_right = ']'
    let g:wintabs_ui_active_higroup = 'PmenuSel'


    nnoremap ú :WintabsNext <CR>
    nnoremap ő :WintabsPrevious <CR>
    map <ö>c <Plug>(wintabs_close)
    map <C-T>u <Plug>(wintabs_undo)
    map <C-T>o <Plug>(wintabs_only)
    map <C-W>c <Plug>(wintabs_close_window)
    map <C-W>o <Plug>(wintabs_only_window)
    command! Tabc WintabsCloseVimtab
    command! Tabo WintabsOnlyVimtab



"---------------------------------------------------------------------------------------------------
" highlightedyank: kijelőlések kiemelése
"---------------------------------------------------------------------------------------------------
    " A kimelés időtartama millisekunderben  1000 = 1 mp;  -1 tartós kimelés
    let g:highlightedyank_highlight_duration = -1
    " Felhagy a kiemeléssel ha a kijelőlt sorok száma meghaladja az alábbi értéket
    let g:highlightedyank_max_lines = 1000

"---------------------------------------------------------------------------------------------------
" NerdCommenter: sorok kommentelése
" --------------------------------------------------------------------------------------------------
    " Enable trimming of trailing whitespace when uncommenting
    " Kommentelés megszüntetése esetén whitespace-k törlése
    let g:NERDTrimTrailingWhitespace = 1

    " Komment jelző után space-t tesz
    let g:NERDSpaceDelims = 1

    " Use compact syntax for prettified multi-line comments
    let g:NERDCompactSexyComs = 1

    " Align line-wise comment delimiters flush left instead of following code indentation
    let g:NERDDefaultAlign = 'left'

    " Set a language to use its alternate delimiters by default
    let g:NERDAltDelims_java = 1

    " Saját formátum hozzáadása, vagy felülírása
    let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

    " Engedélyezi az üres sorok kommentálását
    let g:NERDCommentEmptyLines = 1

    " Engedélyezi szóközök levágását a komment végéről
    let g:NERDTrimTrailingWhitespace = 1

    " Engedélyezi, hogy ellenőrizhesse hogy a kiválasztott sorok kommentelve vannak, vagy sem
    let g:NERDToggleCheckAllLines = 1




"---------------------------------------------------------------------------------------------------
" Eunuch: hasznos segédparancsok a parancssorból
" --------------------------------------------------------------------------------------------------

    " :Delete: Egyidejüleg törli egy puffert és a fájlt a háttértárról.
    " :Unlink: Olyan mint a :Delete, de megtartja üresé vált puffert.
    " :Move: Egyszerre nevezi (mozgatja) át a puffert és a fájlt.
    " :Rename: Olyan mint a :Move, de az aktuális fájl könyvtárában marad.
    " :Chmod: Az aktuális fájl engedélyének módosítása.
    " :Mkdir: Hozzon létre egy könyvtárat, alapértelmezés szerint az aktuális fájl szülőjéhez.
    " :Cfind: Futtassa findés töltse be az eredményeket a gyorsjavítások listájába.
    " :Clocate: Futtassa locateés töltse be az eredményeket a gyorsjavítások listájába.
    " :Lfind/ :Llocate: Mint fent, de használja a helyek listáját.
    " :Wall: Minden nyított ablakot ment. Praktikus szerszámok, például védő rúgáshoz .
    " :SudoWrite: Írjon egy privilegizált fájlt a sudo.
    " :SudoEdit: Kiváltságos fájl szerkesztése a sudo.
    " A fájltípus észlelése az sudo -eeredeti fájlnév alapján történik.
    " A shebang sorral létrehozott új fájlok automatikusan végrehajthatóvá válnak.



"---------------------------------------------------------------------------------------------------
" SIGNIFY: változások, különbségek jelőlése
"---------------------------------------------------------------------------------------------------
    " let g:signify_vcs_list = ['git']
    " let g:signify_sign_add = '+'
    " let g:signify_sign_change = '~'
    " let g:signify_sign_changedelete = '│'

    let g:signify_sign_add               = '+'      " Hozzáadott sorok
    let g:signify_sign_delete            = '_'
    let g:signify_sign_delete_first_line = '‾'
    let g:signify_sign_change            = '~'

    " I find the numbers disctracting
    let g:signify_sign_show_count = 1
    let g:signify_sign_show_text = 0


    nmap <leader>gj <plug>(signify-next-hunk)
    nmap <leader>gk <plug>(signify-prev-hunk)
    nmap <leader>gJ 9999<leader>gJ
    nmap <leader>gK 9999<leader>gk



"---------------------------------------------------------------------------------------------------
" OMNISHARP: dotnet fejlesztéshez
"---------------------------------------------------------------------------------------------------
"Plug 'https://github.com/adelarsq/vim-csharp', {'for':['cs','csx','cshtml.html','csproj','solution']}
"Plug 'https://github.com/OmniSharp/omnisharp-vim', {'for':['cs','csx','cshtml.html','csproj','solution'], 'on': ['OmniSharpInstall']}

    let g:OmniSharp_server_stdio = 1
    let g:OmniSharp_selector_ui = ''       " Use vim - command line, quickfix etc.
    let g:OmniSharp_highlight_types = 2

    let g:OmniSharp_server_type = 'roslyn'
    let g:OmniSharp_prefer_global_sln = 1
    let g:OmniSharp_timeout = 10



augroup my_omnisharp
    autocmd!
    au FileType cs nmap <buffer> <silent> ga :OmniSharpGetCodeActions<CR>
    au FileType cs nmap <buffer> <silent> gd :OmniSharpGotoDefinition<CR>
    au FileType cs nmap <buffer> <silent> gq :OmniSharpCodeFormat<CR>
    au FileType cs nmap <buffer> <silent> gu :OmniSharpFixUsings<CR>
    au FileType cs nmap <buffer> <silent> gr :OmniSharpFindUsages<CR>
    au FileType cs nmap <buffer> <silent> gK :OmniSharpDocumentation<CR>
    au FileType cs nmap <buffer> <silent> <F2> :OmniSharpRename<CR>
    au FileType cs nmap <buffer> <silent> <F5> :!dotnet run<CR>
    au FileType cs nmap <buffer> <silent> gp :OmniSharpPreviewDefinition<CR>
augroup END



"---------------------------------------------------------------------------------------------------
" IDENTLINE: Sorbehúzás jelzése
"---------------------------------------------------------------------------------------------------
"
    let g:indentLine_char = '┆'
    " let g:indentLine_setColors = '#FFF0FF'
    " let g:indentLine_color_term = 239

"---------------------------------------------------------------------------------------------------
" CONOLINE:
"---------------------------------------------------------------------------------------------------
" Kiemeli a kurzor sorát
    let g:conoline_auto_enable = 1
    let g:conoline_use_colorscheme_default_insert=1


"---------------------------------------------------------------------------------------------------
" SUPERTAB:
"---------------------------------------------------------------------------------------------------
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabClosePreviewOnPopupClose = 1
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-x><C-o>"
"inoremap <expr><TAB> pumvisible() ? '<C-n>' : '<C-x><C-o>'

"---------------------------------------------------------------------------------------------------
" Lightline:
"---------------------------------------------------------------------------------------------------
" Integrate Coc with Lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
    \ 'colorscheme': 'tender',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'git', 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'currentfunction': 'CocCurrentFunction'
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
    \ }

"---------------------------------------------------------------------------------------------------
" SURROUND:
"---------------------------------------------------------------------------------------------------
" Szavak, kijelölt szövegrészek körbezárása

" Normál módban a kurzor alatti szót zárja körbe
nmap s' ysiw'
nmap s" ysiw"
nmap s` ysiw`
nmap s( ysiw(
nmap s) ysiw)
nmap s[ ysiw[
nmap s] ysiw]
nmap s{ ysiw{
nmap s} ysiw}

" Normál módban a kurzor alatti kiterjesztett szót zárja körbe

nmap S" ysiw"
nmap S` ysiw`
nmap S( ysiw(
nmap S) ysiw)
nmap S[ ysiw[
nmap S] ysiw]
nmap S{ ysiw{
nmap S} ysiw}

" Visual módban a kijelölt részt zárja körbe
vmap ' S'
vmap " S"
vmap ` S`
vmap ( S(
vmap ) S)
vmap [ S[
vmap ] S]
vmap { S{
vmap } S}



"---------------------------------------------------------------------------------------------------
" EMMET:  html, css kódolás gyorsabban
"---------------------------------------------------------------------------------------------------
let g:user_emmet_expandabbr_key='<C-@>'
imap <expr> <C-Space> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}


"---------------------------------------------------------------------------------------------------
" CLOSETAG:
"---------------------------------------------------------------------------------------------------
    " fájlnevek, például *.xml, *.html, *.xhtml, ...
    " Ezek a fájlkiterjesztések, ahol a plugin engedélyezve van.
    let g:closetag_filenames = '*.html, *.xhtml, *.phtml'

    " fájlnevek, például *.xml, *.xhtml, ...
    " Ezzel a nem bezáró címkék listája önműködően bezáródik a megadott fájlokban.
    let g:closetag_xhtml_filenames = '*.xhtml, *.jsx'

    " fájltípusok, például xml, html, xhtml, ...
    " Ezek a fájltípusok, ahol ez a bővítmény engedélyezve van.
    let g:closetag_filetypes = 'html, xhtml, phtml'

    " fájltípusok, például xml, xhtml, ...
    " Ezzel a nem bezáró címkék listája önzáródik a megadott fájlokban.
    let g:closetag_xhtml_filetypes = 'xhtml, jsx'

    " integer value [0 | 1]
    " Ez a nem bezáró címkék listáját kis- és nagybetűkre érzékenyé teszi (pl. a <Link> `bezáródik, míg
    " a` <link> `nem lesz.) "
    let g:closetag_emptyTags_caseSensitive = 1

    " Dict
    " Kikapcsolja az automatikus bezárás ha nem érvényes régió (a fájltípus)
    let g:closetag_regions  = {
        \ 'typescript.tsx' : 'jsxRegion, tsxRegion',
        \ 'javascript.jsx' : 'jsxRegion',
        \ }

    " Parancsikon a címkék bezárásához, az alapértelmezés '>'
    let g:closetag_shortcut = '>'

    " Hozzáadás> az aktuális pozícióban az aktuális címke bezárása nélkül, alapértelmezés: ''
    let  g:closetag_close_shortcut = '<leader>>'


    "---------------------------------------------------------------------------------------------------
    " ULTILSNIPS:
    "---------------------------------------------------------------------------------------------------
    "     let g:UltiSnipsExpandTrigger="<c-s>"
"     let g:UltiSnipsExpandTrigger="<Nop>"
    " let g:UltiSnipsJumpForwardTrigger="<TAB>"
    " let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
    " let g:UltiSnipsSnippetsDir="~/.config/nvim/snips"
    " let g:UltiSnipsSnippetDirectories=["UtilSnips", "snips"]
"     "


"---------------------------------------------------------------------------------------------------
" COC:
"---------------------------------------------------------------------------------------------------
set updatetime=300

set shortmess+=c

 let g:coc_global_extensions = ['coc-git', 'coc-yaml', 'coc-solargraph',
    \ 'coc-python', 'coc-html', 'coc-json', 'coc-css', 'coc-html',
    \ 'coc-prettier', 'coc-eslint', 'coc-tsserver', 'coc-snippets']


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'


" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>



" BÖVÍTMÉNYEK, KIEGÉSZÍTŐK A Coc
"---------------------------------------------------------------------------------------------------
"coc-bookmark:
"---------------------------------------------------------------------------------------------------
" Könyvjelzők használata
" Key maps:

nmap <Leader>bm <Plug>(coc-bookmark-toggle)
nmap <Leader>ba <Plug>(coc-bookmark-annotate)
nmap <Leader>bn <Plug>(coc-bookmark-next)
nmap <Leader>bp <Plug>(coc-bookmark-prev)





"---------------------------------------------------------------------------------------------------
" MARKDOWN:
"---------------------------------------------------------------------------------------------------
let g:vim_markdown_folding_disabled = 1
au BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/
let g:markdown_fenced_languages = ['rust', 'css', 'yaml', 'javascript', 'html', 'vim','json']

"---------------------------------------------------------------------------------------------------
" MARKDOWN_PREVIEW:
"---------------------------------------------------------------------------------------------------
" Ne induljon automatikusan:
let g:mkdp_auto_start = 1
" Fríssítés csak mentéskor ill. amikor elhagyjuk a beszúrás módot:
let g:mkdp_refresh_slow = 1
" Az oldal megjelenítéséhez az alább css fájlt használja:
let g:mkdp_markdown_css = 'g:nvim_config_dir . '/' . github-markdown.css'

"---------------------------------------------------------------------------------------------------
" VIMWIKI:
"---------------------------------------------------------------------------------------------------
" A programozáshoz
let wiki_prog = {}
let wiki_prog.path = '~/vimwiki/programozas/'
let wiki_prog.syntax = 'markdown'
let wiki_prog.ext = '.md'

" Egyéb dolgokhoz
let wiki_egyeb = {}
let wiki_egyeb.path = '~/vimwiki/egyebek/'
let wiki_egyeb.syntax = 'markdown'
let wiki_egyeb.ext = '.md'

let g:vimwiki_list = [wiki_prog, wiki_egyeb]
let g:vikwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}



"---------------------------------------------------------------------------------------------------
" ALE:
" --------------------------------------------------------------------------------------------------
    let g:ale_fixers = {}
    let g:ale_fixers['javascript'] = ['eslint']
    let g:ale_fixers['json'] = ['prettier']
    let g:ale_fixers['scss'] = ['stylelint', 'prettier']
    let g:ale_fixers['rust'] = ['rustfmt']
    let g:ale_fix_on_save = 1 " Fix files automatically on save
    let g:ale_pattern_options = {
    \ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
    \ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
    \}

    let g:ale_sign_error = 'E'
    let g:ale_sign_warning = 'W'

    " Move between linting errors
    nmap <silent> [c <Plug>(ale_previous_wrap)
    nmap <silent> ]c <Plug>(ale_next_wrap)

    nmap <F6> <Plug>(ale_fix)


"---------------------------------------------------------------------------------------------------
" NETRW:
"---------------------------------------------------------------------------------------------------
    " Set preferred view
    let g:netrw_liststyle = 3
    " Remove banner
    let g:netrw_banner = 0

"---------------------------------------------------------------------------------------------------
" FZF:
"---------------------------------------------------------------------------------------------------
let g:fzf_command_prefix = 'Fzf'
nnoremap <Leader>b :FzfBuffers<CR>
nnoremap <Leader>h :FzfHistory<CR>
nnoremap <Leader>t :FzfBTags<CR>
nnoremap <Leader>T :FzfTags<CR>
nnoremap <C-p> :FzfFiles<CR>
" Have FZF list all tracked files plus untracked files minus your ignored files
nnoremap <Leader>p :FzfGitFiles --exclude-standard --others --cached<CR>
nnoremap <Leader>g :FzfRg<CR>
" }}}



" #RIPGREP {{{
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
" }}}



"---------------------------------------------------------------------------------------------------
" VIM-TRANSLATE:
"---------------------------------------------------------------------------------------------------
" Fordító plugin
" A célnyelv (magyar) beállítása
let g:translator_target_lang='hu'

""" Example configuration
" Fordítás a parancssorba
" nmap <silent> <Leader>t <Plug>Translate
" vmap <silent> <Leader>t <Plug>TranslateV
" Fordítás egy külön ablakba
" nmap <silent> <Leader>w <Plug>TranslateW
" vmap <silent> <Leader>w <Plug>TranslateWV
"  Replace the text with translation
" nmap <silent> <Leader>r <Plug>TranslateR
" vmap <silent> <Leader>r <Plug>TranslateRV
"

"---------------------------------------------------------------------------------------------------
" FÜGGVÉNYEK:
"---------------------------------------------------------------------------------------------------
"
    " Sötét-világos háttérszin váltó függvény
    function! ToggleBG()
        let s:tbg = &background
        " Invertálás
        if s:tbg == "dark"
            set background=light
        else
            set background=dark
        endif
    endfunction


    " Abszolút a relativ sorszámozás között vált
    function! ToggleNumber()
        if(&relativenumber == 1)
            set norelativenumber
            set number
        else
            set relativenumber
        endif
    endfunc



    function! WinMode()
        let l:ch = ""
        echo "Win üzemmód: S: split | V: vertical split | C: close | ESC: kilép "
        while l:ch != "\<ESC>"
            let l:ch = nr2char(getchar())
            if l:ch == "s"
                wincmd  s
                let l:ch = "\<ESC>"
            elseif l:ch == "v"
                wincmd v
                 let l:ch = "\<ESC>"
            elseif l:ch == "c"
                wincmd q
                 let l:ch = "\<ESC>"
            elseif l:ch == "q"
                wincmd q
                 let l:ch = "\<ESC>"
            endif
        endwhile
        echo "  "
    endfunction

"---------------------------------------------------------------------------------------------------
" ÚJ PARANCSOK:
"---------------------------------------------------------------------------------------------------



    " Pdf fájl készítése
    " command! -range=% Printpdf <line1>,<line2> :hardcopy > %.ps | !ps2pdfwr %.ps %.pdf && rm %.ps && echo 'Created: %.pdf'



"---------------------------------------------------------------------------------------------------
" KEY MAPS - BILLENYTŰPARANCSOK
" Sok billenytyűparancs a plugin konfigurációnál van beállítva!
" --------------------------------------------------------------------------------------------------


" Ablak maximálása és visszaállítása (vim-maximizer plugin)
nnoremap <silent><F12> :MaximizerToggle<CR>
vnoremap <silent><F12> :MaximizerToggle<CR>
inoremap <silent><F12> :MaximizerToggle<CR>

" nnoremap ó $
" nnoremap ú ]
" nnoremap ő [


" Törli a puffert (bezárja a fájlt), de nem bántja az elrendezést (vim-bbye)
nnoremap <Leader>q :Bdelete<CR>

nmap <leader>nu :call ToggleNumber() <CR>    " Sorszámozási mód váltás




" QuickFix List
" nnoremap <leader>co :cw<CR>
" nnoremap <leader>cc :ccl<CR>
" nnoremap <UP> :cope<CR>
" nnoremap <DOWN> :cclose<CR>
" nnoremap <LEFT> :cprev<CR>
" nnoremap <RIGHT> :cnext<CR>
" nnoremap <silent> <leader>cn :cnext<CR>
" noremap <silent> <leader>cp :cprev<CR>



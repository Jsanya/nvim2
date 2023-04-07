-- Nerdcommenter konfigurációja

vim.cmd([[

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


]])


--[[ 

Alapértelmezett keymap beállítások

    [count]|<Leader>|cc |NERDCommenterComment|
    Comment out the current line or text selected in visual mode.
    Kikommentezi az aktuális sort vagy a vizuális módban kiválastott szöveget.


    [count]|<Leader>|cn |NERDCommenterNested|
    C


[count]|<Leader>|c<space> |NERDCommenterToggle|
    Toggles the comment state of the selected line(s). If the topmost selected
    line is commented, all selected lines are uncommented and vice versa.


    [count]|<Leader>|cm |NERDCommenterMinimal|
    Comments the given lines using only one set of multipart delimiters.


    [count]|<Leader>|ci |NERDCommenterInvert|
    Toggles the comment state of the selected line(s) individually.


    [count]|<Leader>|cs |NERDCommenterSexy|
    Comments out the selected lines ``sexily''


    [count]|<Leader>|cy |NERDCommenterYank|
    Same as |<Leader>|cc except that the commented line(s) are yanked first.


    |<Leader>|c$ |NERDCommenterToEOL|
    Comments the current line from the cursor to the end of line.


    |<Leader>|cA |NERDCommenterAppend|
    Adds comment delimiters to the end of line and goes into insert mode between
    them.


    |NERDCommenterInsert|
    Adds comment delimiters at the current cursor position and inserts between.
    Disabled by default.


    |<Leader>|ca |NERDCommenterAltDelims|
    Switches to the alternative set of delimiters.


    [count]|<Leader>|cl    |NERDCommenterAlignLeft|
    [count]|<Leader>|cb    |NERDCommenterAlignBoth|
    Same as |NERDCommenterComment| except that the delimiters are aligned down the
    left side (|<Leader>|cl) or both sides (|<Leader>|cb).


    [count]|<Leader>|cu |NERDCommenterUncomment|
    Uncomments the selected line(s).

--]]


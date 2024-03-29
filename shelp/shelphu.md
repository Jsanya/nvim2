***<q> bezárás, <tab> fókusz áthelyezése***

**Press q to dismiss, <Tab> to lose focus**

Help about …                    `:h …`          N
Help search                     `:helpgrep …`   N

Rólunk {{{
  A leírásban használt rövidítések



  **»**      Előre/jobbra
  **«**      Vissza/balra
  **WORD**   Térközzel határolt szó

  Notation for key sequences:

  ‹r›    A register (", *, 0, 1, …)
  \      Leader (see `<leader>`)
         See `registers`
  ‹Move› A motion or a text object
         See `$VIMRUNTIME/doc/motion.txt`
         See `text-objects`
  ‹P›    A regular expression (pattern)
         See `$VIMRUNTIME/doc/pattern.txt`
  ‹Cmd›  An Ex command
         See `$VIMRUNTIME/doc/cmdline.txt`
  ‹Var›  A variable or option name
         See `variables`
         See `$VIMRUNTIME/doc/options.txt`
  ‹n›    A (possibly optional) number
  ‹c›    A single character
  …      Any text
  «C-…»  Press ctrl and … together
  «Spc»  Press space bar
  «CR»   Press Enter

  Similarly, other special keys are
  written between « and ». All other
  characters are meant to be typed
  literally.
:
  Note that spaces are made explicit
  only when it is not obvious that a
s space must be used (e.g., \«Spc», that
  is, leader followed by space). Ditto
  for «CR».

  Cimkék:

  N    Normál mód
  C    Command mód
  I    Beszúrás (Insert) mód
  -V    Vizuális mód
  M    Motion (may be used by itself or
       after an operator)
  T    Text object (use in Visual mode
       or after an operator)
  O    Operator (use in Visual mode, or
       before a motion or a text object)
  *    Acts on text under/after cursor
}}}

# NVIM indítása, befejezése {{{
Kilépés mentés nélkül           `:q`            N
ua.                             `:q!`           N
Kilépés mentéssel               `:x`            N
ua.                             `ZZ`            N
Mindent ment és kilép           `:xa`           N
Mindenből kilép mentés nélkül   `:qa`           N

}}}


# Fájl müveletek {{{
Új üres fájl                    `:enew`         N
New/open file or dir            `:e …`          N
Nyitás vizszintes osztással     `:sp …`         N
Nyitás függőleges osztással     `:vs …`         N
Újra nyítja az utolsó fájlt     `<C--o><C-o>`   N
Megnyítás külső programmal      `gx`           *N
Fájl böngésző (Netrw)           `:Ex`           N
Bezárja a aktuális fájlt        `:bd`           N
Bezárja az összes fájlt         `:%bd`          N
Mentés                          `:w`            N
Mentés (ha módosult!)           `:up`           N
Mentés másként...               `:sav …`        N
Mentés mindent                  `:wa `          N
Mentés csak olvasható is        `:w!`           N
Munkamenet mentése              `:mks`          N

To restore, run `vim -S`
Újratöltés a háttértárból       `:e`            N
Vissza az utoljára mentethez    `:e!`           N
}}}

# Munkamenetek (session) kezelése {{{
Munkamenet betöltése            `:SLoad`[!]     N
Munkamenet mentése              `:Ssave`[!]     N
Munkamenet törlése              `:SDelete`[!]   N
Munkamenetek bezárása           `:SC`[!]        N
*Ha a ! meg van adva nincs kérdés:*
}}}

# Konvertálás, nyomtatás {{{
Puffer konvertálása HTML-re     `:TOhtml`       N
Dokumentum nyomtatása           `:hardcopy`     N
*A nem mentett tartalom elveszik!*
}}}


# Fájlkezelő {{{

}}}

# Ablak, puffer használata {{{

}}}

# Szerkesztő funkciók {{{

}}}

# Makrók használata {{{
Makrófelvétel indítása        `q<CR>`         N
Makróvelvétel leállítása      `q<CR>`
Makró futtatása               `@<CR>`         N
Ismétli az utolsót            `@@`            N
Repeat last Ex command        `@:`            N
}}}

# File Explorer (Netrw) {{{
Open file/directory           «CR»         *N
Open in horizontal split      o            *N
Open in vertical split        v            *N
Open in a new tab             t            *N
Open with external app        x            *N
New file here                 %             N
New directory here            d             N
Mark file                     mf           *N
Mark using shell glob         mr            N
Unmark all                    mu            N
Edit marked files             me            N
Rename file(s)                R            *N
Delete file(s)                D            *N
Refresh file list             «C-l»         N
File info                     qf           *N
Toggle hidden files           a             N
Switch file list format       i             N
Exit file explorer            :Rex          N
}}}


# Edit
## Basics {{{
Vissza a normál módba         `«Esc»`      NIVC
ua.                           `«C-[»`      NIVC
Cancel command/operation      `«C-c»`      NIVC
Insert at cursor pos.         `i`             N
Append after the cursor       a             N
Insert at start of line       I             N
Append at end of line         A             N
Új sor nyítás alul            o             N
Új sor nyítás felül           O             N
Cseréli a karaktert           r‹c›         *N
Csere mód /felülírás          R             N
Változtatás                   c             O
Lecseréli a sort              cc            N
Ismétli az utolsó parancsot   .             N
}}}

Undo                     u             N
Redo                     «C-r»         N
Next text state          g+            N
Prev text state          g-            N
Cut                      d             O
Cut into register ‹r›    "‹r›d         O
Cut into OS clipboard    "*d           O
Cut ‹n› lines            ‹n›dd         N
Cut until the EOL        D             N
Cut ‹n› characters »     ‹n›x          N
Cut ‹n› characters «     ‹n›X          N
Cut all                  :%d           N
Copy                     y             O
Copy into register ‹r›   "‹r›y         O
Copy into OS clipboard   "*y           O
Copy ‹n› lines           ‹n›yy         N
Copy until the EOL       y$            N
Copy all                 :%y           N
Paste after cursor       p            VN
Paste before cursor      P            VN
Paste from register ‹r›  "‹r›p        VN
Paste from register ‹r›  «C-r»‹r›     IC
Paste from OS clipboard  "*p          VN
Paste after and align    ]p           VN
Paste before and align   ]P           VN
Visual mode (select)     v             N
Linewise visual mode     V             N
Block visual mode        «C-v»         N
Insert in selected lines «C-v»‹Move›I  N
Append to selected lines «C-v»‹Move›A  N
Change in selected lines «C-v»‹Move›c  N
Delete in selected lines «C-v»‹Move›x  N
Reselect                 gv            N
Select all               ggVG          N
Delete previous word     «C-w»        IC
Erase line before cursor «C-u»        IC
Start recording macro    q‹r›          N
Press q to stop recording
Run recorded macro       @‹r›          N
Repeat last macro        @@            N
Repeat last Ex command   @:            N
Run cmd in all buffers   :bufdo ‹Cmd›  N

# Text {{{1
# Objects {{{2
Around word              aw            T
Inside word              iw            T
Around WORD              aW            T
Inside WORD              iW            T
Around sentence          as            T
Inside sentence          is            T
Around paragraph         ap            T
Inside paragraph         ip            T
Around parentheses       a(            T
Ditto                    ab            T
Inside parentheses       i(            T
Ditto                    ib            T
Around brackets          a[            T
Inside brackets          i[            T
Around braces            a{            T
Ditto                    aB            T
Inside braces            i{            T
Ditto                    iB            T
Around (XML) tags        at            T
Inside (XML) tags        it            T
Around < and >           a<            T
Inside < and >           i<            T
Around double quotes     a"            T
Inside double quotes     i"            T
Around simple quotes     a'            T
Inside simple quotes     i'            T
Around backticks         a`            T
Inside backticks         i`            T
}}}
Change to uppercase      gU            O
Change to lowercase      gu            O
Uppercase line           gUU           N
Lowercase line           guu           N
Change to uppercase      U             V
Change to lowercase      u             V
Toggle case              ~            *N
Toggle case              ~             V
Indent   (. to repeat)   >             O
Unindent (. to repeat)   <             O
Reindent                 =             O
Indent line (. repeats)  >>            N
Unindent    (. repeats)  <<            N
Reindent line            ==            N
Indent line              «C-t»         I
Unindent line            «C-d»         I
Hard-wrap (cursor moves) gq            O
Hard-wrap (cursor stays) gw            O
Format current line      gww           N
Join with next line      J             N
Ditto, preserve spaces   gJ            N
Use hard tabs            :set noet     N
Use soft tabs (spaces)   :set et       N
Detab (needs 'et' on)    :retab        N
Entab (needs 'et' off)   :retab!       N
Toggle spell checking    :setl spell!  N
To next misspelled word  ]s            N
To prev misspelled word  [s            N
Suggest corrections      z=           *N
Suggest corrections      «C-x»s        I
Set text width           :set tw=‹n›   N
Sort selected lines      :sort         V
Sort+remove duplicates   :sort u       V
Run macro for each line  :norm @‹r›    V
Run Cmd on lines =~ ‹P›  :g/‹P›/‹Cmd› VN
Autocomplete (search »)  «C-n»         I
Autocomplete (search «)  «C-p»         I
Omnicomplete             «C-x»«C-o»    I
Line autocomplete        «C-x»«C-l»    I
Insert digraph           «C-k»‹c›‹c›   I
Insert calculated expr.  «C-r»=        I
Increment number         ‹n›«C-a»     *N
Decrement number         ‹n›«C-x»     *N

# View {{{
Scrolling {{{2
Scroll down a page       «C-f»         N
Scroll up a page         «C-b»         N
Scroll down half a page  «C-d»         N
Scroll up half a page    «C-u»         N
Scroll down a bit        «C-e»         N
Scroll up a bit          «C-y»         N
Scroll right             ‹n›zl         N
Scroll left              ‹n›zh         N
Scroll » half a screen   zL            N
Scroll « half a screen   zH            N
Scroll line to the top   zt            N
Scroll to the bottom     zb            N
Scroll to the center     zz            N
}}}


Toggle soft-wrapping     :setl wrap!   N
Page guide at column n   :setl cc=‹n›  N
No page guide            :setl cc=     N
Toggle line numbers      :setl nu!     N
Toggle rel. line numbers :setl rnu!    N
Toggle invisibles        :setl list!   N
Fold                     zc           *N
Unfold                   zv           *N
Toggle fold              za           *N
Fold all                 zM            N
Unfold all               zR            N
Show files               :ls           N
Edit… (autocomplete)     :b «Tab»      N
Edit buffer ‹n›          :b‹n›         N
Ditto                    ‹n›«C-^»      N
Edit last edited file    «C-^»         N
Edit next buffer         :bn           N
Edit prev buffer         :bp           N
Edir prev in arg list    :prev         N
Edir next in arg list    :next         N
Get file info            «C-g»         N
Character info           ga           *N
Line/word/char count     g«C-g»       VN
Toggle cursorline        :setl cul!    N
Toggle search highlight  :setl hls!    N

# Search {{{1
Toggle ignore case       :set ic!      N
Search forward           /‹P›          M
Search backward          ?‹P›          M
Jump » to match          n             M
Jump « to match          N             M
Select up to next match  gn            M
Select up to prev match  gN            M
Search » for this word   *            *M
Search « for this word   #            *M
Find and replace         :s/‹P›/‹P›/g  V
Ditto, ask to confirm    :s/‹P›/‹P›/gc V
Find and replace all     :%s/‹P›/‹P›/g N
Prev in quickfix list    :cp           N
Next in quickfix list    :cn           N
Prev in location list    :lp           N
Next in location list    :lne          N
Next command             «C-n»         C
Prev command             «C-p»         C
Browse command history   q:            N
Browse command history   «C-f»         C
Use «C-c» to return to command prompt
Browse » search patterns q/            N
Browse « search patterns q?            N
Differences {{{2
Use this file for diff   :diffthis     N
Exit diff mode           :diffoff!     N
Re-scan files for diffs  :diffupdate   N
Next difference          ]c            N
Prev difference          [c            N
Diff put                 dp            N
Diff obtain              do            N
Get differences          :diffget      V
Put differences          :diffput      V
}}}


Go {{{1


Basic movement {{{2
Left                     h             M
Right                    l             M
Up                       k             M
Down                     j             M
Up (honor soft-wrapping) gk            M
Down (ditto)             gj            M
Start of next word       w             M
Start of prev word       b             M
End of next word         e             M
End of prev word         ge            M
Start of next WORD       W             M
Start of prev WORD       B             M
End of next WORD         E             M
End of prev WORD         gE            M
Start of line            0             M
End of line              $             M
This line 1st non-blank  ^             M
Next line 1st non-blank  +             M
Prev line 1st non-blank  -             M
First line               gg            M
Last line                G             M
}}}


Next ‹c› in this line    f‹c›          M
Just before next ‹c›     t‹c›          M
Prev ‹c› in this line    F‹c›          M
Just after prev ‹c›      T‹c›          M
Repeat f/t/F/T »         ;             M
Repeat f/t/F/T «         ,             M
Prev pos in change list  g;            N
Next pos in change list  g,            N
Go to line ‹n›           :‹n›          M
Go to column ‹n›         ‹n›|          M
Jump to line ‹n›         ‹n›G          M
Jump to next blank line  }             M
Jump to prev blank line  {             M
Jump to begin of block   [{            M
Jump to end of block     ]}            M
Jump to end of sentence  )             M
Jump to beg. of sentence (             M
Jump to end of section   ]]            M
Jump to beg. of section  [[            M
Jump to top of window    H             M
Jump to middle           M             M
Jump to bottom           L             M
Jump to matching delim   %             M
Jump to specified tag    :tag …        N
Jump to older tag        «C-t»         N
Jump to tag definition   «C-]»        *N
Ditto, but show choices  g]           *N
Jump or show choices     g«C-]»       *N
To next matching tag     :tn           N
To prev matching tag     :tp           N
Set mark                 m‹c›          N
Jump to mark             `‹c›          M
View all marks           :marks        N
Remove marks             :delmarks …   N
Jump to definition       gd           *N
To prev jump position    «C-o»         N
To next jump position    «C-i»         N
To start of next fold    zj            N
To end of previous fold  zk            N


# Ablakok (Window) használata {{{
New horizontal split     :new          N
Ditto                    «C-w»«C-n»    N
New vertical split       :vnew         N
Close window             «C-w»c        N
Close inactive windows   «C-w»«C-o»    N
Split horizontally       «C-w»s        N
Split vertically         «C-w»«C-v»    N
Exchange windows         «C-w»«C-x»    N
Move to the very top     «C-w»K        N
Move to the very bottom  «C-w»J        N
Move to the far right    «C-w»L        N
Move to the far left     «C-w»H        N
One window per file      :ball         N
Cycle through windows    «C-w»«C-w»    N
Back to previous window  «C-w»«C-p»    N
Edit window to the left  «C-w»«C-h»    N
Edit window below        «C-w»«C-j»    N
Edit window above        «C-w»«C-k»    N
Edit window to the right «C-w»«C-l»    N
Edit top window          «C-w»«C-t»    N
Edit bottom window       «C-w»«C-b»    N
All windows same size    «C-w»=        N
Maximize height          «C-w»_        N
Maximize width           «C-w»|        N
Decrease height          «C-w»-        N
Increase height          «C-w»+        N
Decrease width           «C-w»<        N
Increase width           «C-w»>        N
Exec. Cmd in all windows :windo ‹Cmd›  N


# Tabok (fülek) használata  {{{
New untitled tab         :tabnew       N
New/open in tab          :tabe …       N
Next tab                 gt            N
Previous tab             gT            N
Go to tab n              ‹n›gt         N
Close tab                :tabc         N
Close all other tabs     :tabo         N
List tabs                :tabs         N
Move window to new tab   «C-w»T        N
Open one tab per buffer  :tab ball     N
Execute Cmd in all tabs  :tabdo ‹Cmd›  N


# Use quickfix commands
# to move between results
Help on highlight test   :h hitest.vim N
View mappings            :map …        N
View Insert mode mappings:imap …       N
View registers           :di           N
List of sourced files    :scr          N
List of digraphs         :digraphs     N
List all syntax items    :syn          N

# Egyebek {{{
Current directory        :pwd          N
Change directory         :cd …         N
Show the value of ‹Var›  :echo ‹Var›   N
Show value of option     :set ‹Var›?   N
}}}


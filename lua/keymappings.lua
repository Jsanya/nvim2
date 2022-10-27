-- Keymappings beállítások

-- Segitő funkció a könnyebb kezelés miatt
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd 

-- Ugyanaz mint ha ESC -t nyomnánk insert módban
-- map('i', 'jk', '<Esc>')           -- jk to escape



-- Új függőleges, vizszintes felosztás nyítása, fokusz odahelyezése
map('n', '<leader>nv', ':vsplit<CR>')  -- új függöleges felosztás
map('n', '<leader>nvf', ':vnew<CR>')    -- ua. + új fájl
map('n', '<leader>ns', ':split<CR>')    -- új vizszintes felosztás

-- Puffer kezelés (ciklikus)
map('n', 'ú', ':bn<CR>')        -- következő puffer
map('n', 'ő', ':bp<CR>')      -- előző puffer

-- Tabok kezelése (ciklikus)
map('n', 'ü', ':tabprevious<CR>')   -- előző puffer
map('n', 'ó', ':tabnext<CR>')       -- következő puffer
map('n', 'nt', ':tabnew<CR>')       -- következő puffer


--Ablak átméretezés
map('n', '<M-h>', '<C-w><')  -- viszintes csökkentés 
map('n', '<M-l>', '<C-w>>')  -- viszintes növelés
map('n', '<M-j>', '<C-w>-')  -- függőleges csökkentés
map('n', '<M-k>', '<C-w>+')  -- függőleges nővelé

-- Ablakok közötti gyors váltás
map('n', '<M-w><left>', '<C-w>h')    -- balra
map('n', '<M-w><right>', '<C-w>l')   -- jobbra
map('n', '<M-w><down', '<C-w>j')     -- le
map('n', '<M-w><up>', '<C-w>k')      -- fel

-- Az F1 gombot úgy használjuk mint az ESC-et
map('', '<F1>', '<ESC') 

-- Terminálból kilépés
map('t', '<ESC>', [[<C-\><C-n>]])
map('n', '<C-t>', ':ToggleTerm<CR>')

-- Fájl(ok) mentése
map('n', '<C-s>', ':w<CR>')         -- aktuális puffer mentése
-- map('n', '<C-S>', ':wall<CR>')      -- minden puffer mentése
map('i', '<C-s>', '<ESC>:w<CR>i')

-- Aktuális munkafolyamat ablakainak és puffereinek mentése
map('n', '<leader>s', ':mksession<CR>')

-- Létrehoz egy új fájlt a kurzor alatti névvel
map('n', '<leader>nf', ':e <cfile><CR>')

-- Sorok mozgatása különböző üzemmódokban:
-- Normál módban
map('n', '<A-DOWN>', ':m+1<CR>==')
map('n', '<A-UP>', ':m-2<CR>==')
-- Beszúrásos módban
map('i', '<A-DOWN>', '<ESC>:m+1<CR>==gi')
map('i', '<A-UP>', '<ESC>:m-2<CR>==gi')
-- Vizuális módban
-- A kijelölt sorokat mozgatja
map('v', '<A-DOWN>', ":m'>+1<CR>gv=gv")
map('v', '<A-UP>', ":m'<-2<CR>gv=gv")
-- A kijelül rész tudjuk jobbra-balra mozgatni
map('x', '<', '<gv')
map('x', '>', '>gv')

-- Kereséssel kapcsolatos dolgok
map('n', '/', [[/\v]])
map('v', '/', [[/\v]])
map('n', '<leader>/', ':nohlsearch<CR>')


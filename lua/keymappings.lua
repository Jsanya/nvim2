-- Keymappings beállítások

-- Segitő funkció a könnyebb kezelés miatt
local function keymap(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd 

-- Ugyanaz mint ha ESC -t nyomnánk insert módban
-- keymap('i', 'jk', '<Esc>')           -- jk to escape



-- Új függőleges, vizszintes felosztás nyítása, fokusz odahelyezése
keymap('n', '<leader>nv', ':vsplit<CR>')  -- új függöleges felosztás
keymap('n', '<leader>nvf', ':vnew<CR>')    -- ua. + új fájl
keymap('n', '<leader>ns', ':split<CR>')    -- új vizszintes felosztás

-- Puffer kezelés (ciklikus)
keymap('n', 'ú', ':bn<CR>')        -- következő puffer
keymap('n', 'ő', ':bp<CR>')      -- előző puffer

-- Tabok kezelése (ciklikus)
keymap('n', 'ü', ':tabprevious<CR>')   -- előző puffer
keymap('n', 'ó', ':tabnext<CR>')       -- következő puffer
keymap('n', 'nt', ':tabnew<CR>')       -- következő puffer


--Ablak átméretezés
keymap('n', '<M-h>', '<C-w><')  -- viszintes csökkentés 
keymap('n', '<M-l>', '<C-w>>')  -- viszintes növelés
keymap('n', '<M-j>', '<C-w>-')  -- függőleges csökkentés
keymap('n', '<M-k>', '<C-w>+')  -- függőleges nővelé

-- Ablakok közötti gyors váltás
keymap('n', '<M-w><left>', '<C-w>h')    -- balra
keymap('n', '<M-w><right>', '<C-w>l')   -- jobbra
keymap('n', '<M-w><down', '<C-w>j')     -- le
keymap('n', '<M-w><up>', '<C-w>k')      -- fel

-- Az F1 gombot úgy használjuk mint az ESC-et
keymap('i', '<F1>', '<ESC>', {desc = "Kilépés az insert üzemmódból"}) 

-- Terminálból kilépés
keymap('t', '<ESC>', [[<C-\><C-n>]])
keymap('n', '<C-t>', ':ToggleTerm<CR>')

-- Fájl(ok) mentése
keymap('n', '<C-s>', ':w<CR>')         -- aktuális puffer mentése
-- keymap('n', '<C-S>', ':wall<CR>')      -- minden puffer mentése
keymap('i', '<C-s>', '<ESC>:w<CR>i')

-- Aktuális munkafolyamat ablakainak és puffereinek mentése
keymap('n', '<leader>s', ':mksession<CR>')

-- Létrehoz egy új fájlt a kurzor alatti névvel
keymap('n', '<leader>nf', ':e <cfile><CR>')

-- Sorok mozgatása különböző üzemmódokban:
-- Normál módban
keymap('n', '<A-DOWN>', ':m+1<CR>==', {desc = "Lefelé mozgat"}) 
keymap('n', '<A-UP>', ':m-2<CR>==')
-- Beszúrásos módban
keymap('i', '<A-DOWN>', '<ESC>:m+1<CR>==gi')
keymap('i', '<A-UP>', '<ESC>:m-2<CR>==gi')
-- Vizuális módban

-- A kijelölt sorokat mozgatja
keymap('v', '<A-DOWN>', ":m'>+1<CR>gv=gv")
keymap('v', '<A-UP>', ":m'<-2<CR>gv=gv")

-- A kijelül rész tudjuk jobbra-balra mozgatni
keymap('x', '<', '<gv')
keymap('x', '>', '>gv')

-- Kereséssel kapcsolatos dolgok
keymap('n', '/', [[/\v]])
keymap('v', '/', [[/\v]])
keymap('n', '<leader>/', ':nohlsearch<CR>')



-- Pluginokhoz tartozó keymap beállítások

-- Glow plugin

local keymap = vim.api.nvim_set_keymap
local opt1 = {noremap = true}
local opt2 = {noremap = true, silent = true}

keymap('n', '<leader>m', ':Glow<CR>', opt1)

--

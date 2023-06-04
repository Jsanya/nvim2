--local utils = require('utils')

-- Álnevek a könnyebb használathoz
local vimcmd = vim.cmd     -- VimL utasítások végrehajtása
local o = vim.opt         -- Beállitások
local g = vim.g
local api = vim.api


vimcmd 'syntax enable'
vimcmd 'filetype plugin indent on'

-- Map vezető key beállítása
vim.g.mapleader = '-'
vim.g.maplocalleader = ','


-- Alapértelmezett beállítások
local default_options = {
    encoding = "utf-8",
    fileencoding = "utf-8",
    clipboard = "unnamedplus",      -- hozzáférés a rendszer vágólapjához
    backup = false,                 -- biztonsági mentés nincs
    swapfile = false,               -- ne készitsen swap fájlt
    autoread = true,                -- automatikusan újra olvassa a fáljt, ha 
                                    -- azt egy külső program megváltoztatja

    -- Sorok formázása
 
    -- Behúzás, tabulátor 
    tabstop = 4,                    -- szóközök száma TAB-onként
    softtabstop = 4,
    shiftwidth = 4,                 -- eltoláskor a szóközök száma
    shiftround = true,              -- sorok eltolásakor kerekitse a shiftwidth
                                    -- legközelebbi többszörösére
    smartindent = true,             -- okos bebúzás
    expandtab = true,               -- tabulátorok szóközzéké alakítása


    -- backspace = {"indent", "eol", "start"},
    textwidth = 80,                  -- sor széllessége
    -- o.signcolumn = "yes:1"    -- jelölő oszlop bekapcs
    wrap = true,                    -- hosszú sorok is láthatóvá válnak
    colorcolumn = "80",

-- Kurzor
    cursorline = true,
    cursorcolumn = false,
    scrolloff = 4,
    sidescrolloff = 4,
    wrap = true,

    timeout = true,
    timeoutlen=1000,

    undofile = true,
    ruler = false,

    hidden = true,

    -- Ablakfelosztás iránya
    splitbelow = true,
    splitright = true,

    -- vim.cmd 'o guifont=DroidSansMono\\ Nerd\\ Font:18'

    completeopt = "menu,menuone,noselect",

    listchars = { eol = "↴", trail = "." },

    termguicolors = true,
    list = true,                             -- láthatatlan karakterek mutatása

    -- Keresési beállítások
    incsearch = true,    -- Részleges egyezéseket megjelenítő növekményes keresés.
    ignorecase = true,   -- kis, nagybetűk figyelmen kívűl hagyása
    smartcase = true,    -- A keresés automatikus váltása ki- és nagybetűkre, ha a keresés lekérdezés nagybetűket tartalmaz
    hlsearch = true,     -- a keresés kiemelésének engedélyezése 
    showmatch = true,    -- találat számainak megjelenítése
    inccommand = "split",

-- Sorok számozása, automatizálása
    number = true,
}

for k, v in pairs(default_options) do 
    vim.opt[k] = v
end 


-- Saját parancsok

-- Újratölti a konfigurációnkat
api.nvim_create_user_command('ReloadConfig', 'source $MYVIMRC', {})





-- vimcmd([[
--augroup numbertoggle
--autocmd!
--autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
--autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
--augroup END
--]])


require('lualine').setup()
--
require("bufferline").setup()

-- Puffer megnyitásakor a kurzor az utoljára használt pozicióba áll
vim.cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
]]


-- Highlight on yank
-- Másolandó szöveg kiemelése 1 mp-ig
-- api.nvim_create_autocmd('TextYankPost', {
--     group = textyank,
--     callback = function()
--         vim.highlight.on_yank({ higroup = 'Visual', timeout = 1000})
--     end,
-- })
--

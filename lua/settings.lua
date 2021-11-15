--local utils = require('utils')

-- Álnevek a könnyebb használathoz
local vimcmd = vim.cmd     -- VimL utasítások végrehajtása
local set = vim.opt         -- Beállitások
local g = vim.g



vimcmd 'syntax enable'
vimcmd 'filetype plugin indent on'

-- Map vezető key beállítása
vim.g.mapleader = '-'
vim.g.maplocalleader = ','

-- Sorok formázása
-- Behúzás, tabulátor 
set.tabstop = 4             -- tab mérete 
set.softtabstop = 4         
set.shiftwidth = 4          -- eltoláskor a behúzás mérete
set.shiftround = true       -- sorok eltolásakor kerekitse a shiftwidth legközelebbi többszörösére
set.smartindent = true      -- okos bebúzás
set.expandtab = true        -- tabulátorok szóközzéké alakítása


set.wrap = true
set.textwidth = 99          -- sor széllessége
set.signcolumn = 'yes'

set.timeout = true
set.timeoutlen=1000


set.scrolloff = 4

set.undofile = true
set.ruler = false

set.hidden = true

-- Ablakfelosztás íránya
set.splitbelow = true
set.splitright = true

-- vim.cmd 'set guifont=DroidSansMono\\ Nerd\\ Font:18'

set.completeopt = "menuone,noselect"

set.listchars = { eol = "↴" }

set.termguicolors = true

-- Keresési beállítások
set.incsearch = true    -- Részleges egyezéseket megjelenítő növekményes keresés.
set.ignorecase = true   -- kis, nagybetűk figyelmen kívűl hagyása
set.smartcase = true    -- A keresés automatikus váltása ki- és nagybetűkre, ha a keresés lekérdezés nagybetűket tartalmaz
set.hlsearch = true     -- a keresés kiemelésének engedélyezése 
set.showmatch = true    -- találat számainak megjelenítése


-- Sorszámozás kezelése, automatizálása
set.number = true

vimcmd([[
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END
]])





require('lualine').setup()
require("bufferline").setup()

-- Highlight on yank
vimcmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

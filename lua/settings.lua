--local utils = require('utils')

-- Álnevek a könnyebb használathoz
local vimcmd = vim.cmd     -- VimL utasítások végrehajtása
local set = vim.opt         -- Beállitások
local g = vim.g
local api = vim.api


vimcmd 'syntax enable'
vimcmd 'filetype plugin indent on'

-- Map vezető key beállítása
vim.g.mapleader = '-'
vim.g.maplocalleader = ','


set.clipboard = "unnamedplus"

-- Sorok formázása
-- Behúzás, tabulátor 
set.tabstop = 4             -- tab mérete 
set.softtabstop = 4         
set.shiftwidth = 4          -- eltoláskor a behúzás mérete
set.shiftround = true       -- sorok eltolásakor kerekitse a shiftwidth legközelebbi többszörösére
set.smartindent = true      -- okos bebúzás
set.expandtab = true        -- tabulátorok szóközzéké alakítása


set.backspace = {"indent", "eol", "start"}
set.textwidth = 99          -- sor széllessége
set.signcolumn = "yes:1"    -- jelölő oszlop bekapcs



-- Kurzor
set.cursorline = true
set.cursorcolumn = false
set.scrolloff = 4
set.wrap = true

set.timeout = true
set.timeoutlen=1000



set.undofile = true
set.ruler = false

set.hidden = true

-- Ablakfelosztás iránya
set.splitbelow = true
set.splitright = true

-- vim.cmd 'set guifont=DroidSansMono\\ Nerd\\ Font:18'

set.completeopt = "menu,menuone,noselect"

set.list = true                             -- láthatatlan karakterek mutatása
set.listchars = { eol = "↴", trail = "." }

set.termguicolors = true

-- Keresési beállítások
set.incsearch = true    -- Részleges egyezéseket megjelenítő növekményes keresés.
set.ignorecase = true   -- kis, nagybetűk figyelmen kívűl hagyása
set.smartcase = true    -- A keresés automatikus váltása ki- és nagybetűkre, ha a keresés lekérdezés nagybetűket tartalmaz
set.hlsearch = true     -- a keresés kiemelésének engedélyezése 
set.showmatch = true    -- találat számainak megjelenítése
set.inccommand = "split"

-- Sorok számozása, automatizálása
set.number = true

vimcmd([[
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END
]])

require('lualine').setup()
--
require("bufferline").setup()

-- Puffer megnyitásakor a kurzor az utoljára használt pozicióba áll
vim.cmd [[
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
]]


-- Highlight on yank
-- Másolandó szöveg kiemelése 1 mp-ig
api.nvim_create_autocmd('TextYankPost', {
    group = textyank,
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual', timeout = 1000})
    end,
})



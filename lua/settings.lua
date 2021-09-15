--local utils = require('utils')

local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o         -- úgy viselkedik min a :set xx
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'

-- Map leader key beállítása
vim.g.mapleader = '-'
vim.g.maplocalleader = ','

-- Behúzás 
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true
opt.smartindent = true
opt.expandtab = true

opt.timeout = true
opt.timeoutlen=500


opt.scrolloff = 4

opt.undofile = true
opt.ruler = false

opt.hidden = true
opt.ignorecase = true

-- Ablakfelosztás íránya
opt.splitbelow = true
opt.splitright = true


opt.completeopt = "menuone,noselect"



opt.termguicolors = true

--[[
utils.opt('o', 'smartcase', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
--]]


require('lualine').setup()
require("bufferline").setup()
-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

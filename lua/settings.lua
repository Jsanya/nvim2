local utils = require('utils')

local cmd = vim.cmd
local opt = vim.opt
local g = vim.g
local o = vim.o
local indent = 4

cmd 'syntax enable'
cmd 'filetype plugin indent on'


o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true

opt.undofile = true
opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
o.completeopt = "menuone,noselect"

vim.opt.termguicolors = true

--[[
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
utils.opt('o', 'hidden', true)
utils.opt('o', 'ignorecase', true)
utils.opt('o', 'scrolloff', 4 )
utils.opt('o', 'shiftround', true)
utils.opt('o', 'smartcase', true)
utils.opt('o', 'splitbelow', true)
utils.opt('o', 'splitright', true)
utils.opt('o', 'wildmode', 'list:longest')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
--]]


require('lualine').setup()
require("bufferline").setup{}
-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

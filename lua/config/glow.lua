-- glow konfig

local keymap = vim.api.nvim_set_keymap
local opt1 = {noremap = true}
local opt2 = {noremap = true, silent = true}

keymap('n', '<leader>m', ':Glow<CR>', opt1)


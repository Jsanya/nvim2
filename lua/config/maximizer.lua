-- vim-maximizer plugin konfigurációja



vim.api.nvim_set_keymap('n', '<F12>', ':MaximizerToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<F12>', ':MaximizerToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<F12>', ':MaximizerToggle<CR>', {noremap = true, silent = true})

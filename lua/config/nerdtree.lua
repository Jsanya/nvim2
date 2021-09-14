-- Nerdtree konfiguráció



-- F2 billenytű hozzárendelése (megnyítás/bezárás)
vim.api.nvim_set_keymap('n', '<F2>', ':NERDTreeToggle<CR>', {noremap = true, silent = true})


-- Keymappings beállítások

-- Segitő funkció a könnyebb kezelés miatt
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd 


map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape



-- Új függőleges felosztás nyítása, fokusz odahelyezése
map('n', '<leader>nv', '  <cmd>vsplit')
map('n', '<leader>nvf', '<cmd>vnew')
map('n', '<leader>'ns, '<cmd>split')

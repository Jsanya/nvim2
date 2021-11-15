-- Telescope plugin beállításai


--[[
nnoremap <leader>fp <cmd>Telescope<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fd <cmd>Telescope file_browser<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

--]]
--
--


local keymap = vim.api.nvim_set_keymap
local opt1 = {noremap = true}
local opt2 = {noremap = true, silent = true}

keymap('n', '<leader>ft', '<cmd>Telescope<CR>', opt1)
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opt1)
keymap('n', '<leader>fb', '<cmd>Telescope file_browser<CR>', opt1)
keymap('n', '<leader>fp', '<cmd>Telescope buffers<CR>', opt1)

keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opt1)
keymap('n', '<leader>fc', '<cmd>Telescope lsp_document_symbols<CR>', opt1)


-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require('telescope').load_extension('fzf')

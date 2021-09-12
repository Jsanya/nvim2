lua require('plugins')



nnoremap <silent> <leader>fu <cmd>Telescope lsp_references<cr>
nnoremap <silent> <leader>gd <cmd>Telescope lsp_definitions<cr>
nnoremap <silent> <leader>rn <cmd>lua vim.lsp.buf.rename()<cr>
nnoremap <silent> <leader>xd <cmd>Telescope lsp_document_diagnostics<cr>
nnoremap <silent> <leader>xD <cmd>Telescope lsp_workspace_diagnostics<cr>
nnoremap <silent> <leader>xn <cmd>lua vim.lsp.diagnostic.goto_next()<cr>
nnoremap <silent> <leader>xp <cmd>lua vim.lsp.diagnostic.goto_prev()<cr>
nnoremap <silent> <leader>xx <cmd>Telescope lsp_code_actions<cr>
nnoremap <silent> <leader>xX <cmd>%Telescope lsp_range_code_actions<cr>

vim.g.OmniSharp_server_use_mono = 1

-- omnisharp lsp config 
--[[
require'lspconfig'.omnisharp.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
  cmd = { "~/.omnisharp/bin/run ", "--languageserver" , "--hostPID", tostring(pid) },
}
--]]

--[[
local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "/home/sanyi/omnisharp/run"
-- on Windows
-- local omnisharp_bin = "/path/to/omnisharp/OmniSharp.exe"
require'lspconfig'.omnisharp.setup{
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) };
  
}
--]]

-- Install packer
--[[ local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git:', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end
--]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- so packer can update itself
  
  use { -- nice interface for LSP functions (among other things)
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'},{'nvim-lua/plenary.nvim'}}
  }

  -- Color scheme
  use { 'sainnhe/gruvbox-material' }


  use { 'hoob3rt/lualine.nvim',
  	requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }



  use 'neovim/nvim-lspconfig' -- native LSP support
  use { 'nvim-lua/completion-nvim' }

  -- use 'hrsh7th/nvim-cmp' -- autocompletion framework
  -- use 'hrsh7th/cmp-nvim-lsp' -- LSP autocompletion provider
  
  -- Lua development
  use { 'tjdevries/nlua.nvim' }


  -- Vim dispatch
  use { 'tpope/vim-dispatch' }

  -- Fugitive for Git
  use { 'tpope/vim-fugitive' }


end)





-- autocomplete config
--[[local cmp = require 'cmp'
cmp.setup {
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    })
  },
  sources = {
    { name = 'nvim_lsp' },
  }
}
--]]


--[[
-- omnisharp lsp config
require'lspconfig'.omnisharp.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
  cmd = { "/path/to/omnisharp-roslyn/bin/omnisharp/run", "--languageserver" , "--hostPID", tostring(pid) },
}
--]]

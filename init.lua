local fn = vim.fn

-- Auto install packer.nvim if not exists
-- Automatikusan instalálja a packer csomagkezelőt ha nem létezik
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

-- Automatikusan futtatja a :PacherCompile parancsot, ha a plugins.lua frissül
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end


-- Sensible defaults
require('settings')

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install plugins
require('plugins')

-- Key mappings
require('keymappings')

-- Setup Lua language server using submodule
require('lsp_lua')

-- Another option is to groups configuration in one folder
require('config')

-- OR you can invoke them individually here
--require('config.colorscheme')  -- color scheme
--require('config.completion')   -- completion
--require('config.fugitive')     -- fugitive



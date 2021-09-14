-- Install packer
--[[ local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git:', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end
--]]

return require('packer').startup(function()
    -- Csomagkezelő 
    use {'wbthomason/packer.nvim'} -- so packer can update itself

    -- Git verziókezelő 
    use {'tpope/vim-fugitive'} -- Git commands in nvim
    use {'tpope/vim-rhubarb'} -- Fugitive-companion to interact with github
    -- Változások mutatása
    use {'mhinz/vim-signify'}

  
    -- Fájlkezelő
    use {'preservim/nerdtree'}
    use {'ryanoasis/vim-devicons'}
    use {'Xuyuanp/nerdtree-git-plugin'}  -- display git status within Nerdtree

    -- Státusz sor kezelő
    use { 'hoob3rt/lualine.nvim',
  	    requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Pufferek kezelése
    use {'akinsho/nvim-bufferline.lua', 
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Kezdőképernyő
    use {'mhinz/vim-startify'}


    -- Kommentelő
    use {'preservim/nerdcommenter'}

    -- use 'ludovicchabant/vim-gutentags}' -- Automatic tags management

  
    use { -- nice interface for LSP functions (among other things)
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'},
                {'nvim-lua/plenary.nvim'}}
    }

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Zárojelek automatikus párosítása
    use {'windwp/nvim-autopairs'}

    -- Kódformázás
    use {'sbdchd/neoformat'}

    -- Maximálja illetve visszaállítja az aktuális ablak méretét
    use {'szw/vim-maximizer'}

    -- Egy vagy több sort mozgat függölegesen
    use {'matze/vim-move'}

    -- Aláhúzza a kurzor alatti szót a fájlban
    use {'itchyny/vim-cursorword'}

    -- A puffer írása előtt létrehozz minden nem létező könyvtárat
    use {'pbrisbin/vim-mkdir'}




    -- Color scheme
    use { 'sainnhe/gruvbox-material' }

    use {'rafi/awesome-vim-colorschemes'}
    use {'morhetz/gruvbox'}
    use {'lifepillar/vim-gruvbox8'}

    -- Szinkódokat szinesben jeleniti meg
    use {'norcalli/nvim-colorizer.lua'}


    use 'neovim/nvim-lspconfig' -- native LSP support
    use { 'nvim-lua/completion-nvim' }

    -- use 'hrsh7th/nvim-cmp' -- autocompletion framework
    -- use 'hrsh7th/cmp-nvim-lsp' -- LSP autocompletion provider
  
    -- Lua development
    use { 'tjdevries/nlua.nvim' }


    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Fordító program
    use {'voldikss/vim-translator'}


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

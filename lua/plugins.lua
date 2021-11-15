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
    use 'wbthomason/packer.nvim' -- so packer can update itself

    -- Git verziókezelő 
    use 'tpope/vim-fugitive' -- Git commands in nvim
    use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
    -- Változások mutatása
    -- use 'mhinz/vim-signify'
    
    use {
        'lewis6991/gitsigns.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        -- tag = 'release' -- To use the latest release
    }

    -- Terminál okosító
    use "akinsho/toggleterm.nvim"

    -- Fájlkezelő
    use 'preservim/nerdtree'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'  -- display git status within Nerdtree

    -- Státusz sor kezelő
    use { 'hoob3rt/lualine.nvim',
  	    requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    
    -- Behúzások mutatása
    use 'lukas-reineke/indent-blankline.nvim'

    -- Pufferek kezelése
    use {'akinsho/nvim-bufferline.lua', 
        requires = 'kyazdani42/nvim-web-devicons'
    }
    
    -- Automatikus mentés
    use "Pocco81/AutoSave.nvim"


    -- Kezdőképernyő
    use 'mhinz/vim-startify'


    -- Kommentelő
    -- use 'preservim/nerdcommenter'
    use 'b3nj5m1n/kommentary'

    -- use 'ludovicchabant/vim-gutentags}' -- Automatic tags management


    use { -- nice interface for LSP functions (among other things)
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'},
                {'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    use { 'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lsp',
        },
    }

    -- Kódtöredékek (snippet) használata

    use 'dcampos/nvim-snippy'

    use 'honza/vim-snippets'
    use 'dcampos/cmp-snippy'

    use 'simrat39/symbols-outline.nvim'

    -- Zárojelek automatikus párosítása
    use 'windwp/nvim-autopairs'

    -- Kódformázás
    use 'sbdchd/neoformat'

    -- Maximálja illetve visszaállítja az aktuális ablak méretét
    use 'szw/vim-maximizer'

    -- Egy vagy több sort mozgat függölegesen
    use 'matze/vim-move'

    -- Aláhúzza a kurzor alatti szót a fájlban
    use 'itchyny/vim-cursorword'

    -- A puffer írása előtt létrehozz minden nem létező könyvtárat
    use 'pbrisbin/vim-mkdir'




    -- Color scheme
    use 'sainnhe/gruvbox-material'

    use 'rafi/awesome-vim-colorschemes'
    use 'morhetz/gruvbox'
    use 'lifepillar/vim-gruvbox8'

    -- Szinkódokat a programkódban szinesben jeleniti meg
    use 'norcalli/nvim-colorizer.lua'

    -- Nyelvi szerver (LSP) támogatás 
    use 'neovim/nvim-lspconfig' -- native LSP support
    use 'kabouzeid/nvim-lspinstall'
  
    -- Lua development
    use 'tjdevries/nlua.nvim' 


    -- Vim dispatch
    use 'tpope/vim-dispatch'

    -- Fordító program
    use 'voldikss/vim-translator'

    -- VimWiki  --> Saját tudásbázis  
    use 'vimwiki/vimwiki'

    -- Markdown fájlok előnézete
    use 'ellisonleao/glow.nvim'

    -- Regiszterek kényelmes megtekintése, használata
    use 'gennaro-tedesco/nvim-peekup'
    
end)




--[[
-- autocomplete config
local cmp = require 'cmp'
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
  cmd = { "Omnisharp/bin/omnisharp/run", "--languageserver" , "--hostPID", tostring(pid) },
} 
--]]

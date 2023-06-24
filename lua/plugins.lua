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


    -- Könyvjelzők használata
    use 'chentoast/marks.nvim'

    -- független modulokból álló könyvtár

    use 'echasnovski/mini.nvim'

    -- Terminál okosító
    -- use "akinsho/toggleterm.nvim"
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    -- Fájl kezelő
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

    -- Státusz sor kezelő
    use { 'hoob3rt/lualine.nvim',
  	    requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- LSP használatához
    use {"williamboman/mason.nvim",
        run = ":MasonUpdate"        -- :MasonUpdate updates registry contents
    }

    use {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
}

    -- Nyelvi szerver (LSP) támogatás 
    use {'jose-elias-alvarez/null-ls.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }

    use { -- nice interface for LSP functions (among other things)
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'},
        {'nvim-lua/plenary.nvim'}}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Treesitter
    -- Csak installáláskor:
    -- use { 'nvim-treesitter/nvim-treesitter',
    --    run = function() require('nvim-treesitter.install').update(
    --    { with_sync = true }) end,
    --}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-textobjects'





    use 'rcarriga/nvim-notify'



    -- Behúzások mutatása
    use 'lukas-reineke/indent-blankline.nvim'

    -- Pufferek kezelése
    use {'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Sorvégét jelző oszlop használata
    use 'Bekaboo/deadcolumn.nvim'

    -- Automatikus mentés
    use "Pocco81/auto-save.nvim"


    -- Kezdőképernyő
    -- Startify szerű
    use {
        'goolord/alpha-nvim',
        --requires = { 'kyazdani42/nvim-web-devicons' },
        requires = {'nvim-tree/nvim-web-devicons'},
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }


    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        end
    }

    -- Teendők, megjegyzések áttekintése 
    -- TODO, HACK, WARN, PERF, NOTE, TEST stb. 
    use {
        'folke/todo-comments.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        --config = function()
          --  require("todo-comments").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        --    }
        --end
    }

    --
    -- Sorok kommentelése
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }



    -- use 'neovim/nvim-lspconfig' -- native LSP support
    -- use 'williamboman/nvim-lsp-installer'

    --use 'kabouzeid/nvim-lspinstall'

    -- Befejezés, kiegészítés 
    use { 'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-cmdline',
        },
    }

    -- Kódrészletek (töredékek) 
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })
    use "rafamadriz/friendly-snippets"

    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }

    -- Kódtöredékek (snippet) használata
    -- use 'dcampos/nvim-snippy'
    -- use 'dcampos/cmp-snippy'
    --
    -- use 'honza/vim-snippets'
    --
    use 'simrat39/symbols-outline.nvim'


    -- Zárojelek automatikus párosítása
    use 'windwp/nvim-autopairs'

    -- Kódformázás
    -- use 'sbdchd/neoformat'
    use 'mhartington/formatter.nvim'

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
    use 'nvchad/nvim-colorizer.lua'

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
    -- use 'gennaro-tedesco/nvim-peekup'  

    -- Egyszerű, minimális projekt (és egy globális) megjegyzés készítése
    use 'JellyApple102/flote.nvim'

    -- Bionikaszerű olvasás lehetősége. Ez segít tömör szövegek olvasásában
    use 'JellyApple102/easyread.nvim'

end)




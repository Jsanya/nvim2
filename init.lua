-- Install packer
-- Auto install packer.nvim if not exists
-- Automatikusan instalálja a packer csomagkezelőt ha nem létezik
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
   is_bootstrap = true
   vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
   vim.cmd[[packadd packer.nvim]]
end

-- Sensible defaults
require('settings')     -- Érzékenyebb alapbeállítások

-- Install plugins
require('plugins')      -- Pluginok installálása

-- Autocmds
require('autocmds')     -- Automatikus parancsok beállítása

-- Key mappings
require('keymappings')  -- Billenyűkötések beállítása 

-- Another option is to groups configuration in one folder
-- a config könyvtárban található init.lua futtatása, ami további config fájlokat hajt végre
-- itt vannak elhelyezve az egyes pluginok configurációja
require('config')


-- Pretty print lua tabble
-- Szép lua tábla kiíratás
function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
_G.dump(set)

-- Ez nem szükséges, csak játék
vim.notify("Minden a helyén! Szép napot kívánok! ")

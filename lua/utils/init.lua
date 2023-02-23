--- KISEGÍTŐ FÜGGVÉNYEK 

local M = {}
local fn = vim.fn


local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function M.opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= 'o' then scopes['o'][key] = value end
end


function M.map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Segédfüggvények a jdho konfigurációja alapján


-- Ellenőrizzük, hogy a megadott függvény futtatható-e 
-- Amennyiben igen a visszatéréési érték egy boolean tipusú tru, egyébként false
function M.executable(name)
    if fn.executable(name) > 0 then
        return true
    end
    return false
end


-- Ellenőrizzük, hogy a magadott fejlesztés, funkció elérhető-e  
-- feat: string tipusú lehet
--      feauture neve, 'nvim-0.7' vagy 'unix'
-- Visszatérés:  bool érték

M.has = function(feat)
    if fn.has(feat) == 1 then
        return true
    end
    return false
end


-- Létrehozza a könyvtárat ha az nem létezik
function M.may_create_dir(dir)
    local res = fn.isdirectory(dir)

    if res == 0 then
        fn.mkdir(dir, "p")
    end
end

-- Visszaadja az aktuálisan használt nevim verzió számát 
function M.get_nvim_version()
    local actual_ver = vim.version()

    local nvim_ver_str = string.format("%d.%d.%d", actual_ver.major, actual_ver.minor, actual_ver.patch)
    return nvim_ver_str
end


-- Véletlenszám generátor
function M.rand_int(low, high)
    math.randomseed(os.time())

    return math.random(low, high)
end

-- Véletlenszerűen kiválasz egy elemet a megadott szekvenciából 
function M.rand_element(seq)
    local idx = M.rand_int(1, #seq)   -- # seq elemeinek száma
    
    return seq[idx]
end


return M




-- Automatikus parancsok 
local api = vim.api         -- api hívások
local set = vim.opt         -- Beállitások

local function augroup(name)
  return api.nvim_create_augroup(name, { clear = true })
end

-- Highlight on yank
-- Másolandó rész kiemelése 1 mp-ig a kijelőlés után
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual', timeout = 1000})
    end,
})

-- Relativ sorszámozás bekapcsolása
vim.api.nvim_create_autocmd({"BufEnter", "FocusGained", "InsertLeave"}, {
        group = augroup("numbertoggleon"),
        callback = function()
            set.relativenumber = true
        end,
})
--  Realtiv sorszámozás kikapcsolása
vim.api.nvim_create_autocmd({"BufLeave", "FocusLost", "InsertEnter"}, {
        group = augroup("numbertoggleoff"),
        callback = function()
            set.relativenumber = false
        end,
})



-- close some filetypes with <q>
-- egyéb fájltipusok bezárása <q> gombbal
vim.api.nvim_create_autocmd("FileType", {
    group = augroup("close_with_q"),
    pattern = {
        "PlenaryTestPopup",
        "help",
        "lspinfo",
        "man",
        "notify",
        "git",
        "fugitive",
        "qf",
        "spectre_panel",
        --"startuptime",
        "tsplayground",
        "checkhealth",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})

-- wrap and check for spell in text filetypes
-- tördeli és és helyesírás ellenőrzés a text tipusú fájloknál
-- a helyesírás csak angol ezért kikapcsolva
vim.api.nvim_create_autocmd("FileType", {
    group = augroup("wrap_spell"),
    pattern = { "gitcommit", "markdown" },
    callback = function()
        vim.opt_local.wrap = true
        -- vim.opt_local.spell = true
    end,
})

-- Check if we need to reload the file when it changed
-- Megvizsgálja a fájlt és ha megváltozott újratölti
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
    group = augroup("checktime"),
    command = "checktime",
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
-- Ha a fáljmentéskor a megadott könyvtár nem létezik, akkor létrehozza azt.
-- Ez a parancs a puffer lemezre írása előtt aktívizálódik. A visszahivó
-- függvény létrehozza a fájl szülőkönyvtárait, ha az még nem létezik.
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = augroup("auto_create_dir"),
    callback = function(event)
        if event.match:match("^%w%w+://") then
            return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})

-- resize splits if window got resized
-- Ha az ablak mérete megváltozik, akkor újraméretezi a belső felosztást 
vim.api.nvim_create_autocmd({"VimResized"}, {
        group = augroup("resize:splits"),
        callback = function()
            vim.cmd("tabdo wincmd =")
        end,
})

-- Automatikusan futtatja a :PacherCompile parancsot, ha a valamelyik *.lua fájl frissül
vim.api.nvim_create_autocmd( "BufWritePost", {
    group = augroup("packer"),
    pattern = "lua",
    command = "PackerCompile",
})


-- A puffer megnyitásakor a kurzort az utoljára használt pozicíóban teszi
 vim.api.nvim_create_autocmd( "BufReadPost" , {
    group = augroup "last_loc" ,
    callback = function ()
        local mark = vim.api.nvim_buf_get_mark( 0 , '"' )
        local lcount = vim.api.nvim_buf_line_count( 0 )
        if mark[ 1 ] > 0  and mark[ 1 ] <= lcount then
            pcall (vim.api.nvim_win_set_cursor, 0 , mark)
    end
  end ,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})


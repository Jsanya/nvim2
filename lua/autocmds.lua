-- Autocmds konfig
local api = vim.api
local set = vim.opt         -- Beállitások

local function augroup(name)
  return api.nvim_create_augroup(name, { clear = true })
end

-- Highlight on yank
-- Másolandó rész kijelőlése
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        vim.highlight.on_yank()
    end,
})


vim.api.nvim_create_autocmd("BufEnter", "FocusGained", "InsertLeave", {
        group = autogrup(numbertoggle),
        callback = function()
            set.relativenumber = true
        end,
})


vimcmd([[
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END
]])



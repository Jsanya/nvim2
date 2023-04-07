-- Vimwiki konfigurálása

-- A programozáshoz
local wiki_prog = {
    name = 'Programozás',
    path = '~/vimwiki/programozas/',
    syntax = 'markdown',
    ext = '.md'
}

-- Egyéb dolgokhoz
local wiki_egyeb = {
        name = 'Egyebek',
        path = '~/vimwiki/egyebek/',
        syntax = 'markdown',
        ext = '.md'
}

vim.g.vimwiki_list = { wiki_prog, wiki_egyeb }
vim.g.vimwiki_ext2syntax = {
    ['.md'] = 'markdown',
    ['.markdown'] = 'markdown',
    ['.mdown'] = 'markdown'}

-- a vimwiki működését  a felsorolt útvonalra korlátozza
vim.g.vimwiki_global_ext = 0


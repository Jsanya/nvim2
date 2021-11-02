-- Vimwiki konfigurálása

-- A programozáshoz
local wiki_prog = {
    name = 'Programozás',
    path = '/home/sanyi/vimwiki/programozas/',
    syntax = 'markdown',
    ext = '.md'
}

-- Egyéb dolgokhoz
local wiki_egyeb = {
        name = 'Egyebek',
        path = '/home/sanyi/vimwiki/egyebek/',
        syntax = 'markdown',
        ext = '.md'
}

vim.g.vimwiki_list = { wiki_prog, wiki_egyeb }



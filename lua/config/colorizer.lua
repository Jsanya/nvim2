require 'colorizer'.setup {
    filetypes = {
        '*';    -- Kielemi az összes fáljtipusban.
        '!lua'; -- Kivéve a lua fájloknál
                -- Exclusion Only makes sense if '*' is specified!
    },
}

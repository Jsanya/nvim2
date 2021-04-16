"//////////////////////////////////////////////////////////////////////////////////////////////////
"             ___                                                                                 "
"            |_  |                                                                                "
"              | | ___  __ _ _ __  _   _  __ _                                                    "
"              | |/ __|/ _` | '_ \| | | |/ _` |                                                   "
"          /\__/ /\__ \ (_| | | | | |_| | (_| |                                                   "
"          \____/ |___/\__,_|_| |_|\__, |\__,_|                                                   "
"                                   __/ |                                                         "
"           Juhász Sándor          |___/        v0.1                                              "
"                                                                                                 "
"                                                                                                 "
"//////////////////////////////////////////////////////////////////////////////////////////////////
"
" Saját konfiguráció a neovim szerkesztőhöz
"
"==================================================================================================


" A kompaktibilis módot kikapcsolni
if &compatible
    set nocompatible
endif

" Karakterkódolás
set encoding=utf-8
scriptencoding utf-8
set fileformats=unix,mac,dos
map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)


" Az oprendszer azonosítása:
let g:os_win = has('win32') || has('win64')
let g:os_linux = has('unix') && !has('macunix')
let g:os_mac = has('macunix')

let g:perjel = g:os_win ? '\' : '/'

"A nvim konfig könyvtár elérhetősége
let g:nvim_config_dir = stdpath('config')
let g:nvim_plugin_dir = stdpath('data').'/plugged'

" Konfig fájlok listája lefutási sorrendben.
let g:configfiles = [
    \ 'general.vim',
    \ 'plugin_list.vim',
    \ 'plugin_config.vim']

" A konfig állományok meghívása a fenti sorrendben:
for s:fnev in g:configfiles
    execute 'source ' . g:nvim_config_dir . '/' . s:fnev
endfor

" A python3 elérhetőségének biztosítása az aktuális op-rendszerben:
if executable('python3')
   if g:os_win
        let g:python3_host_prog=substitute("C:/Python38/python", '.exe$', '', 'g')
    elseif g:os_linux || g:os_mac
        let g:python3_host_prog=exepath('python3')
    endif
else
    echoerr 'Python 3 nem található! Telepítsd vagy állítsd be az elérhetőségét (PATH)'
endif



" Az fenti beállítások megjelenítése:
echo 'RENDSZERINFO:'
echo '--------------------------------------------------------------'
if os_linux
    echo 'Oprendszer: Linux'
elseif os_mac
    echo "Oprendszer: Mac"
elseif os_win
    echo "Oprendszer: windows"
endif

echo 'Konfigurációs fájlok könyvtára: ' . nvim_config_dir
echo 'Pluginok könyvtára: ' . nvim_plugin_dir
echo 'Python3 elérhetősége: ' . python3_host_prog
echo 'Perjel' . g:perjel
echo '--------------------------------------------------------------'

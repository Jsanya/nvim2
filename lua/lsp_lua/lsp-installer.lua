local lsp_installer = require("nvim-lsp-installer")
local path = require("nvim-lsp-installer.path")

lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        },
        keymaps = {
            -- Keymap to expand a server in the UI
            -- Több részlet a szerverről
            toggle_server_expand = "<CR>",
            -- Keymap to install a server
            -- Szerver installálása
            install_server = "i",
            -- Keymap to reinstall/update a server
            -- Szerver újrainstallálása, frissítése
            update_server = "u",
            -- Keymap to uninstall a server
            -- Szerver eltávolítása
            uninstall_server = "X",
        },
    },
     -- The directory in which to install all servers.
     -- A könyvtár ahová a szerverek telepítésre kerülnek
    install_root_dir = path.concat { vim.fn.stdpath "data", "lsp_servers" },

    pip = {
        -- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
        -- and is not recommended.
        --
        -- Example: { "--proxy", "https://proxyserver" }
        install_args = {},
    },

    -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
    -- debugging issues with server installations.
    --log_level = vim.log.levels.INFO,
    log_level = vim.log.levels.DEBUG,
    -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
    -- servers that are requested to be installed will be put in a queue.
    -- Az egyidejüleg telepíthető szerverek száma.
    max_concurrent_installers = 4,
})

-- local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)


return {
    {'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
    },
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'nvim-java/nvim-java'},
    {'m4xshen/autoclose.nvim'},
    {
        'neovim/nvim-lspconfig',
        dependencies = { 'saghen/blink.cmp' },

        -- example using `opts` for defining servers
        opts = {
            servers = {
                lua_ls = {}
            }
        },
        config = function(_, opts)
            local lspconfig = require('lspconfig')
            for server, config in pairs(opts.servers) do
                -- passing config.capabilities to blink.cmp merges with the capabilities in your
                -- `opts[server].capabilities, if you've defined it
                config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
            end
        end
    },
    --{'hrsh7th/cmp-nvim-lsp'},
    --{'hrsh7th/nvim-cmp'},
    {'nvim-java/nvim-java'}
}


-- Easily configure LSPs
-- From: <https://github.com/mason-org/mason-lspconfig.nvim?tab=readme-ov-file>

return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        local lspconfig = require("lspconfig") -- You'll need this for server-specific setup
        local mason_lspconfig = require("mason-lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp") -- Used for LSP capabilities for cmp

        local capabilities = vim.tbl_deep_extend(
          "force",
          vim.lsp.protocol.make_client_capabilities(),
          cmp_nvim_lsp.default_capabilities() -- Integrates nvim-cmp capabilities
        )

        -- Inline error messages:        

        vim.diagnostic.config({
          virtual_text = {
            enable = true,          -- Enable virtual text diagnostics
            -- Set 'min' severity to control what gets shown inline
            -- 1 = Error, 2 = Warning, 3 = Info, 4 = Hint
            min = vim.diagnostic.severity.HINT, -- Shows all levels (Error, Warning, Info, Hint)
            -- min = vim.diagnostic.severity.WARNING, -- Only show Warnings and Errors inline
            -- min = vim.diagnostic.severity.ERROR, -- Only show Errors inline
            source = false,          -- Show the source (e.g., "lua_ls")
            prefix = "●",          -- Prefix for the diagnostic message (e.g., "● Error message")
          },
          signs = false,
          update_in_insert = false, -- Don't update diagnostics while typing
          underline = true,         -- Underline offending code
          severity_sort = true,     -- Sort diagnostics by severity
          float = {                 -- Settings for the hover floating window
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
          },
        })

        require("mason-lspconfig").setup({
            -- A list of servers to automatically install if they're not already installed. 
            -- Example: { "rust_analyzer@nightly", "lua_ls" }
            ---@type string[]
            ensure_installed = {
                "lua_ls",
                "rust_analyzer",
                "pyright",
                "v_analyzer",
                "clangd",
                "gopls"
            },

            -- Whether installed servers should automatically be enabled via `:h vim.lsp.enable()`.
            --
            -- To exclude certain servers from being automatically enabled:
            -- ```lua
            --   automatic_enable = {
            --     exclude = { "rust_analyzer", "ts_ls" }
            --   }
            -- ```
            --
            -- To only enable certain servers to be automatically enabled:
            -- ```lua
            --   automatic_enable = {
            --     "lua_ls",
            --     "vimls"
            --   }
            -- ```
            ---@type boolean | string[] | { exclude: string[] }
            automatic_enable = true,
        })
    end
}

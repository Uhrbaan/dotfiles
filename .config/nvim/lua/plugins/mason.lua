-- Easily install and manage LSP servers, DAP servers, linters, and formatters.
-- From: <https://github.com/mason-org/mason.nvim>

return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
}

-- Visualize blank lines by vertical bar symbol
-- From: <https://github.com/lukas-reineke/indent-blankline.nvim>

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},

    config = function()
        require("ibl").setup({
            indent = {
                -- hightlight = hightlight,
                char = "│"
            },
            scope = {
                enabled = true,
                show_start = false,
                show_end = false,
            }
        })
    end
}

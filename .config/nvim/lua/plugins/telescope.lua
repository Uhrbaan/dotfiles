-- Telescope, a nice fuzzy finder.
-- From: <https://github.com/nvim-telescope/telescope.nvim>

return {
    'nvim-telescope/telescope.nvim', 
    -- tag = '0.1.8',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup({})

        -- Keymaps for Telescope
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind [G]rep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind [B]uffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
    end
}

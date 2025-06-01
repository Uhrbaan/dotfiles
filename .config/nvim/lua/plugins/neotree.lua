-- Add filestructure sidebar
-- From: <https://github.com/nvim-neo-tree/neo-tree.nvim>

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
  	window = {
		position = "left", -- Can be "left", "right", "top", "bottom"
	      width = 30,
	      mapping_options = {
		-- This disables neo-tree from setting its own default keymaps,
		-- allowing you to define them yourself in the config function below.
		-- Set to true if you want neo-tree's default keymaps.
		noremap = true,
		nowait = true,
	      },
	},
	filesystem = {
		filtered_items = {
			visible_hidden_files = true, -- Shows dotfiles by default
			hide_dotfiles = false,      -- Don't hide dotfiles when visible_hidden_files is true
			hide_gitignore = true,      -- Hides files listed in .gitignore
			hide_by_name = {
			  --"node_modules",
			},
			hide_by_pattern = {
			  --"*.meta",
			  --"*/thumbs.db",
			},
			always_show = {            -- These files will always be shown even if filtered
			  -- ".gitignore",
			},
			never_show = {             -- These files will never be shown even if not filtered
			  -- ".DS_Store",
			  --"thumbs.db",
			},
		      },
	    },
  },
    config = function()
        vim.keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left toggle<CR>')
        vim.keymap.set('n', '<leader>es', ':Neotree git_status reveal left toggle<CR>')
    end
}

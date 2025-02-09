return {
	"catppuccin/nvim",
	name = "catppuccin", -- This is required for Lazy.nvim
	lazy = false, -- Load the theme immediately
	priority = 1000, -- Ensure it loads before other plugins
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Options: 'latte', 'frappe', 'macchiato', 'mocha'
			transparent_background = false, -- Set to true for transparency
			term_colors = true,
			styles = {
				comments = { "italic" },
				functions = { "bold" },
				keywords = { "italic" },
				variables = {},
			},
			integrations = {
				nvimtree = {
					enabled = true,
					show_root = false, -- Don't show root folder in NvimTree
					transparent_panel = true,
				},
				telescope = true,
				treesitter = true,
				gitsigns = true,
				lsp_trouble = true,
				cmp = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
				},
			},
		})
		vim.cmd.colorscheme("catppuccin") -- Apply the colorscheme
	end,
}

--return {
--  'shaunsingh/nord.nvim',
--  lazy = false,
--  priority = 1000,
--  config = function()
--    -- Example config in lua
--    vim.g.nord_contrast = true
--    vim.g.nord_borders = false
--    vim.g.nord_disable_background = true
--    vim.g.nord_italic = false
--    vim.g.nord_uniform_diff_background = true
--    vim.g.nord_bold = false
--
--    -- Load the colorscheme
--    require('nord').set()
--
--    -- Toggle background transparency
--    local bg_transparent = true
--
--    local toggle_transparency = function()
--      bg_transparent = not bg_transparent
--      vim.g.nord_disable_background = bg_transparent
--      vim.cmd [[colorscheme nord]]
--    end
--
--    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
--  end,
--}

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


-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_transparent = true
--vim.cmd("colorscheme tokyonight")

vim.g.catppuccin_flavour = "mocha"
local colors = require("catppuccin.palettes").get_palette()
require("catppuccin").setup({
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = { "italic" },
		operators = {},
	},
	integrations = {
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		nvimtree = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	highlight_overrides = {},
    custom_highlights = {
        TSParameter = { style = {} }
    }
})
vim.cmd("colorscheme catppuccin")


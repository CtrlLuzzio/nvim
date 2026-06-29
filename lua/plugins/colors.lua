local function transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
    {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	    transparency()
	end,
    },
    { "catppuccin/nvim",
	name = "catppuccin",
	priority = 1000 ,
	config = function ()
	    require("catppuccin").setup({
		flavour = "mocha",
		transparent_background = true,
	    })
	end,
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = "auto",
	}
    },
}

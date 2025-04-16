return {
	"akinsho/toggleterm.nvim",
	cmd = { "ToggleTerm", "TermExec" },
	keys = {
		{
			"<leader>th",
			"<cmd>ToggleTerm size=20 direction=horizontal<cr>",
			desc = "Toggle Horizontal Terminal",
		},
		{ 
			"<leader>tv", 
			"<cmd>ToggleTerm size=80 direction=vertical<cr>", 
			desc = "Toggle Vertical Terminal" 
		},
	},
	opts = {
		size = 10,
		shading_factor = 2,
		float_ops = { border = "rounded" },
	},
	highlights = {
		Normal = {
			guibg = "#011826",
		},
		NormalFloat = {
			guibg = "#011826",
		},
		FloatBorder = {
			guifg = "#011826",
			guibg = "#011826",
		},
	},
}

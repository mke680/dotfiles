return {
	'brenoprata10/nvim-highlight-colors',
	-- event = "VeryLazy",
	event = "BufEnter",
    	opts = {
		enable_hex = true,
		enable_rgb = true
	},
	config = function()
		-- Attaches to every FileType mode
		require('nvim-highlight-colors').setup(
		)
	end,
}

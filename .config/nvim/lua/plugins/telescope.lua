-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
		"nvim-telescope/telescope-fzf-native.nvim", build = "make", 
		"nvim-telescope/telescope-file-browser.nvim", build = "make",
	},
	keys = {
		-- {
		-- 	"<leader>ff",
		-- 	"<cmd>Telescope find_files<cr>",
		-- 	desc = "Telescope find files",
		-- },
		{
			"<leader>f",
			"<cmd>Telescope file_browser<cr>",
			desc = "Telescope file browser",
		},
	},
	config = function()
		local telescope = require("telescope")
		local tele_actions = require("telescope.actions")
		local undo_actions = require("telescope-undo.actions")
		telescope.setup({
			defaults = {
				layout_config = {
					anchor = "center",
					height = 0.8,
					width = 0.9,
					preview_width = 0.6,
					prompt_position = "bottom",
				},
				-- borderchars = i.telescope,
				mappings = {
					i = {
						["<esc>"] = tele_actions.close,
					},
				},
			},
			extensions = {
				undo = {
					use_delta = true,
					side_by_side = true,
					entry_format = "󰣜  #$ID, $STAT, $TIME",
					layout_strategy = "flex",
					mappings = {
						i = {
							["<cr>"] = undo_actions.yank_additions,
							["<c-\\>"] = undo_actions.yank_deletions,
							["§"] = undo_actions.restore, -- term mapped to shift+enter
						},
					},
				},
				file_browser = {
					depth = 1,
					auto_depth = false,
					hidden = { file_browser = true, folder_browser = true },
					hide_parent_dir = false,
					collapse_dirs = false,
					prompt_path = false,
					quiet = false,
					dir_icon = "󰉓 ",
					dir_icon_hl = "Default",
					display_stat = { date = true, size = true, mode = true },
					git_status = true,
				},
			},
		})
		-- r.noremap("n", "<leader>f", function()
		-- 	telescope.extensions.file_browser.file_browser()
		-- end, "browse files")
		-- r.noremap("n", "<leader>.", function()
		-- 	telescope.extensions.file_browser.file_browser({
		-- 		path = vim.fn.stdpath("config"),
		-- 	})
		-- end, "nvim dotfiles")

		-- r.map_virtual({
		-- 	{ "<leader>u", icon = { icon = " ", hl = "Constant" } },
		-- 	{ "<leader>o", icon = { icon = " ", hl = "Constant" } },
		-- 	{ "<leader>f", icon = { icon = "󰙅 ", hl = "Constant" } },
		-- 	{ "<leader>.", icon = { icon = " ", hl = "Constant" } },
		-- })
	
		-- To get telescope-file-browser loaded and working with telescope,
		-- you need to call load_extension, somewhere after setup function:
		telescope.load_extension("undo")
		telescope.load_extension("file_browser")
		-- telescope.load_extension("fzf")
	end,
}

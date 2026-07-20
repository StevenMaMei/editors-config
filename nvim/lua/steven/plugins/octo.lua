return {
	"pwntester/octo.nvim",
	cmd = "Octo",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		picker = "telescope",
		enable_builtin = true,
		mappings = {
			review_diff = {
				toggle_viewed = { lhs = "<leader>grv", desc = "Toggle file reviewed status" },
			},
			file_panel = {
				toggle_viewed = { lhs = "<leader>grv", desc = "Toggle file reviewed status" },
			},
		},
	},
	keys = {
		-- General
		{ "<leader>go", "<cmd>Octo<cr>", desc = "Octo actions menu" },
		{ "<leader>gn", "<cmd>Octo notification list<cr>", desc = "Notifications" },

		-- PRs
		{ "<leader>gpl", "<cmd>Octo pr list<cr>", desc = "List PRs" },
		{ "<leader>gpm", "<cmd>Octo pr merge<cr>", desc = "Merge PR" },
		{ "<leader>gpd", "<cmd>Octo pr diff<cr>", desc = "PR diff" },
		{ "<leader>gpc", "<cmd>Octo pr commits<cr>", desc = "PR commits" },
		{ "<leader>gpf", "<cmd>Octo pr changes<cr>", desc = "PR changed files" },
		{ "<leader>gpo", "<cmd>Octo pr checkout<cr>", desc = "Checkout PR" },
		{ "<leader>gpb", "<cmd>Octo pr browser<cr>", desc = "Open PR in browser" },
		{ "<leader>gpu", "<cmd>Octo pr url<cr>", desc = "Copy PR URL" },

		-- Issues
		{ "<leader>gil", "<cmd>Octo issue list<cr>", desc = "List issues" },
		{ "<leader>gic", "<cmd>Octo issue create<cr>", desc = "Create issue" },
		{ "<leader>gib", "<cmd>Octo issue browser<cr>", desc = "Open issue in browser" },

		-- Reviews
		{ "<leader>grs", "<cmd>Octo review start<cr>", desc = "Start review" },
		{ "<leader>grr", "<cmd>Octo review resume<cr>", desc = "Resume review" },
		{ "<leader>grf", "<cmd>Octo review submit<cr>", desc = "Finish/submit review" },
		{ "<leader>grd", "<cmd>Octo review discard<cr>", desc = "Discard review" },
		{ "<leader>grc", "<cmd>Octo review comments<cr>", desc = "List review comments" },


		-- Comments
		{ "<leader>gca", "<cmd>Octo comment add<cr>", desc = "Add comment" },
		{ "<leader>gcd", "<cmd>Octo comment delete<cr>", desc = "Delete comment" },

		-- Labels & Assignees
		{ "<leader>gla", "<cmd>Octo label add<cr>", desc = "Add label" },
		{ "<leader>gld", "<cmd>Octo label remove<cr>", desc = "Remove label" },
		{ "<leader>gaa", "<cmd>Octo assignee add<cr>", desc = "Add assignee" },
		{ "<leader>gad", "<cmd>Octo assignee remove<cr>", desc = "Remove assignee" },
	},
}

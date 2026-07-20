return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diff working changes" },
    { "<leader>gs", "<cmd>DiffviewOpen --staged<cr>", desc = "Diff staged changes" },
    { "<leader>gb", "<cmd>DiffviewOpen main...HEAD<cr>", desc = "Diff branch vs main" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (current)" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "File history (all)" },
    { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
    { "<leader>ge", "<cmd>DiffviewFocusFiles<cr>", desc = "Focus file panel" },
  },
  opts = {
    enhanced_diff_hl = true,
    view = {
      default = {
        layout = "diff2_horizontal",
      },
    },
    file_panel = {
      listing_style = "tree",
      win_config = {
        position = "left",
        width = 35,
      },
    },
  },
}

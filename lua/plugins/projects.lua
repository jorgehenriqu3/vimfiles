return {
  {
    "Shatur/neovim-session-manager",
    lazy = false,
    priority = 101,
  },
  {
    "coffebar/neovim-project",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "Shatur/neovim-session-manager",
    },
    init = function()
      vim.opt.sessionoptions:append("globals")
    end,
    opts = {
      projects = {
        "~/dev/nu/*",
        "~/dev/*",
        "~/.config/*",
      },
    },
    keys = {
      { "<leader>pp", "<cmd>NeovimProjectDiscover<cr>", desc = "Projects" },
      { "<leader>ph", "<cmd>NeovimProjectHistory<cr>", desc = "Project History" },
      { "<leader>pr", "<cmd>NeovimProjectLoadRecent<cr>", desc = "Recent Project" },
    },
    lazy = false,
    priority = 100,
  },
}

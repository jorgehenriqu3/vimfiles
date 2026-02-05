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
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}

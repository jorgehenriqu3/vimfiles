return {
  {
    "nvim-telescope/telescope-project.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("project")
      require("telescope._extensions.project.config").setup({
        base_dirs = {
          "~/dev/nu",
        },
        hidden_files = false,
        order_by = "asc",
        search_by = "title",
      })
    end,
    keys = {
      { "<leader>fp", "<cmd>Telescope project<cr>", desc = "Find Projects" },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local projects_button = {
        action = "Telescope project",
        desc = " All Projects",
        icon = " ",
        key = "p",
      }
      
      table.insert(opts.config.center, 2, projects_button)
    end,
  },
}
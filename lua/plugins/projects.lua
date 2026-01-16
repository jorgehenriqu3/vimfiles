return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        detection_methods = { "pattern", "lsp" },
        patterns = { ".git", "project.clj", "package.json" },
        silent_chdir = true,
      })
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("telescope").setup({
        extensions = {
          project = {
            base_dirs = {
              { path = "~/dev/nu", max_depth = 4 },
            },
            hidden_files = false,
            order_by = "recent",
            search_by = "title",
            on_project_selected = function(prompt_bufnr)
              local project_actions = require("telescope._extensions.project.actions")
              project_actions.change_working_directory(prompt_bufnr, false)
            end,
          },
        },
      })

      require("telescope").load_extension("project")
    end,
  },
}

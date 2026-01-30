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
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },
  {
    "pmouraguedes/neodarcula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("neodarcula").setup({
        transparent = false,
        dim = false,
      })
      vim.cmd([[colorscheme neodarcula]])

      vim.api.nvim_set_hl(0, "Normal", { bg = "#2B2B2B" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#313335" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "#2B2B2B" })

      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#323232" })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#A9B7C6", bg = "#323232", bold = true })
      vim.api.nvim_set_hl(0, "Visual", { bg = "#214283" })

      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#313335" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#313335" })
      vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#3E4042" })

      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3E4042", bg = "NONE" })
      vim.api.nvim_set_hl(0, "VertSplit", { fg = "#3E4042", bg = "NONE" })

      vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#CC7832", bg = "#313335" })
      vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#A9B7C6", bg = "#313335" })

      vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "#313335" })
      vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = "#CC7832", bg = "#313335" })

      vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#CC7832", bg = "#313335" })
      vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "#313335" })

      vim.api.nvim_set_hl(0, "IncSearch", { fg = "#000000", bg = "#CC7832", bold = true })
      vim.api.nvim_set_hl(0, "Search", { fg = "#000000", bg = "#CC7832" })

      vim.api.nvim_set_hl(0, "Pmenu", { fg = "#A9B7C6", bg = "#313335" })
      vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#000000", bg = "#CC7832", bold = true })
      vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#3E4042" })
      vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#555555" })
    end,
  },
}

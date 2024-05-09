local plugins = {
  -- Auto Pairs
  {
    "windwp/nvim-autopairs"
  },
    -- Bufferline
  {
    "akinsho/bufferline.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons"
      },
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  -- Indentation Highlighting
  {
    "lukas-reineke/indent-blankline.nvim",
  },
    -- Rainbow Highlighting
  {
    "HiPhish/nvim-ts-rainbow2"
  },
  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
      dependencies = {
            "nvim-tree/nvim-web-devicons"
      },
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
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
           { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",
      }
    }
  },
  {
  "neovim/nvim-lspconfig",
    config = function ()
      require "configs.lspconfig"
    end
  },
}
return plugins

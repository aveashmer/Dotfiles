return {
  -- 1. Терминал (Ctrl + t)
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
  },

  -- 2. Управление проектами (Пробел + w + p)
  {
    "natecraddock/workspaces.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("workspaces").setup({
        hooks = {
          open = { "Oil ." },
        },
      })
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("workspaces")
      end
    end,
  },

  -- 3. Oil: Файловый менеджер (-)
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- 4. Lazygit (Пробел + g)
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- 5. VenvSelector (Пробел + v + s)
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    opts = {
      name = { "venv", ".venv" },
      auto_refresh = true,
    },
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },

  -- 6. Yazi внутри Neovim (Пробел + y)
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>y", "<cmd>Yazi<cr>", desc = "Open yazi" },
    },
  },

  -- 7. Автосохранение сессий (Запоминает открытые файлы)
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- загружать только при открытии файлов
    opts = { options = { "buffers", "curdir", "tabpages", "winsize" } },
    keys = {
      -- Пробел + q + s (Session) восстановит то, на чем ты закончил в этой папке
      {
        "<leader>qs",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },
    },
  },

  -- 8. Автоформатирование кода (делает Python-код красивым при сохранении)
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        python = { "isort", "black" }, -- выравнивает импорты и код
      },
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
    },
  },
}

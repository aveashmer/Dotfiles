return {
  "tpope/vim-dadbod",
  dependencies = {
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
  },
  config = function()
    -- Настройка: чтобы автодополнение SQL работало в каждом запросе
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "sql", "mysql", "plsql" },
      callback = function()
        require("cmp").setup.buffer({ sources = { { name = "vim-dadbod-completion" } } })
      end,
    })
  end,
  keys = {
    { "<leader>D", "<cmd>DBUIToggle<cr>", desc = "Database Manager" },
  },
}

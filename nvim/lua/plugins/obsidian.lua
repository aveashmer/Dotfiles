return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    workspaces = {
      { name = "personal", path = "~/Notes" },
    },
    ui = {
      enable = true, -- Включает замену ссылок [[ ]] на красивые иконки
      update_debounce = 200,
      external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
    },
    -- Это скроет символы разметки, пока ты не наведешь на них курсор
    conceallevel = 2,
  },
}

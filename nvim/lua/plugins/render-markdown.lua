return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  opts = {
    heading = {
      -- Делает заголовки похожими на Obsidian
      icons = { "◉ ", "○ ", "✸ ", "✿ " },
      backgrounds = {
        "RenderMarkdownH1Bg",
        "RenderMarkdownH2Bg",
        "RenderMarkdownH3Bg",
      },
    },
    code = {
      width = "block",
      left_pad = 2,
      right_pad = 2,
      border = "thick", -- Жирные рамки для блоков кода
    },
    checkbox = {
      unchecked = { icon = "󰄱 " },
      checked = { icon = " " },
    },
  },
}

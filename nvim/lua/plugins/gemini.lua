return {
  "robitx/gp.nvim",
  config = function()
    local conf = {
      providers = {
        googleai = {
          endpoint = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:streamGenerateContent?key=" .. (os.getenv("GEMINI_API_KEY") or ""),
          secret = os.getenv("GEMINI_API_KEY"),
        },
      },
      agents = {
        {
          name = "GeminiFlash",
          chat = true,
          command = true,
          provider = "googleai",
          model = { model = "gemini-1.5-flash" },
          system_prompt = "You are a helpful AI assistant. Answer in Russian.",
        },
      },
    }
    require("gp").setup(conf)
  end,
}

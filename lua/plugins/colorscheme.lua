return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- 반드시 최우선 로드
    config = function()
      vim.o.background = "dark" -- "light" 가능

      require("gruvbox").setup({
        terminal_colors = true,
        bold = true,
        italic = {
          strings = true,
          comments = true,
          operators = false,
          folds = true,
        },
        contrast = "", -- "hard" | "soft" | ""
        transparent_mode = false,
      })

      vim.cmd("colorscheme gruvbox")
    end,
  },
}


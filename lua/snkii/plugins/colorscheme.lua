return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- 다른 플러그인보다 먼저 로드
    config = function()
      -- gruvbox는 setup() 다음에 colorscheme 적용해야 커스텀 옵션이 반영됨
      vim.o.background = "dark" -- "light"도 가능

      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true,
        contrast = "", -- "hard" | "soft" | ""
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      })

      vim.cmd("colorscheme gruvbox")
    end,
  },
}


return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 500
    end,
    opts = {
      -- 기본값 사용하려면 비워둬도 됩니다.
      -- 추후 preset, icons, window, layout 등 여기서 조정
    },
  },
}


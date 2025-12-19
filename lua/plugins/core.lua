return {
  { "nvim-lua/plenary.nvim" },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "python", "bash", "json", "yaml" },
      highlight = { enable = true },
    },
  },
}


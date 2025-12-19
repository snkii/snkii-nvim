return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    -- nvim-tree 문서 권장: netrw는 플러그인 로드 전에 꺼두는 게 안전
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,

    config = function()
      require("nvim-tree").setup({
        view = {
          width = 35,
          relativenumber = true,
        },

        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "",
                arrow_open = "",
              },
            },
          },
        },

        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },

        filters = {
          custom = { ".DS_Store" },
        },

        git = {
          ignore = false,
        },
      })
    end,

    -- 키맵은 lazy 스펙에 분리(당신이 준 키는 그대로)
    keys = {
      { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
      { "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Toggle file explorer on current file" },
      { "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "Collapse file explorer" },
      { "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "Refresh file explorer" },
    },
  },
}


return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = false,
      ignored = true,
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          focus = "list",
          layout = { preset = "sidebar", preview = false },
        },
      },
    },
  },
}

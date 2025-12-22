return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local lackluster = require("lackluster")
      local color = lackluster.color

      lackluster.setup({
        disable_plugin = {
          bufferline = true,
          git_gutter = true,
          gitsigns = true,
        },
        tweak_highlight = {
          Cursor = {
            bg = color.gray7,
          },
          Visual = {
            bg = color.gray7,
          },
          ["Directory"] = {
            fg = color.gray8,
            bold = true,
          },
          ["@function"] = {
            italic = true,
          },
          ["@keyword"] = {
            fg = color.blue,
            bold = true,
          },
          ["@keyword.return"] = {
            fg = color.luster,
            bold = true,
          },
          ["@tag"] = { bold = true, fg = color.lack },
          ["@tag.builtin"] = {
            fg = color.green,
          },
          ["@tag.attribute"] = {
            fg = color.gray5,
          },
        },
        tweak_syntax = {
          keyword = color.blue,
        },
      })

      vim.cmd.colorscheme("lackluster-hack")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}

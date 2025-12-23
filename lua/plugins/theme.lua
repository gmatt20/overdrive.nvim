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
          git_signs = true,
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
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "lackluster",
        callback = function()
          local groups = {
            GitSignsAdd = { fg = color.green },
            GitSignsChange = { fg = color.yellow },
            GitSignsDelete = { fg = color.red },

            SnacksPickerGitStatusAdded = { fg = color.green },
            SnacksPickerGitStatusModified = { fg = color.yellow },
            SnacksPickerGitStatusDeleted = { fg = color.red },
            SnacksPickerGitStatusIgnored = { fg = color.gray5 },
            SnacksPickerGitStatusUntracked = { fg = color.green },
            SnacksPickerGitStatusRenamed = { fg = color.blue },
            SnacksPickerGitStatusStaged = { fg = color.green },
          }

          for group, opts in pairs(groups) do
            vim.api.nvim_set_hl(0, group, opts)
          end
        end,
      })
      vim.cmd.colorscheme("lackluster")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "lackluster",
    },
  },
}

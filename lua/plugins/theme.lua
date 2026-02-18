return {
  -- {
  --   "slugbyte/lackluster.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     local lackluster = require("lackluster")
  --     local color = lackluster.color
  --
  --     lackluster.setup({
  --       disable_plugin = {
  --         bufferline = true,
  --         git_signs = true,
  --       },
  --       tweak_highlight = {
  --         Cursor = {
  --           bg = color.gray7,
  --         },
  --         Visual = {
  --           bg = color.gray7,
  --         },
  --         ["Directory"] = {
  --           fg = color.gray8,
  --           bold = true,
  --         },
  --         ["@function"] = {
  --           italic = true,
  --         },
  --         ["@keyword"] = {
  --           fg = color.blue,
  --           bold = true,
  --         },
  --         ["@keyword.return"] = {
  --           fg = color.luster,
  --           bold = true,
  --         },
  --         ["@tag"] = { bold = true, fg = color.lack },
  --         ["@tag.builtin"] = {
  --           fg = color.green,
  --         },
  --         ["@tag.attribute"] = {
  --           fg = color.gray5,
  --         },
  --       },
  --       tweak_syntax = {
  --         keyword = color.blue,
  --       },
  --     })
  --     vim.api.nvim_create_autocmd("ColorScheme", {
  --       pattern = "lackluster",
  --       callback = function()
  --         local groups = {
  --           GitSignsAdd = { fg = color.green },
  --           GitSignsChange = { fg = color.yellow },
  --           GitSignsDelete = { fg = color.red },
  --
  --           SnacksPickerGitStatusAdded = { fg = color.green },
  --           SnacksPickerGitStatusModified = { fg = color.yellow },
  --           SnacksPickerGitStatusDeleted = { fg = color.red },
  --           SnacksPickerGitStatusIgnored = { fg = color.gray5 },
  --           SnacksPickerGitStatusUntracked = { fg = color.green },
  --           SnacksPickerGitStatusRenamed = { fg = color.blue },
  --           SnacksPickerGitStatusStaged = { fg = color.green },
  --         }
  --
  --         for group, opts in pairs(groups) do
  --           vim.api.nvim_set_hl(0, group, opts)
  --         end
  --       end,
  --     })
  --     vim.cmd.colorscheme("lackluster")
  --   end,
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "lackluster",
  --   },
  -- },
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local koda = require("koda")

      koda.setup({
        colors = {
          const = "#7788aa",
        },
        on_highlights = function(hl, c)
          hl.Directory = { bold = true }
          hl["Directory"] = {
            fg = "#DEEEED",
            bold = true,
          }
          hl["@function"] = { fg = "#7788aa", italic = true, bold = true }
          hl["@keyword"] = { fg = "#7788aa", bold = true }
          hl["@keyword.return"] = { fg = "#7788aa", bold = true }

          hl["@tag"] = { bold = true, fg = "#7788aa" }
          hl["@tag.builtin"] = { fg = "#DEEEED" }
          hl["@tag.attribute"] = { fg = "#708090" }
        end,
      })

      vim.cmd("colorscheme koda")

      local palette = koda.get_palette()
      local my_primary = "#7788aa"

      local snacks_fixes = {
        SnacksPickerGitStatusIgnored = { fg = palette.fg },
        SnacksPickerGitStatusUntracked = { fg = my_primary },
        SnacksPickerPathIgnored = { fg = palette.comment },
        SnacksPickerPathHidden = { fg = palette.fg },

        SnacksPickerIconGitUntracked = { fg = my_primary },
        SnacksPickerDir = { fg = my_primary },
      }

      for group, opts in pairs(snacks_fixes) do
        vim.api.nvim_set_hl(0, group, opts)
      end
    end,
  },
}

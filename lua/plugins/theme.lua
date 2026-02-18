return {
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

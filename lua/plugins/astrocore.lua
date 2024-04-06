---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        backup = false,
        conceallevel = 1,
        colorcolumn = "120",
        formatoptions = "jn",
        scrolloff = 15,
        shiftround = true,
        smartindent = true,
        swapfile = false,
        tabstop = 4,
        undodir = os.getenv "HOME" .. "/.vim/undodir",
      },
    },

    mappings = {
      n = {
        ["<Leader>th"] = { "<Cmd>ToggleTerm size=25 direction=horizontal<cr>", desc = "Open terminal horizontal" },
        L = {
          function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Next buffer",
        },
        H = {
          function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Previous buffer",
        },
      },
    },

    -- Autocmds
    autocmds = {
      disable_auto_comment = {
        {
          event = "FileType",
          pattern = "*",
          callback = function()
            vim.opt.formatoptions:remove "c"
            vim.opt.formatoptions:remove "r"
            vim.opt.formatoptions:remove "o"
          end,
          desc = "Disable auto-commenting on new line",
        },
      },
    },
  },
}

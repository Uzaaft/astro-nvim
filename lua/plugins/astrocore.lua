---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        backup = false,
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

    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      n = {
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
  },
}

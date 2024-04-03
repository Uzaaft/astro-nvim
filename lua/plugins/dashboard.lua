local function new_file_with_name()
  local filename = vim.fn.input "Enter new file name: "
  if filename ~= "" then
    if vim.fn.filereadable(filename) == 1 then
      print "Error: File already exists."
    else
      vim.cmd("edit " .. filename)
    end
  else
    print "No file name was entered."
  end
end

return {
  { "goolord/alpha-nvim", enabled = false },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local db = require "dashboard"
      db.setup {
        theme = "hyper",
        config = {
          project = { enable = false },
          week_header = {
            enable = true,
            concat = " 匠心, 精益, 艺术, 科技; 创造, 创新, 不断改进",
          },
          shortcut = {
            {
              icon = " ",
              icon_hl = "@variable",
              desc = "Find Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              desc = "Find Text",
              icon = " ",
              group = "String",
              action = "Telescope live_grep",
              key = "g",
            },
            {
              desc = "New file",
              icon = " ",
              group = "Constant",
              action = function() new_file_with_name() end,
              key = "n",
            },
            {
              desc = "Lazy",
              icon = "󰒲 ",
              group = "Keyword",
              action = "Lazy",
              key = "l",
            },
            {
              desc = "Quit",
              icon = " ",
              group = "Exit",
              action = "qa",
              key = "q",
            },
          },
        },
      }
    end,
  },
}

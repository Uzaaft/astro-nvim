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
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function(_, opts) opts.width = 45 end,
  },
}

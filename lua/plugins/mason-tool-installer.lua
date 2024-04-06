---@type LazySpec
return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  opts = function(_, opts) require("astrocore").list_insert_unique(opts.ensure_installed, { "lua_ls", "stylua" }) end,
}

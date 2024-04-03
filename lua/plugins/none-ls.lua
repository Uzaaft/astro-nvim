---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    config.sources = {
      null_ls.builtins.formatting.stylua,
    }
    return config
  end,
}
